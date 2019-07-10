
//this is going to look and function like the mushroom from shroom shade forest

//each one is its own 'seed' 
//can pick it up off the ground at any time and it will stop growing and add to your materials inventory (left hand)
//when 'planted' it has a very short life span
//has no growth stages, just a growth speed
//it's scale slowly increases (mainly on the y scale but also on the other 2)
//when hit by rhythm of any kind (or by the player), releases spores
//spores are just 2 sprites that float in the wind kinda sporadically
//when a spore touches the ground it plants a new shrooms
//spores float in random direction (almost like unused FC floating particles w smooth random movements)
//that's that. 
//they can grow on top of each other
//watering them just makes them release spores (but this only works once a day)

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Shroom : MonoBehaviour
{ 
    //for spawning shrooms
    public GameObject shroomPrefab;

    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    //for inv
    Inventory inventoryScript;
    public int mySeedIndex;

    //tgs logic
    TerrainGridSystem tgs;
    public bool plantedOnGrid;
    public int cellIndex;

    //All possible texture references. 
    public Texture2D groundTexture;
    public Texture2D plantedTexture;

    //size and transform storage
    Vector3 originalSize, largeSize, originalPosition;
    
    //physics
    Rigidbody shroomBody;
    BoxCollider shroomCol;
    float vortexSpeed = 7.5f;

    //lerp bools
    public enum PlantingState
    {
        PLANTED, UNPLANTED, VORTEXING,
    }
    public PlantingState plantingState;


    //for checking shroom type
    public ShroomType shroomType;
    public enum ShroomType
    {
        OCTA, CUBIE, 
    }

    //active planted bools
    bool breathingIn, breathingOut;
    public float breatheSpeed, breatheDistance;
    public int rhythm;

    //for shroom growth 
    public int myAge, deathDay;
    public bool dayPassed;

    //audio for shroom
    public AudioSource shroomSource;
    public AudioClip[] breathingSounds;
    public int mushroomSize;
    public AudioClip mushroomSound;
    public AudioClip dropShroom, noNo, uprootSound;

    //for player to take!!
    public Animator shroomAnimator;
    public MeshRenderer shroomMR;
    public Material myShroomShader, uprootMat;

    //for obj pooling 
    public ObjectPooler shroomPooler;
    PooledObject _pooledObj;

    //layermasks
    public LayerMask ground;

    void Start()
    {
        //player refs
        tgs = TerrainGridSystem.instance;
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = tpc.myInventory;

        //obj refs
        shroomCol = GetComponent<BoxCollider>();
        shroomBody = GetComponent<Rigidbody>();
        shroomAnimator = GetComponent<Animator>();
        shroomMR = GetComponent<MeshRenderer>();
        myShroomShader = shroomMR.material;
        shroomSource = GetComponent<AudioSource>();

        SetShroom();
    }

    void Update()
    {
        //they are alive and breathing --- not in inventory 
        if (plantingState == PlantingState.PLANTED)
        {
            CheckGrowth();
            
            //distance check 
            if (Vector3.Distance(transform.position, player.transform.position) < breatheDistance)
            {
                //increasing in size
                if (breathingIn)
                {
                    transform.localScale = Vector3.Lerp(transform.localScale, largeSize, breatheSpeed * Time.deltaTime);

                    if (Vector3.Distance(transform.localScale, largeSize) < 0.1f)
                    {
                        BreatheOut();
                    }

                }

                //decreasing in size
                if (breathingOut)
                {
                    transform.localScale = Vector3.Lerp(transform.localScale, originalSize, breatheSpeed * Time.deltaTime);

                    if (Vector3.Distance(transform.localScale, originalSize) < 0.1f)
                    {
                        BreatheIn();
                    }

                }
            }
        }

        //after they have been cut up by player (waiting to be vortexed)
        else if(plantingState == PlantingState.UNPLANTED)
        {
            if (Vector3.Distance(transform.position, player.transform.position) < 5)
            {
                plantingState = PlantingState.VORTEXING;
            }
        }

        //succ into player
        else if(plantingState == PlantingState.VORTEXING)
        {
            //lerp to the player mon
            transform.position = Vector3.Lerp(transform.position, player.transform.position, Time.deltaTime * vortexSpeed);
            //add to vortex speed every frame so player cannot outrun seeds
            vortexSpeed += 0.25f;

            //when close enough, add to seed inventory
            if (Vector3.Distance(transform.position, player.transform.position) < 1)
            {
                CollectShroom();
            }
        }
    }

    void CheckGrowth()
    {
        //counting days is hard work
        if (sun.dayCounter > sun.yesterday)
        {
            if (!dayPassed)
            {
                //increment age (within stage)
                myAge++;

                //reached next stage, grow
                if (myAge == deathDay)
                {
                    Destroy(gameObject);
                }

                dayPassed = true;
            }
        }

        //resets day passed when sun increments its day counter ahead of its yesterday int
        if (sun.yesterday == sun.dayCounter)
        {
            dayPassed = false;
        }
    }

    //switches states and plays sound
    void BreatheIn()
    {
        breathingIn = true;
        breathingOut = false;

        PlaySound(mushroomSound);
    }

    //switches states and plays sound
    void BreatheOut()
    {
        breathingIn = false;
        breathingOut = true;

        PlaySound(mushroomSound);
    }
    
    //play single sound
    public void PlaySound(AudioClip sound)
    {
        shroomSource.PlayOneShot(sound);
    }

    //called when shroom is first planted
    void SetShroom()
    {
        //random mushroom sound
        int mushroomSize = Random.Range(0, breathingSounds.Length);
        mushroomSound = breathingSounds[mushroomSize];

        //find size increments
        float totalRange = 1.5f;
        float increment = totalRange / breathingSounds.Length;

        //random scale
        float randomScale;
        //smallest size
        if(mushroomSize == 0)
        {
            randomScale = 0.5f;
        }
        //all other sizes
        else
        {
            randomScale = 0.5f + (increment * mushroomSize);
        }
        
        //set scale
        transform.localScale *= randomScale;
        originalSize = transform.localScale;
        largeSize = originalSize * 2;
        
        //randomize rotation
        float randomRotate = Random.Range(0, 360);
        transform.localEulerAngles = new Vector3(0, randomRotate, 0);
        rhythm = Random.Range(1, 5);
        breatheSpeed *= rhythm;

        deathDay = Random.Range(2, 4);

        //end
        plantingState = PlantingState.PLANTED;
        shroomAnimator.SetBool("planted", true);
        BreatheIn();
    }

    //called to move shroom to unplanted state so player can harvest
    public void UprootShroom()
    {
        plantingState = PlantingState.UNPLANTED;

        shroomAnimator.SetBool("planted", false);

        shroomMR.material = uprootMat;

        shroomSource.pitch = Random.Range(0.8f, 1.2f);
        shroomSource.PlayOneShot(uprootSound);
    }

    //called when hit by rhythm
    public void ReleaseSpores()
    {
        //release random # of spores 
        //(apply velocity to them based on inc rhythm)

        //wiggle animation 
        shroomAnimator.SetTrigger("wiggle");

        //glow material 

        //if on grid, auto plant spore on vertex pos of This Cell # 
        //if no vertex pos open, spores can't plant here & die
    }

    //called when vortexing reaches player
    void CollectShroom()
    {
        SeedStorage seedStorageTemp = inventoryScript.seedStorage[mySeedIndex];
        seedStorageTemp.seedCount++;

        inventoryScript.seedStorage[mySeedIndex] = seedStorageTemp;

        tpc.SeedCollect();

        //because of those pesky starting seeds
        Destroy(gameObject);
    }

}
