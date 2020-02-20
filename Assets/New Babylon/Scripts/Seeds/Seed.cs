using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;
using InControl;

public class Seed : MonoBehaviour {
    //tgs logic
    public TerrainGridSystem tgs;
    public GridManager gridMan;
    Cell currentCell;
    int currentCellIndex, previousCellIndex;
    //All possible texture references. 
    [Header("TGS")]
    public bool plantingOnGrid;
    [Header("Important Bools")]
    public bool plantOnStart;
    public int ageAmount;
    public bool UIseed, startingSeed;
    
    //player and inv ref
    GameObject player;
    ThirdPersonController tpc;
    Inventory inventoryScript;
    Transform inventoryParent;
    Item itemScript;
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
    public ObjectPooler plontPooler;
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
    float vortexOrig = 7.5f;
    //for planting itself after a few days
    public int daysBeforePlanting;
    
    //wind blow reset
    [HideInInspector]
    public Vector3 origScale;

    void Awake()
    {
        //sun and player refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;
        inventoryParent = inventoryScript.transform;
        itemScript = GetComponent<Item>();

        //set tgs stuff
        if (!plantOnStart)
        {
            if (tgs)
            {
                tgs = tpc.currentTGS;
                gridMan = tgs.transform.parent.GetComponent<GridManager>();
            }
        }

        //seed start vars
        seedAnimator = GetComponent<Animator>();
        if (seedAnimator == null)
        {
            seedAnimator = GetComponentInChildren<Animator>();
        }
        seedBody = GetComponent<Rigidbody>();
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();
    }

    void Start () {
        sunScript.newDay.AddListener(DayPass);
        daysBeforePlanting = Random.Range(2, 4);
        seedBody.isKinematic = true;
        origScale = transform.localScale;
        _pooledObj = GetComponent<PooledObject>();
        FindObjPoolers();

        //plant immediately 
        if (plantOnStart)
        {
            if (inventoryScript.canSwitchItems)
            {
                RaycastToGround();
            }
        }
        //fall to ground --> IDLE state
        else
        {
            daysBeforePlanting = Random.Range(2, 4);
            SeedFall();
        }
    }

    void FindObjPoolers()
    {
        GameObject[] objPools = GameObject.FindGameObjectsWithTag("ObjectPool");

        for(int i = 0; i < objPools.Length; i++)
        {
            if (objPools[i].GetComponent<ObjectPooler>().objectPrefab == plantPrefab)
            {
                plontPooler = objPools[i].GetComponent<ObjectPooler>();
            }
        }

        //if it's pooled ... get seed pooler!
        if (_pooledObj)
        {
            seedPooler = _pooledObj.m_ObjectPooler;
            plontPooler = seedPooler.companionPooler;
        }
    }

    //called when it falls off a plant from chop / plant death at start 
    public void SeedFall()
    {
        seedBody.isKinematic = false;
        seedBody.useGravity = true;
        seedCollider.isTrigger = false;
        seedBody.AddRelativeForce(Random.Range(-15, 15), 150, Random.Range(-15, 15));
        vortexSpeed = vortexOrig;
        seedState = SeedStates.FALLING;
    }

    void Update () {
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
            seedBody.AddForce(Random.Range(-5, 5), -5, Random.Range(-5, 5));
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

    //called when sun sets new day 
    void DayPass()
    {
        if (!UIseed)
        {
            daysBeforePlanting--;

            //plant spawned seed 
            if (daysBeforePlanting <= 0)
            {
                RaycastToGround();
            }
        }
    }

    //raycat logic 
    public void RaycastToGround()
    {
        RaycastHit hit;
        // Does the ray intersect any objects excluding the player layer
        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                //check if this spot is on the TGS
                //grabs Cell tile and index
                if (!plantOnStart)
                {
                    tgs = tpc.currentTGS;
                    gridMan = tpc.currentGridMan;
                }

                //check for tgs current cell
                if (tgs)
                    currentCell = tgs.CellGetAtPosition(hit.point, true);
                else
                    currentCell = null;

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
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

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
            tgs.CellToggleRegionSurface(cellIndex, true, gridMan.canPlantTexture);

            //If player clicks, we plant seed and clear up Equip slot
            if ((Input.GetButton("Plant") || inputDevice.Action3) || plantOnStart)
            {
                DropSeed();
                plantingOnGrid = true;
            }

        }
        else
        {
            // cant plant here, grid spot is taken or not fertile
            if ((Input.GetButton("Plant") || inputDevice.Action3))
            {
                seedSource.PlayOneShot(noNO);
            }
        }

        //If it's a new cell, set last cell back to fertileTexture
        if ( tgs.CellGetTag(previousCellIndex) == 0)
        {
            StartCoroutine(ChangeTexture(cellIndex, gridMan.groundTexture));
        }
            
    }

    //planting on terrain without grid
    void CheckCanPlant(RaycastHit hit)
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        if ((Input.GetButton("Plant") || inputDevice.Action3) || plantOnStart)
        {
            //check in radius of planting point if its too close to others
            bool nearOtherPlant = false;
            Collider[] hitColliders = Physics.OverlapSphere(hit.point, distFromOtherPlants);
            int i = 0;
            while (i < hitColliders.Length)
            {
                if (hitColliders[i].gameObject.tag == "Plant" || hitColliders[i].gameObject.tag == "Tree" 
                    || hitColliders[i].gameObject.tag == "Building")
                {
                    nearOtherPlant = true;
                    Debug.Log("too near something");
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
        seedCollider.isTrigger = false;
        seedAnimator.enabled = false;
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
            tgs.CellToggleRegionSurface(currentCellIndex, true, gridMan.plantedTexture);
        }

        //play spawn plant sound
        if (!plantOnStart)
        {
            tpc.seedAudio.PlayOneShot(spawnPlant);
            tpc.PlayPlantingEffect(plantSpawnPos);
        }

        //generate clone and set Plont script values
        if (plontPooler == null)
        {
            plontPooler = seedPooler.companionPooler;
            plantPrefab = plontPooler.objectPrefab;
        }
        plantClone = plontPooler.GrabObject();
        plantClone.transform.position = plantSpawnPos;
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
            plontScript.tgs = tgs;
            plontScript.gridMan = gridMan;
            plontScript.myZone = gridMan.transform.GetChild(1).GetComponent<Zone>();

            //age plant on start 
            if(ageAmount > 0)
            {
                plontScript.Age(ageAmount, 0.5f);
            }

            //remove from pool &/or destroy 
            if(_pooledObj != null)
            {
                plantOnStart = false;
                _pooledObj.m_ObjectPooler.RemoveFromPool(gameObject, true);
            }
            else
            {
                Destroy(gameObject);
            }
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
            itemScript.itemCount--;

            //turn off if no more seeds
            if (itemScript.itemCount == 0)
            {
                //Remove from Inventory 
                inventoryScript.SwitchItem(true, true);
                inventoryScript.RemoveObjFromInventory(gameObject);
                UIseed = false;

                //remove from pool &/or destroy 
                Destroy(gameObject);
            }

            //set this back to false
            plantingOnGrid = false;
            seedState = SeedStates.SEEDSELECTED;
        }
    }
    
    //called when vortexing reaches player
    void CollectSeed()
    {
        //check for my item's crop type 
        Item seedGroup = inventoryScript.CheckForCropType(itemScript.cropType);

        //does it exist in inventory?
        if (seedGroup != null)
        {
            seedGroup.itemCount++;

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
        //not in inventory, so add it. 
        else
        {
            //if it's pooled, remove it from the pool
            if (_pooledObj)
            {
                _pooledObj.m_ObjectPooler.RemoveFromPool(gameObject, false);
            }
            //add it 
            inventoryScript.AddItemToInventory(itemScript.gameObject, itemScript.itemSprite);
            //set parent, local pos, & uiSeed
            transform.SetParent(inventoryParent);
            transform.localPosition = inventoryScript.localSeedSpot;
            UIseed = true;
            //make sure physics off 
            seedBody.useGravity = false;
            seedBody.isKinematic = true;
            seedCollider.isTrigger = true;
            gameObject.SetActive(false);
        }

        tpc.SeedCollect();
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
