using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class GridManager : MonoBehaviour {
    public TerrainGridSystem tgs;
    public Vector3 cellCenter;

    public Texture2D groundTexture, wateredTexture;

    void Start()
    {
        PaintGridCells(groundTexture);
    }

    public void PaintGridCells(Texture2D texture)
    {
        for (int i = 0; i<tgs.cells.Count; i++)
        {
            if (tgs.CellGetTag(i) == 0)
                tgs.CellToggleRegionSurface(i, true, texture);
        }
    }

}
