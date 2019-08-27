using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Seed : MonoBehaviour {
    //tgs logic
    TerrainGridSystem tgs;
    GridManager gridMan;
    Cell currentCell;
    int currentCellIndex, previousCellIndex;
    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D canClickTexture;
    [Header("TGS")]
    public Texture2D plantedTexture;
    public bool plantingOnGrid;
    [Header("Important Bools")]
    public bool plantOnStart;
    public bool UIseed, startingSeed;
    public bool dayPassed;

    //for inv
    public int mySeedIndex;
    //player and inv ref
    GameObject player;
    ThirdPersonController tpc;
    Inventory inventoryScript;
    Transform inventoryParent;
    GameObject sun;
    Sun sunScript;

    //physics and collision
    [HideInInspector]
    public Rigidbody seedBody;
    Animator seedAnimator;
    SphereCollider seedCollider;
    [Header("Seed States")]
    public SeedStates seedState;
    public enum SeedStates
    {
        IDLE, SEEDSELECTED, PLANTING, BLOWING, FALLING, VORTEXING
    }
    
    //for spawning plant
    [Header("Plant Prefab & Obj Pooling")]
    public GameObject plantPrefab;
    public ObjectPooler seedPooler;
    PooledObject _pooledObj;
    Vector3 originalPos;
    GameObject plantClone;

    //audio
    [HideInInspector]
    public AudioSource seedSource;
    [Header("Audio")]
    public AudioClip dropSeed;
    public AudioClip spawnPlant, noNO;
    
    //needs to be this far away from other plants
    [Header ("Misc. Settings")]
    public float distFromOtherPlants;
    public float vortexSpeed = 7.5f;
    //for planting itself after a few days
    public int daysBeforePlanting;
    
    //wind blow reset
    [HideInInspector]
    public Vector3 origScale;
  
    void Start () {
        //sun and player refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;
        _pooledObj = GetComponent<PooledObject>();

        //set tgs stuff
        tgs = tpc.currentTGS;
        gridMan = tgs.transform.parent.GetComponent<GridManager>();
        groundTexture = gridMan.groundTexture;
        canClickTexture = plantedTexture;

        //seed start vars
        seedAnimator = GetComponent<Animator>();
        if(seedAnimator == null)
        {
            seedAnimator = GetComponentInChildren<Animator>();
        }
        seedBody = GetComponent<Rigidbody>();
        seedBody.isKinematic = true;
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();
        origScale = transform.localScale;

        //dif settings for UI seeds
        if (!UIseed)
        {
            //plant immediately 
            if (plantOnStart)
            {
                RaycastToGround();
            }
            //fall to ground --> IDLE state
            else
            {
                daysBeforePlanting = Random.Range(2, 4);
                SeedFall();
            }
        }
        else
        {
            inventoryParent = transform.parent;
        }
	}

    //called when it falls off a plant from chop / plant death at start 
    public void SeedFall()
    {
        seedBody.isKinematic = false;
        seedBody.useGravity = true;
        seedBody.AddRelativeForce(0, 15, 5);

        seedState = SeedStates.FALLING;
    }

    void Update () {
        //counting days is hard work (for spawned seeds only)
        if (!UIseed)
        {
            if (sunScript.dayCounter > sunScript.yesterday)
            {
                if (!dayPassed)
                {
                    daysBeforePlanting--;

                    //plant spawned seed 
                    if (daysBeforePlanting == 0)
                    {
                        DropSeed();
                    }

                    dayPassed = true;
                }

            }

            //reset dayPassed 
            if (sunScript.yesterday == sunScript.dayCounter)
            {
                dayPassed = false;
            }
        }
     
        //idle seed
        if(seedState == SeedStates.IDLE)
        {
            seedAnimator.enabled = true;
        }

        //plant seed
        if (seedState == SeedStates.SEEDSELECTED && !tpc.menuOpen)
        {
            //this is the seed the player is holding 
            RaycastToGround();
        }

        //right after spawning
        if (seedState == SeedStates.FALLING)
        {
            seedBody.AddForce(1, -3, 1);
        }

        //when player is near and IDLE / BLOWING
        if ((seedState == SeedStates.IDLE || seedState == SeedStates.BLOWING) && !UIseed)
        {
            if(Vector3.Distance(transform.position, player.transform.position) < 5)
            {
                seedState = SeedStates.VORTEXING;
            }
        }

        //succ to player
        if (seedState == SeedStates.VORTEXING)
        {
            //lerp to the player mon
            transform.position = Vector3.Lerp(transform.position, player.transform.position, Time.deltaTime * vortexSpeed);
            //add to vortex speed every frame so player cannot outrun seeds
            vortexSpeed += 0.25f;

            //when close enough, add to seed inventory
            if (Vector3.Distance(transform.position, player.transform.position) < 1)
            {
                CollectSeed();
            }
        }

        //when wind is blowing, adjust my height to the ground
        if (seedState == SeedStates.BLOWING)
        {
            seedAnimator.enabled = false;
            transform.localEulerAngles = Vector3.zero;
            
            AdjustHeight();
        }
    }

    //raycat logic 
    void RaycastToGround()
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
            if (Input.GetButton("Plant") || plantOnStart)
            {
                DropSeed();
                plantingOnGrid = true;
            }

        }
        else
        {
            // cant plant here, grid spot is taken or not fertile
            if (Input.GetButton("Plant"))
            {
                //Debug.Log("nono");
                seedSource.PlayOneShot(noNO);
            }
        }

        //If it's a new cell, set last cell back to fertileTexture
        if (tgs.CellGetTag(previousCellIndex) == 0)
            StartCoroutine(ChangeTexture(currentCellIndex, groundTexture));
    }

    //planting on terrain without grid
    void CheckCanPlant(RaycastHit hit)
    {
        if (Input.GetButton("Plant") || plantOnStart)
        {
            //check in radius of planting point if its too close to others
            bool nearOtherPlant = false;
            Collider[] hitColliders = Physics.OverlapSphere(hit.point, distFromOtherPlants);
            int i = 0;
            while (i < hitColliders.Length)
            {
                if (hitColliders[i].gameObject.tag == "Plant")
                {
                    nearOtherPlant = true;
                    Debug.Log("hit other plant");
                }
                i++;
            }

            //if remains false
            if (!nearOtherPlant)
            {
                DropSeed();
            }
            else
            {
                Debug.Log("nono");
                seedSource.PlayOneShot(noNO);
                //player source play NoNo sound
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
    void DropSeed()
    {
        seedState = SeedStates.PLANTING;
        originalPos = transform.localPosition;
        transform.SetParent(null);
        seedBody.isKinematic = false;
        seedBody.useGravity = true;
        if (!plantOnStart)
        {
            seedSource.PlayOneShot(dropSeed);
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        //ui seed hitting ground
        if(collision.gameObject.tag == "Ground" && seedState == SeedStates.PLANTING)
        {
            SpawnPlant();
        }

        //spawned seed falling from plant
        if (collision.gameObject.tag == "Ground" && seedState == SeedStates.FALLING)
        {
            seedState = SeedStates.IDLE;
            transform.position = transform.position + new Vector3(0, 0.5f, 0);
            seedBody.useGravity = false;
            seedBody.isKinematic = true;
            seedCollider.isTrigger = true;
            //Debug.Log("stopped falling");
        }
    }

    //called when UI seed reaches the ground
    void SpawnPlant()
    {
        //play spawn plant sound
        if (!plantOnStart)
        {
            seedSource.PlayOneShot(spawnPlant);
        }
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
        plantClone = Instantiate(plantPrefab, plantSpawnPos, Quaternion.Euler(tpc.transform.localEulerAngles));
        Plont plontScript = plantClone.GetComponent<Plont>();
        plontScript.plantPrefab = plantPrefab;
        plontScript.seedPooler = seedPooler;

        //add info to Plont if on Grid 
        if (plantingOnGrid)
        {
            plontScript.plantedOnGrid = true;
            plontScript.cellIndex = currentCellIndex;
        }

        //if plant on start, set plant to startingPlant
        if (plantOnStart)
        {
            plontScript.startingPlant = true;
            Destroy(gameObject);
        }
        //normal UI seed plant -- returns to inventory 
        else
        {
            //reset seed parent & pos, physics and planting bool
            transform.SetParent(inventoryParent);
            transform.localPosition = originalPos;
            seedBody.isKinematic = true;
            seedBody.useGravity = false;

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
            seedState = SeedStates.SEEDSELECTED;
        }
    }
    
    //called when vortexing reaches player
    void CollectSeed()
    {
        SeedStorage seedStorageTemp = inventoryScript.seedStorage[mySeedIndex];
        seedStorageTemp.seedCount++;

        inventoryScript.seedStorage[mySeedIndex] = seedStorageTemp;

        tpc.SeedCollect();

        //because of those pesky starting seeds
        if (startingSeed)
        {
            Destroy(gameObject);
        }
        else
        {
            _pooledObj.ReturnToPool();
        }
        
    }
    
    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 150f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 1f, 0);
            }
        }
    }
}
