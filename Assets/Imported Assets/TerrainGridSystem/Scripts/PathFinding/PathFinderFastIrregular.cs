
using UnityEngine;
using System;
using System.Collections.Generic;

namespace TGS.PathFinding {

	public class PathFinderFastIrregular : IPathFinder {

		// Heap variables are initializated to default, but I like to do it anyway
		private Cell[] mGrid = null;
		private PriorityQueueB<int> mOpen = null;
		private List<PathFinderNode> mClose = new List<PathFinderNode> ();
		private HeuristicFormula mFormula = HeuristicFormula.Manhattan;
		private float mHEstimate = 1;
		private int mMaxSteps = 2000;
		private float mMaxSearchCost = 100000;
		private PathFinderNodeFast[] mCalcGrid = null;
		private byte mOpenNodeValue = 1;
		private byte mCloseNodeValue = 2;
		private OnCellCross mOnCellCross = null;

		//Promoted local variables to member variables to avoid recreation between calls
		private float mH = 0;
		private int mLocation = 0;
		private int mNewLocation = 0;
		private bool mFound = false;
		private int mEndLocation = 0;
		private float mNewG = 0;
		private int mCellGroupMask = -1;
		private bool mIgnoreCanCrossCheck;

		public PathFinderFastIrregular (Cell[] grid, int gridWidth, int gridHeight) {
			if (grid == null)
				throw new Exception ("Grid cannot be null");

			mGrid = grid;

			if (mCalcGrid == null || mCalcGrid.Length != grid.Length)
				mCalcGrid = new PathFinderNodeFast[grid.Length];

			mOpen = new PriorityQueueB<int> (new ComparePFNodeMatrix (mCalcGrid));
		}

		public void SetCalcMatrix (Cell[] grid) {
			if (grid == null)
				throw new Exception ("Grid cannot be null");
			if (grid.Length != mGrid.Length) // mGridX != (ushort) (mGrid.GetUpperBound(0) + 1) || mGridY != (ushort) (mGrid.GetUpperBound(1) + 1))
				throw new Exception ("SetCalcMatrix called with matrix with different dimensions. Call constructor instead.");
			mGrid = grid;

			Array.Clear (mCalcGrid, 0, mCalcGrid.Length);
			ComparePFNodeMatrix comparer = (ComparePFNodeMatrix)mOpen.comparer;
			comparer.SetMatrix (mCalcGrid);
		}

		public HeuristicFormula Formula {
			get { return mFormula; }
			set { mFormula = value; }
		}

		public float HeavyDiagonalsCost {
			get { return 0; }
			set { }
		}

		public bool HexagonalGrid {
			get { return false; }
			set { }
		}

		public float HeuristicEstimate {
			get { return mHEstimate; }
			set { mHEstimate = value; }
		}

		public float MaxSearchCost {
			get { return mMaxSearchCost; }
			set { mMaxSearchCost = value; }
		}

		public int MaxSteps {
			get { return mMaxSteps; }
			set { mMaxSteps = value; }
		}


		public OnCellCross OnCellCross {
			get { return mOnCellCross; }
			set { mOnCellCross = value; }
		}

		public int CellGroupMask {
			get { return mCellGroupMask; }
			set { mCellGroupMask = value; }
		}

		public bool Diagonals {
			get { return false; }
			set { }
		}

		public bool IgnoreCanCrossCheck {
			get { return mIgnoreCanCrossCheck; }
			set { mIgnoreCanCrossCheck = value; }
		}


		public List<PathFinderNode> FindPath (Cell startCell, Cell endCell, out float totalCost, bool evenLayout) {
			totalCost = 0;
			mFound = false;
			if (mOpenNodeValue > 250) {
				Array.Clear (mCalcGrid, 0, mCalcGrid.Length);
				mOpenNodeValue = 1;
				mCloseNodeValue = 2;
			} else {
				mOpenNodeValue += 2;
				mCloseNodeValue += 2;
			}
			mOpen.Clear ();
			mClose.Clear ();

			mLocation = startCell.index;
			mEndLocation = endCell.index;
			mCalcGrid [mLocation].G = 0;
			mCalcGrid [mLocation].F = mHEstimate;
			mCalcGrid [mLocation].PX = (ushort)mLocation;
			mCalcGrid [mLocation].Status = mOpenNodeValue;
			mCalcGrid [mLocation].Steps = 0;

			mOpen.Push (mLocation);
			while (mOpen.Count > 0) {
				mLocation = mOpen.Pop ();

				//Is it in closed list? means this node was already processed
				if (mCalcGrid [mLocation].Status == mCloseNodeValue)
					continue;

				if (mLocation == mEndLocation) {
					mCalcGrid [mLocation].Status = mCloseNodeValue;
					mFound = true;
					break;
				}

				// Lets calculate each successors
				List<Region> neighbours = mGrid [mLocation].region.neighbours;
				int maxi = neighbours != null ? neighbours.Count : 0;

				for (int i = 0; i < maxi; i++) {

					Region nregion = neighbours [i];
					Cell ncell = (Cell)nregion.entity;

					// Unbreakeable?
					if (!ncell.canCross && !mIgnoreCanCrossCheck)
						continue;
					float gridValue = (ncell.group & mCellGroupMask) != 0 ? 1 : 0;
					if (gridValue == 0)
						continue;

					if (mOnCellCross != null) {
						gridValue += mOnCellCross (ncell.index);
					}

					mNewG = mCalcGrid [mLocation].G + gridValue;

					if (mNewG > mMaxSearchCost || mCalcGrid[mLocation].Steps >= mMaxSteps)
						continue;

					mNewLocation = ncell.index;

					//Is it open or closed?
					if (mCalcGrid [mNewLocation].Status == mOpenNodeValue || mCalcGrid [mNewLocation].Status == mCloseNodeValue) {
						// The current node has less code than the previous? then skip this node
						if (mCalcGrid [mNewLocation].G <= mNewG)
							continue;
					}

					mCalcGrid [mNewLocation].PX = (ushort)mLocation;
					mCalcGrid [mNewLocation].G = mNewG;
					mCalcGrid [mNewLocation].Steps = mCalcGrid [mLocation].Steps + 1;

					switch (mFormula) {
					case HeuristicFormula.Euclidean:
						mH = mHEstimate * Vector2.Distance (ncell.center, mGrid [mLocation].center);
						break;
					default:
						mH = mHEstimate * Vector2.SqrMagnitude (ncell.center - mGrid [mLocation].center);
						break;
					}
					mCalcGrid [mNewLocation].F = mNewG + mH;

					mOpen.Push (mNewLocation);
					mCalcGrid [mNewLocation].Status = mOpenNodeValue;
				}

				mCalcGrid [mLocation].Status = mCloseNodeValue;
			}

			if (mFound) {
				mClose.Clear ();
				int posX = endCell.index;
				PathFinderNodeFast fNodeTmp = mCalcGrid [posX];
				totalCost = fNodeTmp.G;
				PathFinderNode fNode;
				fNode.F = fNodeTmp.F;
				fNode.G = fNodeTmp.G;
				fNode.H = 0;
				fNode.PX = fNodeTmp.PX;
				fNode.PY = fNodeTmp.PY;
				fNode.X = endCell.index;
				fNode.Y = 0;

				while (fNode.X != fNode.PX) {
					mClose.Add (fNode);
					posX = fNode.PX;
					fNodeTmp = mCalcGrid [posX];
					fNode.F = fNodeTmp.F;
					fNode.G = fNodeTmp.G;
					fNode.H = 0;
					fNode.PX = fNodeTmp.PX;
					fNode.PY = fNodeTmp.PY;
					fNode.X = posX;
				} 
				return mClose;
			}
			return null;
		}

		internal class ComparePFNodeMatrix : IComparer<int> {
			protected PathFinderNodeFast[] mMatrix;

			public ComparePFNodeMatrix (PathFinderNodeFast[] matrix) {
				mMatrix = matrix;
			}

			public int Compare (int a, int b) {
				if (mMatrix [a].F > mMatrix [b].F)
					return 1;
				else if (mMatrix [a].F < mMatrix [b].F)
					return -1;
				return 0;
			}

			public void SetMatrix (PathFinderNodeFast[] matrix) {
				mMatrix = matrix;
			}
		}
	}
}
