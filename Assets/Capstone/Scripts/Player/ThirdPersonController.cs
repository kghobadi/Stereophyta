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

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;
    public LayerMask groundedCheck;

    //PS4 move variables
    public bool playerCanMove;
    Vector3 currentMovement;
    public Vector3 horizontalInput;
    public float movespeed = 5;
    public float movespeedSmooth = 0.3f;
    public float rotateSpeed = 10;
    public float rotateSpeedSmooth = 0.3f;

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

    //inventory ref
    Inventory myInventory;
    
    //for calc of sliding
    public Transform physicsRaycaster;

    //all my audio stuff
    AudioSource audioSource;
    AudioSource cameraAudSource;
    public AudioSource playerSource;
    public AudioClip[] jumpSounds;
    public AudioClip[] footsteps, noNo;
    public float walkStepTotal = 1f, runStepTotal = 0.5f;
    public ParticleSystem walkingEffect;
    float footStepTimer = 0;
    int currentStep = 0;

    //world manager reference
    WorldManager wm;

    //dictionary to sort nearby audio sources by distance 
    [SerializeField]
    Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    public List<string> tagsWithAudio = new List<string>();
    
    void Start()
    {
        //for dirt particles
        if (walkingEffect!= null)
        {
            walkingEffect.Stop();
        }

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        playerCameraController = Camera.main.GetComponent<PlayerCameraController>();
        wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        myInventory = GetComponent<Inventory>();
        
        //for ps4 Move
        moveSmoothUse = movespeedSmooth;
        controller = GetComponent<CharacterController>();
        cameraTransform = Camera.main.transform;
        audioSource = GetComponent<AudioSource>();
        playerCameraController.enabled = true;

        poopShoes.SetBool("idle", true);
        poopShoes.SetBool("running", false);
        poopShoes.SetBool("jumping", false);
        
        playerCanMove = true;
    }

    void Update()
    {
        if(playerCanMove)
            PS4Movement();

        //if (mouseMovement)
        //{
        //WASD move + Mouse controls for cam & interactions
        //}

        //Restart game
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene("PlayerTest");
        }
    }

    void IncrementFootsteps()
    {
        if (currentStep < (footsteps.Length - 1))
        {
            currentStep += Random.Range(0, (footsteps.Length - currentStep));
        }
        else
        {
            currentStep = 0;
        }
        footStepTimer = 0;
    }

    void PS4Movement()
    {
        //PS4 Controls
        horizontalInput = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        //should put measure in place to adjust animations and footsteps to walking speed based on slight input of joystick

        if (horizontalInput.magnitude > 1)
        {
            horizontalInput.Normalize();
        }
        if (horizontalInput.magnitude > 0)
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
                    playerSource.PlayOneShot(footsteps[currentStep]);
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

        if (controller.isGrounded)
        {
            jumping = false;
            jumpWaitTimer -= Time.deltaTime;
            moveSmoothUse = movespeedSmooth;

            //if animator still jumping, set back to idle
            if (poopShoes.GetBool("jumping") == true)
            {
                poopShoes.SetBool("idle", true);
                poopShoes.SetBool("running", false);
                poopShoes.SetBool("jumping", false);
            }

            SlideCheck();
        }

        if (!controller.isGrounded)
        {
            moveSmoothUse = airControlSmooth;
            verticalSpeed -= grav * Time.deltaTime;
        }

        if (Input.GetButtonDown("Jump") && !jumping && jumpWaitTimer < 0)
        {
            PlayJumpSound();
            verticalSpeed = jumpSpeed;
            poopShoes.SetBool("idle", false);
            poopShoes.SetBool("running", false);
            poopShoes.SetBool("jumping", true);
            jumping = true;
            jumpWaitTimer = jumpWaitTime;
        }


        currentMovement.y = verticalSpeed;

        //Debug.Log(" currentMovement = " + currentMovement);
        controller.Move(currentMovement * Time.deltaTime);
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
        //empty dictionary
        soundCreators.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, wm.activationDistance);

        for(int i = 0; i < hitColliders.Length; i++)
        {
            //check to see if obj is plant or rock
            if (tagsWithAudio.Contains(hitColliders[i].gameObject.tag))
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                //add to audiosource and distance to dictionary
                soundCreators.Add(hitColliders[i].gameObject.GetComponent<AudioSource>(), distanceAway);
                Debug.Log("added aud source");

            }
        }

        //Debug.Log(soundCreators.Count);

        int priority = 0;
        //sort the dictionary by order of ascending distance away
        foreach (KeyValuePair<AudioSource, float> item in soundCreators.OrderBy(key => key.Value))
        {
            // do something with item.Key and item.Value
            item.Key.priority = priority;
            priority++;
        }
    }
}
