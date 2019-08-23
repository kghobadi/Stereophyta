
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Shroom : MonoBehaviour
{ 
    [Header("Prefab & Pooler")]
    //for spawning shrooms
    public GameObject shroomPrefab;
    //for obj pooling 
    public ObjectPooler shroomPooler;
    PooledObject _pooledObj;

    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;
    public bool hasReleasedSpores;

    //for inv
    Inventory inventoryScript;
    public int mySeedIndex;

    //tgs logic
    TerrainGridSystem tgs;
    GridManager gridMan;
    [Header("TGS")]
    public bool plantedOnGrid;
    public int cellIndex;

    //All possible texture references. 
    public Texture2D groundTexture;
    public Texture2D plantedTexture;

    //size and transform storage
    public Vector3 originalSize;
    Vector3 largeSize, originalPosition;
    
    //physics
    Rigidbody shroomBody;
    BoxCollider shroomCol;
    float vortexSpeed = 7.5f;
    
    //lerp bools
    public enum PlantingState
    {
        PLANTED, UNPLANTED, VORTEXING,
    }
    [Header("Shroom States")]
    public PlantingState plantingState;
    
    //for checking shroom type
    public ShroomType shroomType;
    public enum ShroomType
    {
        OCTA, SPHEROCYBIN, 
    }

    //active planted bools
    public bool blowing;
    bool breathingIn, breathingOut;
    public float breatheSpeedFlat, currentBreatheSpeed, breatheDistance;
    public int rhythm;
    //rhythm indicator
    SpriteRenderer rhythmSR;
    Animator rhythmIndicator;
    FadeSprite rhythmFader;
    //timers for how long indicator appears
    public bool changedRhythm;
    private float disappearTimer, disappearTimerTotal = 1.5f;

    //for shroom growth 
    public int myAge, deathDay;
    public bool dayPassed;

    //audio for shroom
    AudioSource shroomSource;
    [Header("Audio")]
    public AudioClip[] breathingSounds;
    public int mushroomSize;
    public AudioClip mushroomSound;
    public AudioClip noNo, uprootSound;
    public AudioClip[] changeRhythms;

    //for player to take!!
    Animator shroomAnimator;
    MeshRenderer shroomMR;
    public Material myShroomShader, uprootMat;

    //layermasks
    public LayerMask ground;

    //shroomSpores
    public ParticleSystem shroomSpores;
    ParticleSystem.MainModule sporeMain;
    ShroomSpores sporeScript;

    void Start()
    {
        //tgs refs
        tgs = TerrainGridSystem.instance;
        gridMan = tgs.transform.parent.GetComponent<GridManager>();
        groundTexture = gridMan.groundTexture;

        //player and environment 
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

        //rhythm indicator
        rhythmSR = transform.GetChild(0).GetComponent<SpriteRenderer>();
        rhythmIndicator = rhythmSR.GetComponent<Animator>();
        rhythmFader = rhythmSR.GetComponent<FadeSprite>();

        //spores
        shroomSpores = transform.GetChild(1).GetComponent<ParticleSystem>();
        sporeMain = shroomSpores.main;
        sporeScript = shroomSpores.GetComponent<ShroomSpores>();

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
                    transform.localScale = Vector3.Lerp(transform.localScale, largeSize, currentBreatheSpeed * Time.deltaTime);

                    if (Vector3.Distance(transform.localScale, largeSize) < 0.1f)
                    {
                        BreatheOut();
                    }

                }

                //decreasing in size
                if (breathingOut)
                {
                    transform.localScale = Vector3.Lerp(transform.localScale, originalSize, currentBreatheSpeed * Time.deltaTime);

                    if (Vector3.Distance(transform.localScale, originalSize) < 0.1f)
                    {
                        BreatheIn();
                    }

                }
            }

            //for rhythm visual
            if (changedRhythm)
            {
                disappearTimer -= Time.deltaTime;

                //fade out visual
                if (disappearTimer < 0)
                {
                    rhythmFader.FadeOut();
                    changedRhythm = false;
                }
            }
        }

        //after they have been cut up by player (waiting to be vortexed)
        else if(plantingState == PlantingState.UNPLANTED)
        {
            CheckGrowth();

            //hard coded spin animation
            if (!blowing)
            {
                transform.localEulerAngles = new Vector3(70f, transform.localEulerAngles.y + (Time.deltaTime * currentBreatheSpeed * 15), 0);
            }

            if (Vector3.Distance(transform.position, player.transform.position) < 5)
            {
                plantingState = PlantingState.VORTEXING;
            }

            //when wind is blowing, adjust my height to the ground
            if (blowing)
            {
                AdjustHeight();
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

                //reset spore release
                hasReleasedSpores = false;

                SwitchRhythm();

                //reached next stage, grow
                if (myAge == deathDay)
                {
                    float chanceToUproot = Random.Range(0f, 100f);

                    //50% chance to uproot
                    if(chanceToUproot > 50f)
                    {
                        //uproot shroom for 1 day
                        UprootShroom();
                    }
                    //otherwise destroy right away
                    else
                    {
                        //remove plant from grid
                        if (plantedOnGrid)
                        {
                            //nothing planted tag
                            tgs.CellSetTag(cellIndex, 0);
                            //ground texture
                            tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
                        }

                        Destroy(gameObject);
                    }
                }

                //destroy...
                if(myAge > deathDay || plantingState == PlantingState.UNPLANTED)
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

        //random start rhythm
        rhythm = Random.Range(0, 5);
        SetVisualRhythm();

        //set breathe speed
        if (rhythm == 0)
        {
            currentBreatheSpeed = breatheSpeedFlat;
        }
        else
        {
            currentBreatheSpeed = breatheSpeedFlat * rhythm;
        }
        
        //random lifespan 
        deathDay = Random.Range(3, 5);

        //end
        plantingState = PlantingState.PLANTED;
        shroomAnimator.SetBool("planted", true);
        BreatheIn();
    }

    //called when other rhythm sources influence shroom
    public void SwitchRhythm()
    {
        //rhythm increments upward
        if(rhythm < 4)
        {
            rhythm++;
        }
        else
        {
            rhythm = 0;
        }

        //set breathe speed
        if(rhythm == 0)
        {
            currentBreatheSpeed = breatheSpeedFlat;
        }
        else
        {
            currentBreatheSpeed = breatheSpeedFlat * rhythm;
        }

        SetVisualRhythm();
    }

    //called whenever rhythm is changed;
    public void SetVisualRhythm()
    {
        rhythmIndicator.SetInteger("Level", rhythm);

        changedRhythm = true;
        disappearTimer = disappearTimerTotal;

        //sound to indicate dif rhythm
        shroomSource.PlayOneShot(changeRhythms[rhythm], 1f);

        //only if player is close by, show the indicator
        if (Vector3.Distance(transform.position, tpc.transform.position) < 10f)
        {
            if (plantingState == PlantingState.PLANTED)
            {
                rhythmFader.FadeIn();
            }
        }
    }

    //called to move shroom to unplanted state so player can harvest
    public void UprootShroom()
    {
        //remove plant from grid
        if (plantedOnGrid)
        {
            //nothing planted tag
            tgs.CellSetTag(cellIndex, 0);
            //ground texture
            tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
        }

        plantingState = PlantingState.UNPLANTED;

        shroomMR.material = uprootMat;
        shroomAnimator.enabled = false;

        transform.localScale = originalSize / 1.5f;

        shroomSource.pitch = Random.Range(0.8f, 1.2f);
        shroomSource.PlayOneShot(uprootSound, 0.25f);

        shroomSpores.gameObject.SetActive(false);
    }

    //called when hit by rhythm
    public void ReleaseSpores()
    {
        //can only release spores once a day
        if (myAge > 1 && !hasReleasedSpores)
        {
            //check not already playing
            if (!shroomSpores.isPlaying)
            {
                //release random # of spores 
                shroomSpores.Play();
                hasReleasedSpores = true;
            }
        }
       
        
        //glow material 

        //if on grid, auto plant spore on vertex pos of This Cell # 
        //if no vertex pos open, spores can't plant here & die

        //wiggle animation -- rotates particles and everythang... may want to detach model from script eventualmente
        //shroomAnimator.SetTrigger("wiggle");
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
