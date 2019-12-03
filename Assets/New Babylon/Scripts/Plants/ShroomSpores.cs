using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class ShroomSpores : MonoBehaviour {
    //player ref...
    GameObject player;
    ThirdPersonController tpc;

    //shroom settings 
    public ObjectPooler shroomPool;
    public Shroom shroomParent;
    public int seedIndex;
    public float shroomGroupDist;
    public int shroomGroupMax;

    //particles and collision list
    public ParticleSystem sporeParticles;
    public List<ParticleCollisionEvent> collisionEvents;
    Vector3 spawnPos;

    //tgs stuff
    TerrainGridSystem tgs;

    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D plantedTexture;

    void Start () {
        //player ref
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //shroom stuff
        shroomParent = transform.parent.GetComponent<Shroom>();
        shroomPool = shroomParent.shroomPooler;
        sporeParticles = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();

        //tgs
        tgs = TerrainGridSystem.instance;
        groundTexture = shroomParent.groundTexture;
        plantedTexture = shroomParent.plantedTexture;
	}


    //planting on terrain grid
    void CheckCanPlantGrid(Vector3 point, int cellIndex)
    {
        //checks if cell is fertile 
        if (tgs.CellGetTag(cellIndex) == 0)
        {
            SpawnShroom(point, true, cellIndex);
        }

        //something is already planted
        else if(tgs.CellGetTag(cellIndex) == 1)
        {
            Debug.Log("cell taken, looking for verteces");
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
                SpawnShroom(tgs.CellGetVertexPosition(cellIndex, vertexToPlant), false, cellIndex);
            }
            //there is no open verteces here 
            else
            {
                Debug.Log("this grid cell is full of shrooms!");
            }
        }
    }

    //planting on terrain without grid
    void CheckCanPlant(Vector3 point)
    {
        //check in radius of planting point if it theres too many other shrooms
        int otherShrooms = 0;
        Collider[] hitColliders = Physics.OverlapSphere(point, shroomGroupDist);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                if (hitColliders[i].gameObject.GetComponent<Shroom>())
                {
                    if (hitColliders[i].gameObject.GetComponent<Shroom>().shroomType == shroomParent.shroomType)
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
            SpawnShroom(point, false, -1);
        }
    }

    //detects  collision of particles with Ground 
    void OnParticleCollision(GameObject other)
    {
        int numCollisionEvents = sporeParticles.GetCollisionEvents(other, collisionEvents);

        int i = 0;
        
        while (i < numCollisionEvents)
        {
            if (other.tag == "Ground")
            {
                //grab spawn pos 
                spawnPos = collisionEvents[i].intersection;

                //check if theres a cell here
                Cell cell = tgs.CellGetAtPosition(spawnPos, true);

                //got a cell on the grid
                if(cell != null)
                {
                    Debug.Log("spore on grid");
                    int cellIndex = tgs.CellGetIndex(cell);

                    CheckCanPlantGrid(spawnPos, cellIndex);
                }
                //not on grid
                else
                {
                    CheckCanPlant(spawnPos);
                }
            }
            
            i++;
        }
    }

    //spawns a shroom!
    void SpawnShroom(Vector3 plantingPos, bool plantingOnGrid, int cellIndex)
    {
        //if planting on grid, set pos and cell stuff
        if (plantingOnGrid)
        {
            //cell pos
            plantingPos = tgs.CellGetPosition(cellIndex);
            //planted tag
            tgs.CellSetTag(cellIndex, 1);
            //planted texture
            tgs.CellToggleRegionSurface(cellIndex, true, plantedTexture);
        }

        //generate clone and set Plont script values
        GameObject shroomClone = shroomPool.GrabObject();
        shroomClone.transform.position = plantingPos;
        Shroom shroomScript = shroomClone.GetComponent<Shroom>();
        shroomScript.shroomPrefab = shroomPool.objectPrefab;
        shroomScript.shroomPooler = shroomPool;

        //set that shroom
        if (shroomScript.plantingState != Shroom.PlantingState.PLANTED)
        {
            shroomScript.SetShroom();
        }

        //add info to Plont if on Grid 
        if (plantingOnGrid)
        {
            shroomScript.plantedOnGrid = true;
            shroomScript.cellIndex = cellIndex;
        }

    }

}
