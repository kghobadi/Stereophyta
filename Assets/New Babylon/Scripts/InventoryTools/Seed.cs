using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : MonoBehaviour {
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
    public bool seedSelected, planting, falling, vortexing;
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

	void Start () {
        //grab refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;

        seedBody = GetComponent<Rigidbody>();
        seedBody.isKinematic = true;
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();

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
        if (Input.GetButton("Plant") && seedSelected && !planting && !tpc.menuOpen)
        {
            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
            {
                if(hit.transform.gameObject.tag == "Ground")
                {

                    //check in radius of planting point if its too close to others
                    bool nearOtherPlant = false;
                    Collider[] hitColliders = Physics.OverlapSphere(hit.point, distFromOtherPlants);
                    int i = 0;
                    while (i < hitColliders.Length)
                    {
                        if(hitColliders[i].gameObject.tag == "Plant")
                        {
                            nearOtherPlant = true;
                            Debug.Log("hit other plant");
                        }
                        i++;
                    }
                    
                    //if remains false
                    if (!nearOtherPlant)
                    {
                        planting = true;
                        originalPos = transform.localPosition;
                        transform.SetParent(null);
                        seedBody.isKinematic = false;
                        seedBody.useGravity = true;
                        seedSource.PlayOneShot(dropSeed);
                    }
                    else
                    {
                        Debug.Log("nono");
                        seedSource.PlayOneShot(noNO);
                        //player source play NoNo sound
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
        seedSource.PlayOneShot(spawnPlant);

        plantClone = Instantiate(plantPrefab, transform.position, Quaternion.Euler(tpc.transform.localEulerAngles));
        plantClone.GetComponent<Plont>().plantPrefab = plantPrefab;
        plantClone.GetComponent<Plont>().seedPooler = seedPooler;

        transform.SetParent(inventoryParent);
        transform.localPosition = originalPos;

        tpc.playerCanMove = true;

        planting = false;
        seedBody.isKinematic = true;
        seedBody.useGravity = false;

        //set seed count
        SeedStorage seedStorageTemp = inventoryScript.seedStorage[mySeedIndex];
        seedStorageTemp.seedCount--;

        inventoryScript.seedStorage[mySeedIndex] = seedStorageTemp;

        //turn off if no more seeds
        if(seedStorageTemp.seedCount == 0)
        {
            gameObject.SetActive(false);
        }
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

}
