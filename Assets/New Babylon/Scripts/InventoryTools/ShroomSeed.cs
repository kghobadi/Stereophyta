using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class ShroomSeed : MonoBehaviour {
    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    //for inv
    Inventory inventoryScript;
    Transform inventoryParent;
    [Header("Inventory")]
    public Sprite inventorySprite;
    public int mySeedIndex;
    
    //tgs logic
    TerrainGridSystem tgs;
    GridManager gridMan;
    Cell currentCell;
    int currentCellIndex, previousCellIndex;
    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D canClickTexture;
    public Texture2D plantedTexture;
   

    //physics
    Rigidbody shroomBody;
    SphereCollider shroomCol;

    //state bools
    [Header ("State bools")]
    public bool planting;
    public bool shroomSelected, plantingOnGrid;
    Vector3 originalPos;
    public float shroomGroupDist;
    public int shroomGroupMax;

    //audio
    [Header("Audio")]
    public AudioSource shroomSource;
    public AudioClip dropShroom, noNO, spawnShroom;

    //for obj pooling 
    [Header("Pooler & Seed Type")]
    public ObjectPooler shroomPooler;
    //for spawning shrooms
    public GameObject shroomPrefab;
    GameObject shroomClone;

    //for identifying shroom type
    public Shroom.ShroomType shroomSeedType;

    void Start () {
        //player & environment refs
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;
        inventoryParent = inventoryScript.transform;
        originalPos = transform.localPosition;

        //tgs refs 
        tgs = tpc.currentTGS;
        gridMan = tgs.transform.parent.GetComponent<GridManager>();
        groundTexture = gridMan.groundTexture;
        canClickTexture = gridMan.canPlantTexture;

        //aduio
        shroomBody = GetComponent<Rigidbody>();
        shroomCol = GetComponent<SphereCollider>();
        shroomSource = GetComponent<AudioSource>();
    }
	
	void Update () {
        //plant seed
        if (shroomSelected && !planting && !tpc.menuOpen)
        {
            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
            {
                if (hit.transform.gameObject.tag == "Ground")
                {
                    //check if this spot is on the TGS
                    //grabs Cell tile and index
                    tgs = tpc.currentTGS;
                    currentCell = tgs.CellGetAtPosition(hit.point, true);

                    //we have a grid cell
                    if (currentCell != null)
                    {
                        //Debug.Log("tgs planting");
                        CheckCanPlantGrid();
                    }

                    //no grid -- just terrain 
                    else
                    {
                        CheckCanPlant(hit);
                    }
                }
            }
        }

     
    }

    //planting on terrain grid
    void CheckCanPlantGrid()
    {
        //get the index of this cell
        int cellIndex = tgs.CellGetIndex(currentCell);
        currentCellIndex = cellIndex;

        //compare to previous cell 
        if (currentCellIndex != previousCellIndex)
        {
            previousCellIndex = currentCellIndex;
        }

        //checks if cell is fertile 
        if (tgs.CellGetTag(cellIndex) == 0)
        {
            //Sets texture to clickable
            tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);

            //If player clicks, we plant seed and clear up Equip slot
            if (Input.GetButton("Plant"))
            {
                DropShroom();
                plantingOnGrid = true;
            }

        }

        //something planted
        if(tgs.CellGetTag(cellIndex) == 1)
        {
            //If player clicks, we plant seed and clear up Equip slot
            if (Input.GetButton("Plant"))
            {
                //check in center of cell for shroom
                int vertexCount = tgs.CellGetVertexCount(cellIndex);

                //loop through verteces
                int vertexToPlant = -1;
                bool foundShroomVertex = false;
                for (int i = 0; i < vertexCount; i++)
                {
                    //only run if we have not found an open vertex
                    if (!foundShroomVertex)
                    {
                        //cast overlap sphere around vertex
                        Collider[] hitColliders = Physics.OverlapSphere(tgs.CellGetVertexPosition(cellIndex, i), 1f);
                        int v = 0;
                        int shroomCount = 0;
                        //loop through hit cols
                        while (v < hitColliders.Length)
                        {
                            //found a plant 
                            if (hitColliders[v].gameObject.tag == "Plant")
                            {
                                //found a shroom
                                if (hitColliders[v].gameObject.GetComponent<Shroom>())
                                {
                                    shroomCount++;
                                }
                            }
                            v++;
                        }

                        //no shrooms were found 
                        if (shroomCount == 0)
                        {
                            foundShroomVertex = true;
                            vertexToPlant = i;
                        }
                    }
                }

                //found an open vertex 
                if (foundShroomVertex)
                {
                    //set shroom pos 
                    transform.position = tgs.CellGetVertexPosition(cellIndex, vertexToPlant) + new Vector3(0f, 3f, 0f);
                    DropShroom();
                }
                //there is no open verteces here 
                else
                {
                    shroomSource.PlayOneShot(noNO);
                }
            }
        }

        //If it's a new cell, set last cell back to fertileTexture
        if (tgs.CellGetTag(previousCellIndex) == 0)
            StartCoroutine(ChangeTexture(currentCellIndex, groundTexture));
    }

    //planting on terrain without grid
    void CheckCanPlant(RaycastHit hit)
    {
        if (Input.GetButton("Plant"))
        {
            //check in radius of planting point if it theres too many other shrooms
            int otherShrooms = 0;
            Collider[] hitColliders = Physics.OverlapSphere(hit.point, shroomGroupDist);
            int i = 0;
            while (i < hitColliders.Length)
            {
                if (hitColliders[i].gameObject.tag == "Plant")
                {
                    if (hitColliders[i].gameObject.GetComponent<Shroom>())
                    {
                        if(hitColliders[i].gameObject.GetComponent<Shroom>().shroomType == shroomSeedType)
                        {
                            otherShrooms++;
                        }
                    }
                }
                i++;
            }

            //if there is not too many shrooms
            if (otherShrooms < shroomGroupMax)
            {
                DropShroom();
            }
            //too many shroooms...
            else
            {
                shroomSource.PlayOneShot(noNO);
            }
        }
    }

    //Sets texture back to normal
    IEnumerator ChangeTexture(int index, Texture2D texture)
    {
        yield return new WaitForEndOfFrame();
        tgs.CellToggleRegionSurface(index, true, texture);
    }

    //called when click to plant really goes through
    void DropShroom()
    {
        planting = true;
        transform.SetParent(null);
        shroomBody.isKinematic = false;
        shroomBody.useGravity = true;
        shroomSource.PlayOneShot(dropShroom);
    }

    //checks when it has hit the ground after dropping
    void OnCollisionEnter(Collision collision)
    {
        //ui seed hitting ground
        if (collision.gameObject.tag == "Ground" && planting)
        {
            SpawnShroom();
        }
    }

    void SpawnShroom()
    {
        //play spawn plant sound
        shroomSource.PlayOneShot(spawnShroom);
        //set plant spawn pos to seed pos
        Vector3 plantSpawnPos = transform.position;

        //if planting on grid, set pos and cell stuff
        if (plantingOnGrid)
        {
            //cell pos
            plantSpawnPos = tgs.CellGetPosition(currentCellIndex);
            //planted tag
            tgs.CellSetTag(currentCell, 1);
            //planted texture
            tgs.CellToggleRegionSurface(currentCellIndex, true, plantedTexture);
        }

        //generate clone and set Plont script values
        shroomClone = shroomPooler.GrabObject();
        shroomClone.transform.position = plantSpawnPos;
        Shroom shroomScript = shroomClone.GetComponent<Shroom>();
        shroomScript.shroomPrefab = shroomPrefab;
        shroomScript.shroomPooler = shroomPooler;
        shroomScript.mySeedIndex = mySeedIndex;

        //set that shroom
        if (shroomScript.plantingState != Shroom.PlantingState.PLANTED)
        {
            shroomScript.SetShroom();
        }

        //add info to Plont if on Grid 
        if (plantingOnGrid)
        {
            shroomScript.plantedOnGrid = true;
            shroomScript.cellIndex = currentCellIndex;
        }

        //reset seed parent & pos, physics and planting bool
        transform.SetParent(inventoryParent);
        transform.localPosition = originalPos;
        shroomBody.isKinematic = true;
        shroomBody.useGravity = false;
        planting = false;

        //set seed count
        SeedStorage seedStorageTemp = inventoryScript.seedStorage[mySeedIndex];
        seedStorageTemp.seedCount--;
        inventoryScript.seedStorage[mySeedIndex] = seedStorageTemp;

        //turn off if no more seeds
        if (seedStorageTemp.seedCount == 0)
        {
            gameObject.SetActive(false);
        }

        //set this back to false
        plantingOnGrid = false;
    }
}
