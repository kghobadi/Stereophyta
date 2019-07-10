using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class ShroomSpores : MonoBehaviour {
    //player ref...
    GameObject player;
    ThirdPersonController tpc;

    //shroom settings 
    Shroom shroomParent;
    GameObject shroomClone;
    public float shroomGroupDist;
    public int shroomGroupMax;

    //particles and collision list
    public ParticleSystem sporeParticles;
    public List<ParticleCollisionEvent> collisionEvents;
    Vector3 spawnPos;

    //tgs stuff
    TerrainGridSystem tgs;
    public int cellIndex;

    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D plantedTexture;

    void Start () {
        //player ref
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //shroom stuff
        shroomParent = transform.parent.GetComponent<Shroom>();
        sporeParticles = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();

        //tgs
        tgs = TerrainGridSystem.instance;
        groundTexture = shroomParent.groundTexture;
        plantedTexture = shroomParent.plantedTexture;
	}


    //planting on terrain grid
    void CheckCanPlantGrid(Vector3 point)
    {
        //checks if cell is fertile 
        if (tgs.CellGetTag(cellIndex) == 0)
        {
            SpawnShroom(point, true);
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
                        Debug.Log("found shroom");
                    }
                }
            }
            i++;
        }

        Debug.Log(otherShrooms);

        //if there is not too many shrooms
        if (otherShrooms < shroomGroupMax)
        {
            SpawnShroom(point, false);
            Debug.Log("spawning");
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
                Cell cell = tgs.CellGetAtPosition(spawnPos);

                //got a cell on the grid
                if(cell != null)
                {
                    cellIndex = tgs.CellGetIndex(cell);

                    CheckCanPlantGrid(spawnPos);
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
    void SpawnShroom(Vector3 plantingPos, bool plantingOnGrid)
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
        if(shroomParent != null)
        {
            shroomClone = Instantiate(shroomParent.shroomPrefab, plantingPos, Quaternion.Euler(tpc.transform.localEulerAngles));
            Shroom shroomScript = shroomClone.GetComponent<Shroom>();
            shroomScript.shroomPrefab = shroomParent.shroomPrefab;
            shroomScript.shroomPooler = shroomParent.shroomPooler;
            shroomScript.mySeedIndex = shroomParent.mySeedIndex;

            //add info to Plont if on Grid 
            if (plantingOnGrid)
            {
                shroomScript.plantedOnGrid = true;
                shroomScript.cellIndex = cellIndex;
            }
        }
        

        Debug.Log("spawning shroom from spore");

    }

}
