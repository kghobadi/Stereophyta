using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class GridManager : MonoBehaviour {
    TerrainGridSystem tgs;
    public Vector3 cellCenter;

    public Texture2D groundTexture, fertileTexture, plantedTexture;

    void Start()
    {
        tgs = TerrainGridSystem.instance;

        for (int i = 0; i < tgs.cells.Count; i++)
        {
            if (tgs.CellGetTag(i) == 0)
                tgs.CellToggleRegionSurface(i, true, groundTexture);
        }
    }

}
