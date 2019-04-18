using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ThirdPersonController : MonoBehaviour
{
    //player controller and cam controller ref
    CharacterController controller;
    PlayerCameraController playerCameraController;
    Transform cameraTransform;
    public Animator poopShoes;
    BoxCollider playerRunCollider;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;
    public LayerMask groundedCheck;

    //PS4 move variables
    public bool playerCanMove, menuOpen;
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
    public float jumpSpeed = 20;
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

    //for planting effect 
    public List<ParticleSystem> plantingEffects = new List<ParticleSystem>();
    public int plantingEffectCounter = 0;
    public AudioSource seedAudio;
    public AudioClip[] seedCollects;

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
        currentFootsteps = grassSteps;

        //for dirt particles
        if (walkingEffect != null)
        {
            walkingEffect.Stop();
        }

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        playerCameraController = Camera.main.GetComponent<PlayerCameraController>();
        wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        myInventory = transform.GetChild(0).GetComponent<Inventory>();
        playerRunCollider = GetComponent<BoxCollider>();
        playerRunCollider.enabled = false;

        //for ps4 Move
        moveSmoothUse = movespeedSmooth;
        controller = GetComponent<CharacterController>();
        cameraTransform = Camera.main.transform;
        audioSource = GetComponent<AudioSource>();
        playerCameraController.enabled = true;

        poopShoes.SetBool("idle", true);
        poopShoes.SetBool("running", false);
        poopShoes.SetBool("jumping", false);

        splashScript = dustSplash.GetComponent<DustSplash>();

        playerCanMove = true;
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

        //Restart game
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene("DemoIslandTest");
        }
    }

    //same sort of logic for jump and other stuff, different core movement from ps4 controllers
    void MouseMovement()
    {
        //grab inputs from our axes
        forwardInput = new Vector3(0, 0, Input.GetAxis("Vertical"));
        horizontalInput = new Vector3(0, Input.GetAxis("Horizontal"), 0);

        if (horizontalInput.magnitude > 1)
        {
            horizontalInput.Normalize();
        }

        SetPlayerAnimsFootsteps(forwardInput);

        //actual movement (tanky boy)
        Vector3 targetForwardMovement = forwardInput;
        targetForwardMovement = transform.rotation * forwardInput;
        targetForwardMovement.y = 0;
        targetForwardMovement.Normalize();
        targetForwardMovement *= forwardInput.magnitude;

        //run
        if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetForwardMovement * runSpeed, ref currentMovementV, moveSmoothUse);
            playerRunCollider.enabled = true;
        }
        //walk
        else
        {
            currentMovement = Vector3.SmoothDamp(currentMovement, targetForwardMovement * movespeed, ref currentMovementV, moveSmoothUse);
            playerRunCollider.enabled = false;
        }

        //rotate the player's body
        transform.Rotate(horizontalInput * rotateSpeedMouse * Time.deltaTime);

        JumpCheck();

        currentMovement.y = verticalSpeed;

        //Debug.Log(" currentMovement = " + currentMovement);
        controller.Move(currentMovement * Time.deltaTime);

        if (currentMovement.magnitude > 0)
        {
            ResetNearbyAudioSources();
        }
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

        if(currentMovement.magnitude > 0)
        {
            ResetNearbyAudioSources();
        }
    }

    //checking if and how we are moving to set vis effects and anims
    void SetPlayerAnimsFootsteps(Vector3 inputToCheck)
    {
        if (inputToCheck.magnitude > 0)
        {
            poopShoes.SetBool("idle", false);
            poopShoes.SetBool("jumping", false);
            poopShoes.SetBool("running", true);

            if (!jumping)
            {
                //dirt particles start
                if (!walkingEffect.isPlaying)
                {
                    walkingEffect.Play();
                }

                footStepTimer += Time.deltaTime;

                //play footstep sound
                if (footStepTimer > runStepTotal)
                {
                    playerSource.PlayOneShot(currentFootsteps[currentStep]);
                    IncrementFootsteps();
                }
            }
        }
        else
        {
            poopShoes.SetBool("idle", true);
            poopShoes.SetBool("jumping", false);
            poopShoes.SetBool("running", false);

            //dirt particles stop
            if (walkingEffect.isPlaying)
            {
                walkingEffect.Stop();
            }

            footStepTimer = 0;
        }
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
                    dustSplash.transform.position = hitD.point + new Vector3(0, 1f, 0);
                    splashScript.StartCoroutine(splashScript.Splash());
                }
            }
            jumpWaitTimer -= Time.deltaTime;
            moveSmoothUse = movespeedSmooth;

            //if animator still jumping, set back to idle
            if (poopShoes.GetBool("jumping") == true)
            {
                poopShoes.SetBool("idle", true);
                poopShoes.SetBool("running", false);
                poopShoes.SetBool("jumping", false);
            }
            //SlideCheck();
        }

        if (!controller.isGrounded)
        {
            moveSmoothUse = airControlSmooth;
            verticalSpeed -= grav * Time.deltaTime;
        }

        //hold jump button to jump on rhythm
        if (Input.GetButton("Jump") && !jumping && jumpWaitTimer < 0)
        {
            SetJump();
        }

    }

    //called to actually jump
    void SetJump()
    {
        PlayJumpSound();
        verticalSpeed = jumpSpeed;
        poopShoes.SetBool("idle", false);
        poopShoes.SetBool("running", false);
        poopShoes.SetBool("jumping", true);
        jumping = true;
        jumpWaitTimer = jumpWaitTime;
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
        seedAudio.PlayOneShot(seedCollects[randomSlurp]);
    }

}
