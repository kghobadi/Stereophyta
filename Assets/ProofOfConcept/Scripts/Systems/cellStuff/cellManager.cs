//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using TGS;

//public class cellManager : MonoBehaviour
//{

//    TerrainGridSystem tgs;
//    public Vector3 cellCenter;

//    public Texture2D groundTexture, plantedTexture;
//    public bool filledAllTextures;

//	public bool somethingPlanted = false;

//    public bool resizeTonight;

//    WorldManager worldMan;
//    Bed bed;

//    public Vector2[] columnsAndRows;
//    public int[] prices;

//    public int currentSize = 0;
//    public int sequencerSize = 8;
//    public int addToSequencer = 0;
//    void Start()
//    {
//        tgs = TerrainGridSystem.instance;

//        for (int i = 0; i < tgs.cells.Count; i++)
//        {
//            if (tgs.CellGetTag(i) == 0)
//                tgs.CellToggleRegionSurface(i, true, groundTexture);
//            //if (tgs.CellGetTag(i) == 1)
//            //    tgs.CellToggleRegionSurface(i, true, fertileTexture);
//            //if (tgs.CellGetTag(i) == 2)
//            //tgs.CellToggleRegionSurface(i, true, plantedTexture);

//            //if (tgs.CellGetTag(i) == 5)
//            //tgs.CellSetCanCross(i, false);
//        }

//        worldMan = GameObject.FindWithTag("WorldManager").GetComponent<WorldManager>();
//        bed = GameObject.FindWithTag("Bed").GetComponent<Bed>();


//        if (prices.Length != columnsAndRows.Length)
//            Debug.Log("MAKE PRICES SAME SIZE AS COLUMNSANDROWS PLEASE!");
//    }

//    // Update is called once per frame
//    void Update()
//    {


//        if (bed.dayPassed && resizeTonight)
//        {
//            resizeGrid();
//            resizeTonight = false;
//        }


//    }

//    public void resizeGrid()
//    {
//        if (currentSize <= columnsAndRows.Length)
//        {
//            currentSize++;
//            addToSequencer++; //used in newSequencePlay
//            sequencerSize++; //actual sequencer length increment. used in newPlantLife

//            tgs.columnCount = (int)columnsAndRows[currentSize].x;
//            tgs.rowCount = (int)columnsAndRows[currentSize].y; ;
//            tgs.gridScale = new Vector2((columnsAndRows[currentSize].x / columnsAndRows[currentSize - 1].x) * tgs.gridScale.x,
//                                        (columnsAndRows[currentSize].y / columnsAndRows[currentSize - 1].y) * tgs.gridScale.y);
//            tgs.Redraw();
//            for (int i = 0; i < tgs.cells.Count; i++)
//            {
//                if (tgs.CellGetTag(i) != 0)
//                    tgs.CellSetTag(i, 0);
//                tgs.CellToggleRegionSurface(i, true, groundTexture);
//            }



//            GameObject[] currentPlants = GameObject.FindGameObjectsWithTag("sequencer");
//            for (int i = 0; i < currentPlants.Length; i++)
//            {

//                currentPlants[i].GetComponent<NewPlantLife>().repositionInGrid();

//            }

//        }
//    }
//}
