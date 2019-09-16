using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class GridManager : MonoBehaviour {
    public TerrainGridSystem tgs;
    public Vector3 cellCenter;

    public Texture2D groundTexture, canPlantTexture, plantedTexture, wateredTexture;

    void Start()
    {
        PaintGridCells(groundTexture);
    }

    //paints the entire grid a texture 
    public void PaintGridCells(Texture2D texture)
    {
        for (int i = 0; i<tgs.cells.Count; i++)
        {
            if (tgs.CellGetTag(i) == 0)
                tgs.CellToggleRegionSurface(i, true, texture);
        }
    }

    //paints a single cell texture 
    public void PaintCellTexture(float wait, int cellNumber, Texture2D texture)
    {
        StartCoroutine(WaitToPaintSingleCell(wait, cellNumber, texture));
    }

    IEnumerator WaitToPaintSingleCell(float wait, int cellNumber, Texture2D texture)
    {
        yield return new WaitForSeconds(wait);
        tgs.CellToggleRegionSurface(cellNumber, true, texture);
    }

}
