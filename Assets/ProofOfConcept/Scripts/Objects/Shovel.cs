//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using TGS;

//public class Shovel : MonoBehaviour
//{
//    TerrainGridSystem tgs;

//    public Texture2D groundTexture;
//    public Texture2D canClickTexture;
//    public Texture2D fertileTexture;

//    public float shovelDistance;

//    bool textureShowing;
//    bool hasChangedTag;

//    int previousCellIndex;
//    int currentCellIndex;

//    GameObject _player;

//    void Start()
//    {

//        //TerrainGridSystem reference
//        tgs = TerrainGridSystem.instance;

//        _player = GameObject.FindWithTag("Player");
//    }


//    void Update()
//    {
//        //Checks if has been picked up and equipped 

//        //Sends out raycast
//        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
//        RaycastHit hit;

//        //Checks if raycast hits
//        if (Physics.Raycast(ray, out hit))
//        {
//            //Checks if the hit is a ground tile and within Distance for hoeing
//            if (hit.transform.gameObject.tag == "Ground" && Vector3.Distance(_player.transform.position, hit.point) <= shovelDistance && !textureShowing)
//            {
//                //grabs Cell tile and index
//                Cell fertile = tgs.CellGetAtPosition(hit.point, true);
//                int cellIndex = tgs.CellGetIndex(fertile);
//                currentCellIndex = cellIndex;

//                if (currentCellIndex != previousCellIndex)
//                {
//                    previousCellIndex = currentCellIndex;
//                }

//                //checks if cell is normal Ground
//                if (tgs.CellGetTag(cellIndex) == 0)
//                {
//                    //Sets texture to clickable
//                    tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);

//                    //Takes click, sets tile to Fertile
//                    if (Input.GetMouseButtonDown(0))
//                    {
//                        {
//                            tgs.CellSetTag(fertile, 1);
//                            StartCoroutine(ChangeTexture(cellIndex, fertileTexture));
//                        }
//                        //soundBoard.PlayOneShot(InteractSound);

//                    }

//                }

//                //Switches tile back to normal Ground
//                if (tgs.CellGetTag(previousCellIndex) == 0)
//                    StartCoroutine(ChangeTexture(currentCellIndex, groundTexture));

//            }
//        }


//    }


//    //Sets texture of a tile
//    IEnumerator ChangeTexture(int index, Texture2D texture)
//    {
//        textureShowing = true;
//        yield return new WaitForEndOfFrame();
//        tgs.CellToggleRegionSurface(index, true, texture);
//        textureShowing = false;
//    }
//}
