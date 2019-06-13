using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ThirdPersonController : MonoBehaviour
{
    //start viewer ref
    public StartView startViewer;
    //alternate start Pos based on if you have played before
    public Vector3 firstTimeStartPos, returningStartPos;

    //player controller and cam controller ref
    public CharacterController controller;
    PlayerCameraController playerCameraController;
    Transform cameraTransform;
    public Transform characterBody;
    public Animator poopShoes;
    BoxCollider playerRunCollider;
    public Cloth playerCloak;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;
    public LayerMask groundedCheck;

    //PS4 move variables
    public bool playerCanMove, menuOpen;
    public bool running;
    public GameObject runParticles;
    Vector3 currentMovement;
    public Vector3 horizontalInput;
    public Vector3 forwardInput;
    public float movespeed = 5, runSpeed;
    public float movespeedSmooth = 0.3f;
    public float rotateSpeed = 10;
    public float rotateSpeedSmooth = 0.3f;

    //mouse feel vars
    public float rotateSpeedMouse;

    //jump variables
    public float jumpSpeed = 20, smallJump, midJump, bigJump;
    public float jumpCharger, midJCharge, bigJCharge, jumpChargerMax;
    public int lastJumpType;
    public float jumpWaitTime, jumpWaitTimer;
    public float airControlSmooth = 0.8f;
    public float grav = 9.8f;
    public bool jumping;
    float moveSmoothUse;
    float rotationV;
    float verticalSpeed;
    Vector3 currentMovementV;

    //dust splash
    public GameObject dustSplash;
    DustSplash splashScript;

    //inventory ref
    public Inventory myInventory;

    //for calc of sliding
    public Transform physicsRaycaster;

    //all my audio stuff
    AudioSource audioSource;
    AudioSource cameraAudSource;
    public AudioSource playerSource;
    public AudioClip[] jumpSounds;
    public AudioClip[] currentFootsteps, grassSteps, woodSteps, noNo;
    public float walkStepTotal = 1f, runStepTotal = 0.5f;
    public ParticleSystem walkingEffect;
    float footStepTimer = 0;
    public int currentStep = 0;

    //world manager reference
    WorldManager wm;
    GameObject sun;
    Sun sunScript;

    //for planting effect 
    public List<ParticleSystem> plantingEffects = new List<ParticleSystem>();
    public int plantingEffectCounter = 0;
    public AudioSource seedAudio;
    public AudioClip[] seedCollects;

    //for sleeping
    public bool sleeping;
    public Transform bedPos;
    public FadeUI sleepCover;
    public int daysWithoutSleep = 0;
    public int daysToSleep;
    public int noSleepMax = 3;
    public AudioSource sleepSource;
    public AudioClip[] snores, yawns;
    public GameObject sleepParticles;

    //dictionary to sort nearby audio sources by distance 
    [SerializeField]
    public Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    //to shorten if statement
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
        
        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        playerCameraController = Camera.main.GetComponent<PlayerCameraController>();
        wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
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
        SetAnimator("idle");
        characterBody = poopShoes.transform;
        currentFootsteps = grassSteps;

        //set loose particles
        splashScript = dustSplash.GetComponent<DustSplash>();
        sleepParticles.SetActive(false);
        runParticles.SetActive(false);
        //for dirt particles
        if (walkingEffect != null)
        {
            walkingEffect.Stop();
        }

        //returning start pos
        if(PlayerPrefs.GetString("hasBook") == "yes")
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
        //ps4 move
        if (playerCanMove && !menuOpen && !playerCameraController.mouseControls)
            PS4Movement();

        //calls mouse move
        if (playerCanMove && !menuOpen && playerCameraController.mouseControls)
        {
            MouseMovement();
        }

        //call sleep -- only works if you haven't slept for a day and you are on the ground
        if(!sleeping && Input.GetKeyDown(KeyCode.Z) && controller.isGrounded && !menuOpen)
        {
            Sleep(true);
        }

        //repeatedly snore while sleeping
        if (sleeping)
        {
            //play snore sounds
            if (!sleepSource.isPlaying)
            {
                int randomSnore = Random.Range(0, snores.Length);
                sleepSource.PlayOneShot(snores[randomSnore], 1f);
            }
        }

        //Restart game
        if (Input.GetKeyDown(KeyCode.Delete))
        {
            SceneManager.LoadScene("DemoIslandTest");
        }
    }

    //same sort of logic for jump and other stuff, different core movement from ps4 controllers
    void MouseMovement()
    {
        //grab inputs from our axes
        //z
        forwardInput = new Vector3(0, 0, Input.GetAxis("Vertical"));
        //x
        horizontalInput = new Vector3(Input.GetAxis("Horizontal"), 0, 0);

        //forward movement calculations
        Vector3 targetForwardMovement = forwardInput;
        targetForwardMovement = transform.rotation * forwardInput;
        targetForwardMovement.y = 0;
        targetForwardMovement.Normalize();
        targetForwardMovement *= forwardInput.magnitude;

        //horizontal movement calculations
        Vector3 targetHorizontalMovement = horizontalInput;
        targetHorizontalMovement = transform.rotation * horizontalInput;
        targetHorizontalMovement.y = 0;
        targetHorizontalMovement.Normalize();
        targetHorizontalMovement *= horizontalInput.magnitude;

        //add the 2 axes together
        Vector3 targetMovementTotal = targetForwardMovement + targetHorizontalMovement;

        //add yLook to the player pos, then subtract cam pos to get the forward look
        Quaternion targetLook;

        //movement input
        if (targetMovementTotal.magnitude > 0)
        {
            targetLook = Quaternion.LookRotation(targetMovementTotal);
            characterBody.rotation = Quaternion.Lerp(characterBody.rotation, targetLook, 10f * Time.deltaTime);
        }
        else
        {
            //dont rotate mc
        }

       

        //set animation based on target movement
        SetPlayerAnimsFootsteps(targetMovementTotal);


        //run
        if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetMovementTotal * runSpeed, ref currentMovementV, moveSmoothUse);
            playerRunCollider.enabled = true;
            running = true;
            if(forwardInput.magnitude > 0)
            {
                runParticles.SetActive(true);
                poopShoes.speed = 2f;
            }
            else
            {
                runParticles.SetActive(false);
            }
        }
        //walk
        else
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetMovementTotal * movespeed, ref currentMovementV, moveSmoothUse);
            playerRunCollider.enabled = false;
            running = false;
            runParticles.SetActive(false);
            poopShoes.speed = 1f;
        }

        //OLD rotate the player's body OLD
        //transform.Rotate(horizontalInput * rotateSpeedMouse * Time.deltaTime);

        JumpCheck();

        currentMovement.y = verticalSpeed;

        //Debug.Log(" currentMovement = " + currentMovement);
        controller.Move(currentMovement * Time.deltaTime);

       
        ResetNearbyAudioSources();
        
    }

    //PS4 Controls
    void PS4Movement()
    {
        //gets both of these Axes from the L analogue stick
        horizontalInput = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        //should put measure in place to adjust animations and footsteps to walking speed based on slight input of joystick

        if (horizontalInput.magnitude > 1)
        {
            horizontalInput.Normalize();
        }

        //checking if and how we are moving to set vis effects and anims
        SetPlayerAnimsFootsteps(horizontalInput);


        //Actual movement calcs
        Vector3 targetHorizontalMovement = horizontalInput;
        targetHorizontalMovement = cameraTransform.rotation * targetHorizontalMovement;
        targetHorizontalMovement.y = 0;
        targetHorizontalMovement.Normalize();
        targetHorizontalMovement *= horizontalInput.magnitude;

        currentMovement = Vector3.SmoothDamp(currentMovement, targetHorizontalMovement * movespeed, ref currentMovementV, moveSmoothUse);

        Quaternion targetRotationQ = Quaternion.LookRotation(Vector3.forward);
        if (new Vector3(currentMovement.x, 0, currentMovement.z).magnitude > 1)
        {
            targetRotationQ = Quaternion.LookRotation(new Vector3(currentMovement.x, 0, currentMovement.z));
            transform.rotation = Quaternion.Euler(0, Mathf.SmoothDampAngle(transform.rotation.eulerAngles.y, targetRotationQ.eulerAngles.y, ref rotationV, rotateSpeedSmooth), 0);
        }

        //jump logics
        JumpCheck();

        currentMovement.y = verticalSpeed;

        //Debug.Log(" currentMovement = " + currentMovement);
        controller.Move(currentMovement * Time.deltaTime);

        ResetNearbyAudioSources();
    }

    //called either when player presses B or has passed out from exhaustion
    public void Sleep(bool pressedOrPassed)
    {
        Debug.Log("sleep time");
        //set bools
        sleeping = true;
        playerCanMove = false;
        playerCameraController.enabled = false;
        myInventory.gameObject.SetActive(false);

        //player just pressed Z
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
        //Time.timeScale = 10f;

        //play random yawn sound
        int randomYawn = Random.Range(0, yawns.Length);
        sleepSource.PlayOneShot(yawns[randomYawn], 1f);

        StartCoroutine(FadeToBed());
    }

    IEnumerator FadeToBed()
    {
        sleepCover.FadeIn();

        yield return new WaitForSeconds(1f);
       
        //move player to bed & turn on z particles
        transform.position = bedPos.position;
        playerCloak.gameObject.SetActive(false);
        transform.localEulerAngles = new Vector3(0, 80, 0);
        sleepParticles.SetActive(true);

        //set animator
        SetAnimator("sleeping");

        yield return new WaitForSeconds(0.5f);

        sleepCover.FadeOut();
        playerCloak.gameObject.SetActive(true);
    }

    //called by Sun when player's daysToSleep reaches 0 while sleeping is true
    public void WakeUp()
    {
        Debug.Log("wake up time");
        //set bools
        sleeping = false;
        playerCanMove = true;
        playerCameraController.enabled = true;
        //if not in farmhouse
        //myInventory.gameObject.SetActive(true);
        daysWithoutSleep = 0;

        //play random yawn sound
        sleepSource.Stop();
        int randomYawn = Random.Range(0, yawns.Length);
        sleepSource.PlayOneShot(yawns[randomYawn], 1f);

        sleepParticles.SetActive(false);

        //reset sun rotationSpeed
        //Time.timeScale = 1f;
        sunScript.rotationSpeed = sunScript.normalRotation;

        //set animator
        SetAnimator("idle");
    }

  

    //checking if and how we are moving to set vis effects and anims
    void SetPlayerAnimsFootsteps(Vector3 inputToCheck)
    {
        //need input to set movement anim
        if (inputToCheck.magnitude > 0)
        {
            SetAnimator("running");


            if (!jumping)
            {
                //dirt particles start
                if (!walkingEffect.isPlaying)
                {
                    walkingEffect.Play();
                }

                footStepTimer += Time.deltaTime;

                //play footstep sound
                if (running)
                {
                    if (footStepTimer > runStepTotal)
                    {
                        if (currentStep < currentFootsteps.Length)
                            playerSource.PlayOneShot(currentFootsteps[currentStep]);
                        IncrementFootsteps();
                    }
                }
                //walking
                else
                {
                    if (footStepTimer > walkStepTotal)
                    {
                        if (currentStep < currentFootsteps.Length)
                            playerSource.PlayOneShot(currentFootsteps[currentStep]);
                        IncrementFootsteps();
                    }
                }
               
            }
        }
        else
        {
            SetAnimator("idle");

            //dirt particles stop
            if (walkingEffect.isPlaying)
            {
                walkingEffect.Stop();
            }

            footStepTimer = 0;
        }
    }

    void SetAnimator(string newState)
    {
        //turn off all states
        poopShoes.SetBool("jumping", false);
        poopShoes.SetBool("running", false);
        poopShoes.SetBool("sleeping", false);
        poopShoes.SetBool("idle", false);
        poopShoes.SetBool("sidestepping", false);

        //set new state
        poopShoes.SetBool(newState, true);
    }

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
    }

    //jump logics
    void JumpCheck()
    {
        if (controller.isGrounded)
        {
            if (jumping)
            {
                jumping = false;
                //dust fall rhythm
                //hit down
                RaycastHit hitD;

                //raycast down to see if we hit the terrain;
                if (Physics.Raycast(transform.position, -transform.up, out hitD, 10, groundedCheck))
                {
                    //dust splash
                    dustSplash.transform.position = hitD.point + new Vector3(0, 2f, 0);
                    splashScript.StartCoroutine(splashScript.Splash(lastJumpType));
                }
            }
            jumpWaitTimer -= Time.deltaTime;
            moveSmoothUse = movespeedSmooth;

            //if animator still jumping, set back to idle
            if (poopShoes.GetBool("jumping") == true)
            {
                SetAnimator("idle");
            }
            //SlideCheck();
        }

        if (!controller.isGrounded)
        {
            moveSmoothUse = airControlSmooth;
            verticalSpeed -= grav * Time.deltaTime;
        }

        //hold jump button to charge jump on rhythm
        if (Input.GetButton("Jump") && !jumping && jumpWaitTimer < 0 && daysWithoutSleep < noSleepMax)
        {
            jumpCharger += Time.deltaTime;

            //reached capacity -- big jump
            if(jumpCharger > jumpChargerMax)
            {
                SetJump(2);
            }
        }

        //release to set jump
        if(Input.GetButtonUp("Jump") && !jumping && jumpWaitTimer < 0 && daysWithoutSleep < noSleepMax)
        {
            //small jump
            if(jumpCharger < midJCharge)
            {
                SetJump(0);
            }
            //mid jump
            if(jumpCharger > midJCharge && jumpCharger < bigJCharge)
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
        PlayJumpSound();
        //set various jump speeds
        switch (jumpType)
        {
            case 0:
                verticalSpeed = smallJump;
                break;
            case 1:
                verticalSpeed = midJump;
                break;
            case 2:
                verticalSpeed = bigJump;
                break;
        }
        SetAnimator("jumping");
        jumping = true;
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

    public void SeedCollect()
    {
        int randomSlurp = Random.Range(0, seedCollects.Length);
        float randomPitch = Random.Range(0.8f, 1.2f);
        seedAudio.pitch = randomPitch;
        seedAudio.clip = seedCollects[randomSlurp];
        seedAudio.PlayOneShot(seedCollects[randomSlurp]);

        StopCoroutine(ResetSeedPitch());
        StartCoroutine(ResetSeedPitch());

        //if not holding a seed, switch seed
        if (myInventory.currenSeedObj == null || myInventory.seedStorage[myInventory.currentSeed].seedCount <= 1)
        {
            myInventory.SwitchSeed(true);
        }
    }

    IEnumerator ResetSeedPitch()
    {
        yield return new WaitForSeconds(seedAudio.clip.length);
        seedAudio.pitch = 1f;
    }

}
