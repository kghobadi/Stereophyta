﻿
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;
using Player;

public class Shroom : RhythmProducer
{ 
    [Header("Prefab & Pooler")]
    //for spawning shrooms
    public GameObject shroomPrefab;
    public GameObject shroomSeedPrefab;
    //for obj pooling 
    public ObjectPooler shroomPooler;
    PooledObject _pooledObj;
    public float heightAdjust = 0;
    //player and sun ref
    public bool hasReleasedSpores;

    //for inv
    Inventory inventoryScript;
    //picking
    Pickable pickable;

    //tgs logic
    [HideInInspector] public TerrainGridSystem tgs;
    [HideInInspector] public Zone myZone;
    [HideInInspector] public GridManager gridMan;
    [Header("TGS")]
    public bool plantedOnGrid;
    public int cellIndex;
    TempoIndication tempoIndicator;

    //All possible texture references. 
    public Texture2D groundTexture;
    public Texture2D plantedTexture;

    //size and transform storage
    Vector3 inherentScale;
    public Vector3 originalSize;
    Vector3 largeSize, originalPosition;
    
    //physics
    Rigidbody shroomBody;
    BoxCollider shroomCol;
    float vortexOrig = 7.5f;
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
        OCTA, SPHEROCYBIN, FLAT, AMANITA,  
    }

    //active planted bools
    public bool blowing;
    bool breathingIn, breathingOut;
    public float breatheSpeedFlat, currentBreatheSpeed, breatheDistance;

    //for shroom growth 
    public int myAge, deathDay;

    //audio for shroom
    AudioSource shroomSource;
    [Header("Audio")]
    public AudioClip[] breathingSounds;
    public int mushroomSize;
    public AudioClip mushroomSound;
    public AudioClip noNo, uprootSound;
    public AudioClip[] changeRhythms;
    ParticleSystem beatParticles;

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

    public override void Awake()
    {
        base.Awake();

        //shroom phsyx 
        shroomCol = GetComponent<BoxCollider>();
        shroomBody = GetComponent<Rigidbody>();
        shroomAnimator = GetComponent<Animator>();
        shroomMR = GetComponent<MeshRenderer>();
        shroomSource = GetComponent<AudioSource>();
        pickable = GetComponent<Pickable>();
        
        //particles
        beatParticles = transform.GetChild(2).GetComponent<ParticleSystem>();
        shroomSpores = transform.GetChild(1).GetComponent<ParticleSystem>();
        sporeScript = shroomSpores.GetComponent<ShroomSpores>();
        tempoIndicator = GetComponent<TempoIndication>();

        myZone = tpc.currentZone;
        //tgs refs
        if (tgs != null)
        {
            tgs = tpc.currentTGS;
            gridMan = tgs.transform.parent.GetComponent<GridManager>();
        }
    }

    void Start()
    {
        //add to save list if its not already
        myZone.zoneSaver.AddShroom(this);

        //day passed listener
        sunScript.newDay.AddListener(DayPassed);
        inherentScale = transform.localScale;

        //add to zone list 
        if (!myZone.shrooms.Contains(gameObject))
            myZone.shrooms.Add(gameObject);
        transform.SetParent(myZone.shroomParent);
        if(gridMan)
            groundTexture = gridMan.groundTexture;

        //player and environment 
        inventoryScript = tpc.myInventory;
        myShroomShader = shroomMR.material;
        FindPoolers();

        //spores
        sporeMain = shroomSpores.main;
        if(sporeScript.shroomParent == null)
        {
            sporeScript.shroomParent = this;
            sporeScript.shroomPool = shroomPooler;
        }
        
        AdjustHeight();
        SetShroom();
    }

    //finds obj poolers for this type of shroom 
    void FindPoolers()
    {
        //obj refs
        _pooledObj = GetComponent<PooledObject>();
        shroomPooler = _pooledObj.m_ObjectPooler;
        shroomPrefab = shroomPooler.objectPrefab;
    }

    void Update()
    {
        //they are alive and breathing --- not in inventory 
        if (plantingState == PlantingState.PLANTED)
        {
            //distance check 
            if (Vector3.Distance(transform.position, player.transform.position) < breatheDistance)
            {
                //increasing in size
                if (breathingIn)
                {
                    //only increase scale until reaching large scale 
                    if (Vector3.Distance(transform.localScale, largeSize) > 0.1f)
                    {
                        transform.localScale = Vector3.Lerp(transform.localScale, largeSize, currentBreatheSpeed * Time.deltaTime);
                    }

                    //time to breatheOut
                    if (showRhythm)
                    {
                        BreatheOut();
                        beatParticles.Play();
                        showRhythm = false;
                    }
                }

                //decreasing in size
                if (breathingOut)
                {
                    //only decrease scale until reach orig size 
                    if (Vector3.Distance(transform.localScale, originalSize) > 0.1f)
                    {
                        transform.localScale = Vector3.Lerp(transform.localScale, originalSize, currentBreatheSpeed * Time.deltaTime);
                    }

                    //time to breathe in 
                    if (showRhythm)
                    {
                        BreatheIn();
                        beatParticles.Play();
                        showRhythm = false;
                    }
                }
            }
            
        }

        //after they have been cut up by player (waiting to be vortexed)
        else if(plantingState == PlantingState.UNPLANTED)
        {
            //hard coded spin animation
            if (!blowing)
            {
                transform.localEulerAngles = new Vector3(70f, transform.localEulerAngles.y + (Time.deltaTime * currentBreatheSpeed * 15), 0);
            }

            //check for player to vortex
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

    //called when sun.newDay is invoked
    void DayPassed()
    {
        //increment age (within stage)
        myAge++;

        //reset spore release
        hasReleasedSpores = false;

        SwitchRhythm();

        //reached next stage, grow
        if (myAge == deathDay && plantingState != PlantingState.UNPLANTED)
        {
            ReleaseSpores();
            StartCoroutine(WaitToUproot());
        }

        //return to pool 
        if (myAge > deathDay && plantingState == PlantingState.UNPLANTED)
        {
            //remove from zone list 
            if (myZone.shrooms.Contains(gameObject))
                myZone.shrooms.Remove(gameObject);

            ResetShroom();
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
    public void SetShroom()
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
        transform.localScale = inherentScale;
        transform.localScale *= randomScale;
        originalSize = transform.localScale;
        largeSize = originalSize * 2;
        
        //randomize rotation
        float randomRotate = Random.Range(0, 360);
        transform.localEulerAngles = new Vector3(0, randomRotate, 0);

        //random start rhythm
        timeScale = Random.Range(0, 5);

        //set breathe speed
        SetBreatheSpeed();
        
        //random lifespan 
        deathDay = Random.Range(3, 5);
        
        //end
        shroomMR.material = myShroomShader;
        plantingState = PlantingState.PLANTED;
        shroomAnimator.SetBool("planted", true);
        blowing = false;
        BreatheIn();
        //set pickable
        pickable.activeItems = pickable.pickableObjects.Count;
    }

    //called when other rhythm sources influence shroom
    public void SwitchRhythm()
    {
        //rhythm increments upward
        if(timeScale < 4)
        {
            timeScale++;
        }
        else
        {
            timeScale = 0;
        }

        //set tempo indicator if player is nearby 
        if(Vector3.Distance(transform.position, tpc.transform.position) < 15f)
            SetTempoIndication();
        SetBreatheSpeed();
    }

    void SetTempoIndication()
    {
        //enable tempo indicator if shroom planted on grid 
        if (plantedOnGrid && tempoIndicator.tempoSR.gameObject.activeSelf == false)
        {
            tempoIndicator.tempoSR.gameObject.SetActive(true);
        }
        //disable when not on grid 
        else if (!plantedOnGrid && tempoIndicator.tempoSR.gameObject.activeSelf)
        {
            tempoIndicator.tempoSR.gameObject.SetActive(false);
        }
        //set sprite to timescale 
        tempoIndicator.SetVisualTempo(timeScale);
    }

    void SetBreatheSpeed()
    {
        //set breathe speed
        if (timeScale == 0)
        {
            currentBreatheSpeed = breatheSpeedFlat;
        }
        else
        {
            currentBreatheSpeed = breatheSpeedFlat * timeScale;
        }
    }
    
    IEnumerator WaitToUproot()
    {
        yield return new WaitForSeconds(1f);

        UprootShroom();
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

        transform.SetParent(null);
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
    }

    //called when vortexing reaches player
    public void CollectShroom()
    {
        //check for my item's crop type 
        Item seedGroup = inventoryScript.CheckForShroomType(shroomType);

        //does it exist in inventory?
        if (seedGroup != null)
        {
            seedGroup.itemCount++;
        }
        //not in inventory, so instantiate shroomSeed & add it. 
        else
        {
            GameObject shroomSeed = Instantiate(shroomSeedPrefab);
            Item item = shroomSeed.GetComponent<Item>();
            inventoryScript.AddItemToInventory(shroomSeed, item.itemSprite);
            //set parent, local pos, & deactivate
            shroomSeed.transform.SetParent(inventoryScript.transform);
            shroomSeed.transform.localPosition = inventoryScript.localSeedSpot;
            shroomSeed.GetComponent<ShroomSeed>().shroomPooler = shroomPooler;
            shroomSeed.SetActive(false);
        }

        //send this shroom packing!
        ResetShroom();
        tpc.SeedCollect();
    }

    //for player collision
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" )
        {
            //change rhythm & release spores 
            SwitchRhythm();
            ReleaseSpores();
        }
    }

    //resets age, spores, scale, and returns to pool
    public void ResetShroom()
    {
        myAge = 0;
        hasReleasedSpores = false;
        transform.localScale = inherentScale;
        vortexSpeed = vortexOrig;

        //the return...
        myZone.zoneSaver.RemoveShroom(this);
        shroomPooler.ReturnObject(gameObject);
    }

    public void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 100f;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 150f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, heightAdjust, 0);
            }
        }
    }
}
