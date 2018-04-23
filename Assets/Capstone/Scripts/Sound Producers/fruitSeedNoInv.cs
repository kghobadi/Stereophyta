using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class fruitSeedNoInv : Interactable {

    public bool pickedByPlayer = false;

    public AudioSource seedSource;
    public AudioClip plantNote;

    public GameObject plants, seedMaster;
    GameObject plantClone;
    public List<GameObject> currentSeedLine = new List<GameObject>();

    public int plantingRadius;
    
    int originalLayer;

    public bool planting;
    bool inSeedLine, adjustedRotation;

    //for npcs only
    public Musician seedPicker;
    public int seedSpotNumber;

    public float fallingSpeed; //how fast seed falls to ground
    public float heightAdjustment; //how high must this plant be instantiated

    float throwCounter, yVelocity, followSpeedOrig, followSpeed;

    Rigidbody fruitBody;
    BoxCollider bCollider;

    int lastLineLength, currentSeedCount, currentSpot, lastSpot;

    Vector3 targetPos, origScale, throwForce;

    public ParticleSystem notesPlaying;
    

    public override void Start () {
        base.Start();
        originalLayer = gameObject.layer;
        fruitBody = GetComponent<Rigidbody>();
        fruitBody.isKinematic = true;
        bCollider = GetComponent<BoxCollider>();
        currentSpot = -1;
        origScale = transform.localScale;
        followSpeedOrig = 15f;
        followSpeed = followSpeedOrig;
        seedSource = GetComponent<AudioSource>();

        notesPlaying = GetComponentInChildren<ParticleSystem>();
        notesPlaying.Stop();

        if (pickedByPlayer)
        {
            PickUpSeed();
        }
        else
        {
            interactable = false;
            transform.SetParent(seedPicker.seedSpots[seedSpotNumber]);
            transform.localPosition = Vector3.zero;
        }
        
        
    }

    //technically will not need this since seeds appear directly from plant
    public override void handleClickSuccess()
    {
        if(interactable && !tpc.isHoldingSomething)
        {
            base.handleClickSuccess();
            PickUpSeed();
        }

    }
    
    public override void Update () {
        base.Update();

        if (pickedByPlayer)
        {
            seedSource.outputAudioMixerGroup = tpc.plantingGroup;
        }
        else
        {
            seedSource.outputAudioMixerGroup = seedPicker.primarySource.outputAudioMixerGroup;
            //controls whether a seed is playing a clip or not
            if (seedSource.isPlaying)
            {
                notesPlaying.Emit(1);
            }
        }

       
       currentSeedCount = currentSeedLine.Count;
       
       currentSpot = currentSeedLine.IndexOf(gameObject);
       interactable = false;

        //Input map for Mousewheel scroll to change seeds
        //if scroll up 
        // move all seed positions in line up
        // set seed which player is holding to end of line 
        // then CheckPlaceInLine()
        //if scroll down 
        // move all seed positions backward in line
        // seed in back of line becomes currently held 
        // then CheckPlaceInLine()


        //input reader for when a player is holding this seed 
        if (playerHolding)
        {
            //if you right click and nothing is stopping you
            if (Input.GetMouseButtonDown(1) && tpc.canUseSeed)
            {
                bool canPlant = true;
                Collider[] hitColliders = Physics.OverlapSphere(transform.position, plantingRadius);
                int i = 0;
                while (i < hitColliders.Length)
                {
                    if (hitColliders[i].gameObject.tag == "Plant")
                    {
                        canPlant = false;
                    }
                    i++;
                }
                if (canPlant && tpc.canUseSeed)
                {
                    planting = true;
                    playerHolding = false;
                    tpc.seedLine.Remove(gameObject);
                    inSeedLine = false;
                }
            }
        }
    
        //for controlling behavior of all seeds in line
        else if (inSeedLine && !playerHolding && currentSpot != 0)
        {
            transform.localEulerAngles += new Vector3(0, 1, 0);
            //seed in first spot (not being held) gets special treatment
            if (currentSpot == 1 && pickedByPlayer)
            {
                //controls whether a seed is playing a clip or not
                if (seedSource.isPlaying)
                {
                    targetPos = seedMaster.transform.localPosition - new Vector3(0, 0, 1) + new Vector3(0, 1, 0);
                    notesPlaying.Emit(1);
                }
                else
                {
                    targetPos = seedMaster.transform.localPosition - new Vector3(0, 0, 1);
                }
                followSpeed = followSpeedOrig;
                transform.LookAt(new Vector3(seedMaster.transform.position.x, transform.position.y, seedMaster.transform.position.z));
            }
            
            //behavior for all seeds after 1st or 2nd
            else
            {
                //controls whether a seed is playing a clip or not
                if (seedSource.isPlaying)
                {
                    notesPlaying.Emit(1);
                    targetPos = currentSeedLine[currentSpot - 1].transform.position - new Vector3(0, 0, 1) + new Vector3(0, 1 - (currentSpot / 10), 0);
                }
                else
                {
                    targetPos = currentSeedLine[currentSpot - 1].transform.position - new Vector3(0, 0, 1);
                }
                //increment follow speed of seeds
                followSpeed = followSpeedOrig - (currentSpot / 1.5f);
               

                //look at targetPos
                transform.LookAt(new Vector3(targetPos.x, transform.position.y, targetPos.z));
            }
            transform.position = Vector3.MoveTowards(transform.position, targetPos, followSpeed * Time.deltaTime);
            
        }

        else if (planting)
        {
            PlantSeed();
            
        }

        //keeping track of changes to seedline
        if (currentSeedCount != lastLineLength && inSeedLine && pickedByPlayer)
        {
            CheckPlaceInLine();
        }

        lastLineLength = currentSeedLine.Count;
        lastSpot = currentSeedLine.IndexOf(gameObject);
    }

    public void PickUpSeed()
    {
        if (pickedByPlayer)
        {
            seedMaster = _player;
            currentSeedLine = tpc.seedLine;
        }
        
        currentSeedLine.Add(this.gameObject);
        inSeedLine = true;
        if (currentSeedLine.Count == 1)
        {
                //move to player holding pos
                transform.SetParent(rightArmObj.transform);
                transform.localPosition = Vector3.zero;
                transform.localEulerAngles = Vector3.zero;
                gameObject.layer = originalLayer;

                playerHolding = true;
            
            
        }
        else
        {
            //reset pos
            int lineIndex = currentSeedLine.IndexOf(gameObject);
            transform.position = seedMaster.transform.position;
            transform.localEulerAngles = Vector3.zero;
            for (int i = 0; i <= lineIndex; i++)
            {
                //only do this as long as spot is less than 10
                if(i < 10)
                    transform.localScale *= 0.9f;
            }
        }
    }


    public void CheckPlaceInLine()
    {
        
        inSeedLine = true;
        if (currentSpot != lastSpot && lastSpot != -1)
        {
            
                //this is the currently held seed!
                if (currentSpot == 0)
                {
                    transform.SetParent(rightArmObj.transform);
                    transform.localPosition = Vector3.zero;
                    transform.localEulerAngles = Vector3.zero;
                    gameObject.layer = originalLayer;

                    playerHolding = true;
                }
                else
                {
                    //only do this if they are within 10 places in line
                    if (currentSpot < lastSpot)
                    {
                        transform.localScale *= 1.1f;
                    }
                    if (currentSpot > lastSpot)
                    {
                        transform.localScale *= 0.9f;
                    }
                }
            
            
        }

    }

    public void PlantSeed()
    {

        //player cant move while seed falls to ground
        if (!adjustedRotation)
        {
            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            //float cameraDif = Camera.main.transform.position.y - _player.transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, 30));

            Vector3 LookDirection = new Vector3(worldpos.x, _player.transform.position.y, worldpos.z);

            _player.transform.LookAt(LookDirection);

            adjustedRotation = true;

            fruitBody.isKinematic = false;

            bCollider.isTrigger = false;
        }

        if (pickedByPlayer)
        {
            tpc.canUseSeed = false;
            tpc.talking = true;
        }
       
        transform.Translate(0, fallingSpeed * Time.deltaTime, 0);
        
    }

    //allows player to walk through seed  to pick it up
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && interactable)
        {
            PickUpSeed();
            soundBoard.PlayOneShot(InteractSound);
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if (planting)
        {
            if(collision.gameObject.tag == "Ground")
            {
                //Play planting dirt splatter effect

                //spawn plant
                plantClone = Instantiate(plants, transform.position + new Vector3(0, heightAdjustment,0), Quaternion.identity);

                if (pickedByPlayer)
                {
                    plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;   
                    tpc.talking = false;
                    tpc.canUseSeed = true;
                }
                else
                {
                    plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = seedPicker.primarySource.outputAudioMixerGroup;
                }

                //set bools
                planting = false;

                //destroy
                Destroy(gameObject);
            }
            
        }
    }

        public void PlaySound()
    {
        if (!seedSource.isPlaying)
        {
            seedSource.PlayOneShot(plantNote);
        }
    }

    public override void OnEnable()
    {
        base.OnEnable();
        if (enabledCounter > 1)
        {
            Start();
        }
    }


}
