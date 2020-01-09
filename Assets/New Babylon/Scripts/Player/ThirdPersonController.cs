using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TGS;
using InControl;

public class ThirdPersonController : MonoBehaviour
{
    //start viewer ref
    [Header("Starting View")]
    public StartView startViewer;
    //alternate start Pos based on if you have played before
    public Vector3 firstTimeStartPos, returningStartPos;

    //player controller and cam controller ref
    [Header("Component Refs")]
    public CharacterController controller;
    [HideInInspector]
    public PlayerCameraController playerCameraController;
    Transform cameraTransform;
    public Transform characterBody, waterCaster;
    public Animator samita;
    BoxCollider playerRunCollider;
    public Cloth playerCloak;
   

    //set publicly to tell this script what raycasts can and can't go thru
    [Header("Layer Masks & Zoning")]
    public LayerMask mask;
    public LayerMask groundedCheck;
    public Zone currentZone;
    public string currentZoneName;
    public bool savingAndLoadingEnabled;
    public TerrainGridSystem currentTGS;
    public GridManager currentGridMan;

    //PS4 move variables
    //move states
    [Header ("Movement Vars")]
    public bool running;
    public bool jumping, swimming;
    public bool playerCanMove, menuOpen;
    public bool indoors;
    public Transform houseCam;
    public ParticleSystem runParticles;
    [HideInInspector]
    public Vector3 currentMovement;
    Vector3 targetMovementTotal;
    Quaternion targetLook;
    public Vector3 horizontalInput;
    public Vector3 forwardInput;
    public float movespeed = 5, walkSpeed = 5, runSpeed, swimSpeed;
    float moveTimer, timeToRun = 3f;
    public float movespeedSmooth = 0.3f;
    public float rotateSpeed = 10;
    public float rotateSpeedSmooth = 0.3f;

    //mouse feel vars
    public float rotateSpeedMouse;

    //jump variables
    [Header("Jump Vars")]
    public TempoIndication playerTempo;
    public float jumpSpeed = 20;
    public float smallJump, midJump, bigJump;
    public float jumpCharger, midJCharge, bigJCharge, jumpChargerMax;
    public int lastJumpType;
    public float jumpWaitTime, jumpWaitTimer;
    public float airControlSmooth = 0.8f;
    public float grav = 9.8f;
    float moveSmoothUse;
    float rotationV;
    float verticalSpeed;
    [HideInInspector]
    public Vector3 currentMovementV;

    //for jump trails
    [Header ("Jump Trails & Dust Splash")]
    public ObjectPooler jumpTrailPool;
    public Material smallJMat, midJMat, bigJMat;
    [HideInInspector]
    public GameObject jumpTrail;

    //dust splash
    public GameObject dustSplash;
    DustSplash splashScript;

    //swim fx
    [Header("Swim FX")]
    public ParticleSystem swimRipples;
    public TrailRenderer swimTrail;
    public ParticleSystem swimSplashL, swimSplashR;
    ParticleSystem.MainModule splashMainL, splashMainR;
    public float swimJumpTotal = 10f;
    int swimJumpCounter;
    public float swimJumpForce = 50f;
    public bool swimJump;
    public BoatPlayer boatScript;

    //inventory ref
    public Inventory myInventory;

    //for calc of sliding
    public Transform physicsRaycaster;

    //all my audio stuff
    AudioSource audioSource;
    AudioSource cameraAudSource;
    [Header("Audio")]
    public AudioSource playerSource;
    public AudioSource seedSource;
    public AudioClip[] jumpSounds, swimJumps;
    public AudioClip[] currentFootsteps, grassSteps, woodSteps, swimSteps,  noNo;
    public float walkStepTotal = 1f, runStepTotal = 0.5f;
    float footStepTimer = 0;
    public int currentStep = 0;
    //footstep objects & efx
    public ObjectPooler footstepPooler;
    public bool leftOrRightFoot;

    //world manager reference
    WorldManager wm;
    GameObject sun;
    Sun sunScript;

    //for planting effect 
    [Header("Planting FX")]
    public ObjectPooler plantingFXpooler;
    public AudioSource seedAudio;
    public AudioClip[] seedCollects;

    //for sleeping
    [Header("Sleeping Stuff")]
    public bool sleeping;
    public Transform bedPos;
    public FadeUI sleepCover;
    public int daysWithoutSleep = 0;
    public int daysToSleep;
    public int noSleepMax = 3;
    public float sleepingTime = 0f;
    public float timeToSleep = 5f;
    public AudioSource sleepSource;
    public AudioClip[] snores, yawns;
    public ParticleSystem sleepParticles;

    //dictionary to sort nearby audio sources by distance 
    [SerializeField]
    public Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    //to shorten if statement
    [Header("Audio Listening Range")]
    public List<GameObject> audioObjects = new List<GameObject>();
    //listener range
    public float listeningRadius;
    //to shorten if statement
    public List<string> audioTags = new List<string>();

    void Awake()
    {
        //grab sun refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        playerTempo = GetComponent<TempoIndication>();

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        playerCameraController = Camera.main.GetComponent<PlayerCameraController>();

        //wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        if(myInventory == null)
            myInventory = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
        playerRunCollider = GetComponent<BoxCollider>();
        playerRunCollider.enabled = false;

        //for ps4 Move
        moveSmoothUse = movespeedSmooth;
        controller = GetComponent<CharacterController>();
        cameraTransform = Camera.main.transform;
        audioSource = GetComponent<AudioSource>();
        playerCameraController.enabled = true;

        //set animator state to idle
        if(samita.GetBool("idle") != true)
        {
            SetAnimator("idle");
        }
        samita.speed = 1f;
        characterBody = samita.transform;
        currentFootsteps = grassSteps;

        //set loose particles
        splashScript = dustSplash.GetComponent<DustSplash>();
        sleepParticles.Stop();
        runParticles.Stop();
        swimSpeed = movespeed / 2;
        swimRipples.Stop();
        swimSplashL.Stop();
        swimSplashR.Stop();
        splashMainL = swimSplashL.main;
        splashMainR = swimSplashR.main;

        //returning start pos
        if (PlayerPrefs.GetString("hasBook") == "yes")
        {
            transform.position = returningStartPos;
            transform.localEulerAngles = new Vector3(0, -90f, 0);
        }
        //initial start pos
        else
        {
            transform.position = firstTimeStartPos;
            transform.localEulerAngles = new Vector3(0, 0, 0);
        }

        //accounts for start view
        if (startViewer.startView)
        {
            StartCoroutine(WaitToTurnOffMovement());
        }
        else
        {
            playerCanMove = true;
        }
    }

    IEnumerator WaitToTurnOffMovement()
    {
        playerCanMove = true;
        yield return new WaitForSeconds(0.25f);
        playerCanMove = false;
    }

    void Update()
    { 
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //calls mouse move
        if (playerCanMove && !menuOpen)
        {
            Movement();
        }

        //input for switching player rhythm
        if (Input.GetKeyDown(KeyCode.LeftAlt) || inputDevice.DPadDown.WasPressed)
        {
            playerTempo.timeScale = myInventory.DecreaseListCounter(playerTempo.timeScale, 5);
            playerTempo.SetVisualTempo(playerTempo.timeScale);
        }

        //input for switching player rhythm
        if (Input.GetKeyDown(KeyCode.RightAlt) || inputDevice.DPadUp.WasPressed)
        {
            playerTempo.timeScale = myInventory.IncreaseListCounter(playerTempo.timeScale, 5);
            playerTempo.SetVisualTempo(playerTempo.timeScale);
        }

        //call sleep -- only works if you haven't slept for a day and you are on the ground
        if (!sleeping && (Input.GetKeyDown(KeyCode.Z) || inputDevice.Action4.WasPressed) && controller.isGrounded && !menuOpen && playerCanMove && !swimming) 
        {
            Sleep(true);
        }

        //set auto sleep when reach no sleep max
        if(daysWithoutSleep > noSleepMax && !sleeping && !swimming && playerCanMove)
        {
            Sleep(true);
        }
        //add to sleeping time 
        if (sleeping)
        {
            sleepingTime += Time.deltaTime;
            //turn off run particles...
            if (runParticles.isPlaying)
            {
                runParticles.Stop();
            }
        }

        //Restart game
        if (Input.GetKeyDown(KeyCode.Delete))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }
    }

    //same sort of logic for jump and other stuff, different core movement from ps4 controllers
    void Movement()
    {
        CalculateMovementInputs();

        //set animation based on target movement
        SetPlayerAnimsFootsteps(targetMovementTotal);

        //on land
        if (!swimming)
        {
            RunWalk();
            JumpCheck();
            JumpInputs();
            currentMovement.y = verticalSpeed;

            //turn off all the swim fx 
            if (swimTrail.enabled)
            {
                swimTrail.enabled = false;
                swimSplashL.Stop();
                swimSplashR.Stop();
                swimRipples.Stop();
            }
        }
        //swimming
        else
        {
            swimTrail.enabled = true;
            swimRipples.Play();
            Swim();
            currentMovement.y = 0;
        }
        
        controller.Move(currentMovement * Time.deltaTime);
        
        ResetNearbyAudioSources();
    }

    //finds the targetMovementTotal (where the player is moving) 
    // and the target Look (where the player is looking)
    // based on player inputs 
    void CalculateMovementInputs()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
        //mouse
        if (playerCameraController.mouseControls)
        {
            //z axis
            forwardInput = new Vector3(0, 0, Input.GetAxis("Vertical"));
            //x axis
            horizontalInput = new Vector3(Input.GetAxis("Horizontal"), 0, 0);
        }
        //controller
        else
        {
            //left stick y
            forwardInput = new Vector3(0, 0, inputDevice.LeftStickY);
            //left stick x
            horizontalInput = new Vector3(inputDevice.LeftStickX, 0, 0);
        }

        //forward movement calculations
        Vector3 targetForwardMovement = forwardInput;
        //horizontal movement calculations
        Vector3 targetHorizontalMovement = horizontalInput;

        //changes cam rotation it draws from 
        if (indoors)
        {
            targetForwardMovement = houseCam.rotation * forwardInput;
            targetHorizontalMovement = houseCam.rotation * horizontalInput;
        }
        else
        {
            targetForwardMovement = cameraTransform.rotation * forwardInput;
            targetHorizontalMovement = cameraTransform.rotation * horizontalInput;
        }
        //forward
        targetForwardMovement.y = 0;
        targetForwardMovement.Normalize();
        targetForwardMovement *= forwardInput.magnitude;
        //horizontal
        targetHorizontalMovement.y = 0;
        targetHorizontalMovement.Normalize();
        targetHorizontalMovement *= horizontalInput.magnitude;

        //add the 2 axes together
        targetMovementTotal = targetForwardMovement + targetHorizontalMovement;
        
        //add yLook to the player pos, then subtract cam pos to get the forward look
        if (targetMovementTotal.magnitude > 0)
        {
            targetLook = Quaternion.LookRotation(targetMovementTotal);
            characterBody.rotation = Quaternion.Lerp(characterBody.rotation, targetLook, 10f * Time.deltaTime);
        }
    }

    void RunWalk()
    { 
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
        //need to figure out how to reset the cloth to what it's like at start / before swimming 
        characterBody.transform.localPosition = new Vector3(0, -0.956f, 0);
        samita.speed = 1f;

        //too sleepy to run, show zzzs
        if ((Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift) || inputDevice.Action2) && daysWithoutSleep >= noSleepMax)
        {
            sleepParticles.Emit(1);
        }

        //run if pressing shift keys OR move timer is great enough
        if ((Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift) || inputDevice.Action2 || moveTimer > timeToRun ) && daysWithoutSleep < noSleepMax && !indoors)
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetMovementTotal * runSpeed, ref currentMovementV, moveSmoothUse);

            if (targetMovementTotal.magnitude > 0)
            {
                //set run
                if (samita.GetBool("running") != true)
                {
                    SetAnimator("running");
                    playerRunCollider.enabled = true;
                    running = true;
                    runParticles.Play();
                }
            }
            //not moving 
            else
            {
                //reset walk speed 
                moveTimer = 0;
                movespeed = walkSpeed;
                runParticles.Stop();
                //idling
                if (samita.GetBool("idle") != true)
                {
                    SetAnimator("idle");
                }
            }
        }
        //walk
        else
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetMovementTotal * movespeed, ref currentMovementV, moveSmoothUse);

            //only run if not sleepy 
            if (daysWithoutSleep < noSleepMax && !indoors)
            {
                //inc move speed & timer 
                movespeed += 5 * Time.deltaTime;
                moveTimer += Time.deltaTime;
            }

            //movin
            if (targetMovementTotal.magnitude > 0)
            {
                //set walk
                if (samita.GetBool("walking") != true)
                {
                    SetAnimator("walking");
                    playerRunCollider.enabled = false;
                    running = false;
                    runParticles.Stop();
                }
            }
            //not moving
            else
            {
                //reset walk speed 
                moveTimer = 0;
                movespeed = walkSpeed;
                //idling
                if (samita.GetBool("idle") != true)
                {
                    SetAnimator("idle");
                }
            }
        }
    }

    void AdjustSwimHeight()
    {
        RaycastHit hit;

        if (Physics.Raycast(waterCaster.position, Vector3.down, out hit, 35f))
        {
            if (hit.transform.gameObject.tag == "Water")
            {
                transform.position = hit.point - new Vector3(0, 2f, 0);
            }
        }
    }

    void Swim()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
        //move vector
        currentMovement = Vector3.SmoothDamp(currentMovement, targetMovementTotal * swimSpeed, ref currentMovementV, moveSmoothUse);
        runParticles.Stop();
        AdjustSwimHeight();
        //need to figure out what to do with the cloth while swimming...

        //swim jump input 
        if ((Input.GetButton("Jump") || inputDevice.Action1) && !swimJump && playerTempo.showRhythm && daysWithoutSleep < noSleepMax)
        {
            switch (playerTempo.timeScale)
            {
                case 0:
                    swimJumpForce = 10f;
                    break;
                case 1:
                    swimJumpForce = 8f;
                    break;
                case 2:
                    swimJumpForce = 6f;
                    break;
                case 3:
                    swimJumpForce = 4f;
                    break;
                case 4:
                    swimJumpForce = 2f;
                    break;
            }

            swimJump = true;
            int randomSwimJump = Random.Range(0, swimJumps.Length);
            playerSource.PlayOneShot(swimJumps[randomSwimJump]);
            playerTempo.showRhythm = false;
        }

        //too sleepy to swimjump
        if ((Input.GetButton("Jump") || inputDevice.Action1) && daysWithoutSleep >= noSleepMax)
        {
            sleepParticles.Emit(5);
        }

        //actual force applied 
        if (swimJump)
        {
            swimSpeed += swimJumpForce;
            swimJumpCounter++;

            if (swimJumpCounter > 10)
            {
                swimJumpCounter = 0;
                swimSpeed = movespeed;
                swimJump = false;
            }
        }

        if (!swimJump)
        {
            //swim faster!
            if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
            {
                swimSpeed = movespeed;
                samita.speed = 2f;

                //alter splash fx
                splashMainL.startLifetime = 0.5f;
                splashMainR.startLifetime = 0.5f;

            }
            //normal swim speed
            else
            {
                swimSpeed = movespeed / 2f;
                samita.speed = 1f;

                //alter splash fx
                splashMainL.startLifetime = 1f;
                splashMainR.startLifetime = 1f;
            }
        }
       
        //swimming
        if (targetMovementTotal.magnitude > 0)
        {
            swimSplashL.Play();
            swimSplashR.Play();
            //always swimmin
            if (samita.GetBool("swimming") != true)
            {
                SetAnimator("swimming");
            }
        }
        //treading water idle
        else
        {
            swimSplashL.Stop();
            swimSplashR.Stop();
            
            //always swimmin
            if (samita.GetBool("swimIdle") != true)
            {
                SetAnimator("swimIdle");
            }
        }
    }

    //called either when player presses Z or has passed out from exhaustion
    public void Sleep(bool pressedOrPassed)
    {
        Debug.Log("sleep time");
        //set bools
        sleeping = true;
        playerCanMove = false;
        myInventory.gameObject.SetActive(false);

        //player just pressed Z
        sleepingTime = 0;
        if (pressedOrPassed)
        {
            daysToSleep = 1;
        }
        //player passed out
        else
        {
            daysToSleep = Random.Range(1, 3);
        }

        //increase sun rotationSpeed
        sunScript.rotationSpeed = sunScript.sleepRotation;

        //play random yawn sound
        int randomYawn = Random.Range(0, yawns.Length);
        sleepSource.PlayOneShot(yawns[randomYawn], 1f);

        //is player somewhere other than home island?
        if(Vector3.Distance(transform.position, bedPos.position) > 250f)
        {
            //sleep where player is standing
            SetAnimator("sleeping");
            sleepParticles.Play();
            playerCloak.gameObject.SetActive(false);
        }
        //on home island, return to bed 
        else
        {
            StartCoroutine(FadeToBed());
        }
    }

    //only called when player is on home island
    IEnumerator FadeToBed()
    {
        yield return new WaitForSeconds(0.5f);

        //set animator
        SetAnimator("sleeping");

        sleepCover.FadeIn();

        yield return new WaitForSeconds(1f);
       
        //move player to bed & turn on z particles
        transform.position = bedPos.position;
        playerCloak.gameObject.SetActive(false);
        transform.localEulerAngles = new Vector3(0, 180, 0);
        characterBody.localEulerAngles = new Vector3(0, 0, 0);
        characterBody.transform.localPosition = new Vector3(0, 0.3f, 0);
        sleepParticles.Play();
        boatScript.ResetDockPos();

        yield return new WaitForSeconds(1f);

        sleepCover.FadeOut();
      
    }

    //called by Sun when player's daysToSleep reaches 0 while sleeping is true
    public void WakeUp()
    {
        //Debug.Log("wake up time");
        //set bools
        characterBody.transform.localPosition = new Vector3(0, 0, 0);
        sleeping = false;
       
        //if not in farmhouse
        if (Vector3.Distance(transform.position, bedPos.position) > 250f)
        {
            myInventory.gameObject.SetActive(true);
        }
        daysWithoutSleep = 0;

        //play random yawn sound
        sleepSource.Stop();
        int randomYawn = Random.Range(0, yawns.Length);
        sleepSource.PlayOneShot(yawns[randomYawn], 1f);
        sleepParticles.Stop();

        //reset sun rotationSpeed
        sunScript.rotationSpeed = sunScript.normalRotation;

        //set animator
        SetAnimator("idle");

        StartCoroutine(WaitToActivateCloak(1.5f));
        StartCoroutine(WaitToEnablePlayer(1.5f));
    }

    //public call for waitToactivate    
    public void ActivateCloak(float time)
    {
        StartCoroutine(WaitToActivateCloak(time));
    }

    IEnumerator WaitToActivateCloak(float time)
    {
        yield return new WaitForSeconds(time);

        playerCloak.gameObject.SetActive(true);
    }

    IEnumerator WaitToEnablePlayer(float time)
    {
        yield return new WaitForSeconds(time);

        playerCanMove = true;
        playerCameraController.enabled = true;
    }
  

    //checking if and how we are moving to set vis effects and anims
    void SetPlayerAnimsFootsteps(Vector3 inputToCheck)
    {
        //need input to set movement anim
        if (inputToCheck.magnitude > 0)
        {
            if (!jumping)
            {
                footStepTimer += Time.deltaTime;

                //play footstep sound
                if (running)
                {
                    if (footStepTimer > runStepTotal)
                    {
                        IncrementFootsteps();
                        playerSource.PlayOneShot(currentFootsteps[currentStep]);
                        
                    }
                }
                //walking
                else
                {
                    if (footStepTimer > walkStepTotal)
                    {
                        IncrementFootsteps();
                        playerSource.PlayOneShot(currentFootsteps[currentStep]);
                      
                    }
                }
            }
        }
        else
        {
            footStepTimer = 0;
        }
    }

    //count thru footstep sounds 
    void IncrementFootsteps()
    {
        if (currentStep < (currentFootsteps.Length - 1))
        {
            currentStep += Random.Range(0, (currentFootsteps.Length - currentStep));
        }
        else
        {
            currentStep = 0;
        }

        footStepTimer = 0;

        //spawn footprints on land
        if(!swimming && !indoors)
            SpawnFootprint();
    }

    //leave footprints behind as you walk around
    void SpawnFootprint()
    {
        //set footprint obj
        GameObject footprint = null;
        footprint = footstepPooler.GrabObject();
        footprint.GetComponent<FadeSprite>().FadeIn();

        //set spawn point
        Vector3 spawnPos = new Vector3(transform.position.x, transform.position.y - controller.height / 2 + 0.1f, transform.position.z);

        //set pos 
        footprint.transform.position = spawnPos;
        
        //mess with rotation 
        footprint.transform.SetParent(characterBody.transform);
        if (leftOrRightFoot)
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(0.3f, 0, 0);
        }
        else
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(-0.3f, 0, 0);

        }
        footprint.transform.localEulerAngles = new Vector3(90, 0, 0);
        footprint.transform.SetParent(null);

        //wait 1 sec to fade out footprint
        footprint.GetComponent<FadeSprite>().StartCoroutine(footprint.GetComponent<FadeSprite>().WaitToFadeOut());

        //play little dirt particle effect 
        //running fx
        if (running)
        {
            footprint.transform.GetChild(1).GetComponent<ParticleSystem>().Play();
        }
        //walking fx
        else
        {
            footprint.transform.GetChild(0).GetComponent<ParticleSystem>().Play();
        }
      

        leftOrRightFoot = !leftOrRightFoot;
    }
    
    public void SetAnimator(string newState)
    {
        //turn off all states
        samita.SetBool("idle", false);
        samita.SetBool("walking", false);
        samita.SetBool("running", false);
        samita.SetBool("jumping", false);
        samita.SetBool("sleeping", false);
        samita.SetBool("swimming", false);
        samita.SetBool("swimIdle", false);

        //set new state
        samita.SetBool(newState, true);
    }


    //jump logics
    void JumpCheck()
    {
        //on the ground
        if (controller.isGrounded)
        {
            if (jumping)
            {
                jumping = false;

                //start jump trail deactivation
                jumpTrail.transform.SetParent(null);
                jumpTrail.GetComponent<JumpTrail>().StartCoroutine(jumpTrail.GetComponent<JumpTrail>().Deactivate());
                //dust fall rhythm
                //hit down
                RaycastHit hitD;

                //raycast down to see if we hit the terrain;
                if (Physics.Raycast(transform.position, -transform.up, out hitD, 10, groundedCheck))
                {
                    //dust splash
                    dustSplash.transform.position = hitD.point + new Vector3(0, 1f, 0);
                    splashScript.StartCoroutine(splashScript.Splash(lastJumpType));
                }
            }

            jumpWaitTimer -= Time.deltaTime;
            moveSmoothUse = movespeedSmooth;

            //if animator still jumping, set back to idle
            if (samita.GetBool("jumping") == true)
            {
                SetAnimator("idle");
            }
        }

        //not grounded
        if(!controller.isGrounded)
        {
            moveSmoothUse = airControlSmooth;
            verticalSpeed -= grav * Time.deltaTime;
        }
        
    }

    void JumpInputs()
    { 
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //reset show rhythm on jump press 
        if (Input.GetButtonDown("Jump") || inputDevice.Action1.WasPressed)
        {
            playerTempo.showRhythm = false;

            //show z particles when press to signify i am le tired 
            if(daysWithoutSleep >= noSleepMax)
            {
                sleepParticles.Emit(5);
            }
        }

        //hold jump button to charge jump on rhythm
        if ((Input.GetButton("Jump") || inputDevice.Action1) && !jumping && jumpWaitTimer < 0 && daysWithoutSleep < noSleepMax)
        {
            jumpCharger += Time.deltaTime;

            //for holding down to enact rhythm
            if (playerTempo.showRhythm)
            {
                switch (playerTempo.timeScale)
                {
                    case 0:
                        SetJump(2);
                        break;
                    case 1:
                        SetJump(2);
                        break;
                    case 2:
                        SetJump(1);
                        break;
                    case 3:
                        SetJump(1);
                        break;
                    case 4:
                        SetJump(0);
                        break;
                }
            }
        }

        //release to set jump
        if ((Input.GetButtonUp("Jump") || inputDevice.Action1.WasReleased) && !jumping && jumpWaitTimer < 0 && daysWithoutSleep < noSleepMax)
        {
            //small jump
            if (jumpCharger < midJCharge)
            {
                SetJump(0);
            }
            //mid jump
            if (jumpCharger > midJCharge && jumpCharger < bigJCharge)
            {
                SetJump(1);
            }
            //big jump
            if (jumpCharger > bigJCharge)
            {
                SetJump(2);
            }
        }
    }

    //called to actually jump
    void SetJump(int jumpType)
    {
        playerTempo.showRhythm = false;
        //PlayJumpSound();
        //jump trail activation
        jumpTrail = jumpTrailPool.GrabObject();
        jumpTrail.transform.SetParent(characterBody);
        jumpTrail.transform.localPosition = Vector3.zero;
        //set various jump speeds
        switch (jumpType)
        {
            case 0:
                verticalSpeed = smallJump;
                jumpTrail.GetComponent<TrailRenderer>().material = smallJMat;
                break;
            case 1:
                verticalSpeed = midJump;
                jumpTrail.GetComponent<TrailRenderer>().material = midJMat;
                break;
            case 2:
                verticalSpeed = bigJump;
                jumpTrail.GetComponent<TrailRenderer>().material = bigJMat;
                break;
        }
        SetAnimator("jumping");
        jumping = true;
        jumpTrail.GetComponent<TrailRenderer>().enabled = true;
        jumpWaitTimer = jumpWaitTime;
        jumpCharger = 0;
        lastJumpType = jumpType;
    }

    //for ps4 move
    void PlayJumpSound()
    {
        int randomJump = Random.Range(0, jumpSounds.Length);
        audioSource.PlayOneShot(jumpSounds[randomJump]);
    }

    //we want to see if we are on terrain that should make us slide downward
    //only gets called while Player is considered to be grounded
    void SlideCheck()
    {
        //store hit and point
        RaycastHit hit;
        Vector3 point;

        bool sliding = false;

        for(int i = 0; i < 30; i++)
        {
            //raycast forward to see if we hit terrain 
            if (Physics.Raycast(physicsRaycaster.transform.position, physicsRaycaster.transform.forward, out hit, 3, groundedCheck))
            {
                point = hit.point;

                //hit down
                RaycastHit hitD;
                Vector3 dPoint;

                //raycast down to see if we hit the terrain;
                if (Physics.Raycast(transform.position, -transform.up, out hitD, 10, groundedCheck))
                {
                    dPoint = hitD.point;

                    //compare the heights of these points. 
                    //if down point is lower height, we should fall down slowly
                    if (dPoint.y < (point.y - 1.5f))
                    {
                        verticalSpeed = -jumpSpeed * 2;
                        float zForce = -physicsRaycaster.transform.forward.z * 5;
                        //i think we need to somehow reorient the player before applying this force. 
                        transform.localEulerAngles = new Vector3(transform.localEulerAngles.x, physicsRaycaster.transform.localEulerAngles.y, transform.localEulerAngles.z);
                        currentMovement.z = zForce;
                        sliding = true;

                        //should make an animation for this, dust particles, sound?

                        Debug.Log("sliding backward");
                    }
                }
            }

            //spin physics raycaster 1/30th of the way around y axis to shoot ray again
            physicsRaycaster.transform.Rotate(0, 12, 0);
        }

        if (!sliding)
        {
            verticalSpeed = 0;
        }
    }


    //this function shifts all audio source priorities dynamically
    void ResetNearbyAudioSources()
    {
        //empty dictionary and audioObjects
        soundCreators.Clear();
        audioObjects.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, listeningRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            GameObject audioObj = hitColliders[i].gameObject;

            //check to see if obj has desired tag
            //that the object is both active and not already part of our audioObjects list
            //and that the object has an audio source
            if (audioTags.Contains(audioObj.tag) &&
                    audioObj.activeSelf && !audioObjects.Contains(audioObj) &&
                    audioObj.GetComponent<AudioSource>() != null)
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                //add to audiosource and distance to dictionary
                soundCreators.Add(audioObj.GetComponent<AudioSource>(), distanceAway);
                //add to list of objects
                audioObjects.Add(audioObj);
            }
            i++;
        }

        int priority = 0;
        //sort the dictionary by order of ascending distance away
        foreach (KeyValuePair<AudioSource, float> item in soundCreators.OrderBy(key => key.Value))
        {
            // do something with item.Key and item.Value
            item.Key.priority = priority;
            priority++;
        }
    }

    //plays the dirt planting effect
    public void PlayPlantingEffect(Vector3 plantingSpot)
    {
        GameObject plantingFX = plantingFXpooler.GrabObject();
        plantingFX.transform.position = plantingSpot;

        plantingFX.GetComponent<ParticleSystem>().Play();
    }

    public void SeedCollect()
    {
        int randomSlurp = Random.Range(0, seedCollects.Length);
        float randomPitch = Random.Range(0.8f, 1.2f);
        seedAudio.pitch = randomPitch;
        seedAudio.clip = seedCollects[randomSlurp];
        seedAudio.PlayOneShot(seedCollects[randomSlurp]);

        StopCoroutine(ResetSeedPitch());
        StartCoroutine(ResetSeedPitch());
    }

    IEnumerator ResetSeedPitch()
    {
        yield return new WaitForSeconds(seedAudio.clip.length);
        seedAudio.pitch = 1f;
    }

}
