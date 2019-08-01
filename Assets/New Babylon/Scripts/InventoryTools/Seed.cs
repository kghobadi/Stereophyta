using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Seed : MonoBehaviour {
    //tgs logic
    TerrainGridSystem tgs;
    Cell currentCell;
    int currentCellIndex, previousCellIndex;
    //All possible texture references. 
    public Texture2D groundTexture;
    public Texture2D plantedTexture;
    public Texture2D canClickTexture;
    public bool plantingOnGrid;

    //for inv
    public int mySeedIndex;
    //player and inv ref
    GameObject player;
    ThirdPersonController tpc;
    Inventory inventoryScript;
    GameObject sun;
    Sun sunScript;

    //physics and collision
    public Rigidbody seedBody;
    SphereCollider seedCollider;
    public bool seedSelected, planting, blowing, falling, vortexing;
    float vortexSpeed = 7.5f;

    //for spawning plant
    Vector3 originalPos;
    public GameObject plantPrefab;
    GameObject plantClone;

    //audio
    public AudioSource seedSource;
    public AudioClip dropSeed, spawnPlant, noNO;

    Transform inventoryParent;

    public bool UIseed, startingSeed;

    //needs to be this far away from other plants
    public float distFromOtherPlants;

    //for planting itself after a few days
    public int daysBeforePlanting;
    public bool dayPassed;

    public ObjectPooler seedPooler;
    PooledObject _pooledObj;

    //wind blow reset
    public Vector3 origScale;

	void Start () {
        //grab refs
        tgs = TerrainGridSystem.instance;
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;

        seedBody = GetComponent<Rigidbody>();
        seedBody.isKinematic = true;
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();

        origScale = transform.localScale;

        _pooledObj = GetComponent<PooledObject>();

        if (!UIseed)
        {
            daysBeforePlanting = Random.Range(2, 4);
            SeedFall();
        }
        else
        {
            inventoryParent = transform.parent;
        }
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
                        planting = true;
                        seedBody.isKinematic = false;
                        seedBody.useGravity = true;
                        seedCollider.isTrigger = false;
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
     

        //plant seed
        if (seedSelected && !planting && !tpc.menuOpen)
        {
            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
            {
                if(hit.transform.gameObject.tag == "Ground")
                {
                    //check if this spot is on the TGS
                    //grabs Cell tile and index
                    currentCell = tgs.CellGetAtPosition(hit.point, true);

                    //we have a grid cell
                    if(currentCell != null)
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

        //right after spawning
        if (falling)
        {
            seedBody.AddForce(1, -3, 1);
        }

        //when player is near and nothing happening 
        if (!falling && !planting && !UIseed && !vortexing)
        {
            if(Vector3.Distance(transform.position, player.transform.position) < 5)
            {
                vortexing = true;
            }
        }

        //succ to player
        if (vortexing)
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
        if (blowing)
        {
            AdjustHeight();
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
        if (Input.GetButton("Plant"))
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
        planting = true;
        originalPos = transform.localPosition;
        transform.SetParent(null);
        seedBody.isKinematic = false;
        seedBody.useGravity = true;
        seedSource.PlayOneShot(dropSeed);
    }

    void OnCollisionEnter(Collision collision)
    {
        //ui seed hitting ground
        if(collision.gameObject.tag == "Ground" && planting)
        {
            SpawnPlant();
        }

        //spawned seed falling from plant
        if (collision.gameObject.tag == "Ground" && falling)
        {
            falling = false;
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
        seedSource.PlayOneShot(spawnPlant);
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
     
        //reset seed parent & pos, physics and planting bool
        transform.SetParent(inventoryParent);
        transform.localPosition = originalPos;
        seedBody.isKinematic = true;
        seedBody.useGravity = false;
        planting = false;

        //set seed count
        SeedStorage seedStorageTemp = inventoryScript.seedStorage[mySeedIndex];
        seedStorageTemp.seedCount--;
        inventoryScript.seedStorage[mySeedIndex] = seedStorageTemp;

        //turn off if no more seeds
        if(seedStorageTemp.seedCount == 0)
        {
            gameObject.SetActive(false);
        }

        //set this back to false
        plantingOnGrid = false;
    }

    //called when it falls off a plant from chop
    public void SeedFall()
    {
        seedBody.isKinematic = false;
        seedBody.useGravity = true;
        seedBody.AddRelativeForce(0, 15, 5);

        falling = true;
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
