using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class ThirdPersonController : MonoBehaviour
{
    //Player movment variables. 
    CharacterController player;
    public float currentSpeed, walkSpeed, runSpeedMax;
    public float startingHeight, runTime;
    private Vector3 targetPosition;
    public bool isMoving; // for point to click
    public Animator blubAnimator;
    float clickTimer, headTurnTimer;
    bool hasTurnedHead;
    //these are used in seed script
    public float throwStrength, throwMin, throwMax, throwStrengthMultiplier, gravity;
    public GameObject walkingPointer;
    //Camera ref variables
    AudioSource cameraAudSource;
    public AudioSource playerSource;
    public AudioClip[] footsteps, noNo;
    public float walkStepTotal = 1f, runStepTotal = 0.5f;
    float footStepTimer = 0;
    int currentStep = 0;
    CameraController camControl;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;

    //control player actions with interactable objects
    public bool isHoldingSomething, canUseSeed, talking;
 
    //Lists for follower line and seed line
    public List<GameObject> followers = new List<GameObject>();
    public List<float> followerDistances = new List<float>();
    public int followerCountMax;

    public List<GameObject> seedLine = new List<GameObject>();
    public int seedLineMax;

    //Store the current audio mixer info so when you plant stuff and drop off followers, they adjust to where player is on map
    public AudioMixerSnapshot currentAudioMix;
    public AudioMixerGroup plantingGroup;

    //Player command menu refs
    public Image playerCommandsMenu;

    //dictionary to sort nearby audio sources by distance 
    Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();

    //listener range
    public float listeningRadius;
    //store this mouse pos
    Vector3 lastPosition;

    //UI walking
    Image symbol; // 2d sprite renderer icon reference
    AnimateUI symbolAnimator;
    List<Sprite> walkingSprites = new List<Sprite>(); // walking feet cursor
    int currentWalk = 0;

    void Start()
    {
        //walking UI
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        symbolAnimator = symbol.GetComponent<AnimateUI>();
        for (int i = 1; i < 4; i++)
        {
            walkingSprites.Add(Resources.Load<Sprite>("CursorSprites/Foot" + i));
        }

        symbol.sprite = walkingSprites[currentWalk];
        playerSource = GetComponent<AudioSource>();

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();

        //set starting points for most vars
        player = GetComponent<CharacterController>();
        targetPosition = transform.position;
        blubAnimator = GetComponentInChildren<Animator>();
        blubAnimator.SetBool("idle", true);
        startingHeight = transform.position.y;
        headTurnTimer = 0;
        canUseSeed = true;
        currentSpeed = walkSpeed;
    }

    void Update()
    {
        if (!talking)
        {
            //this is used in fruitSeedNoInv to let seed know whether player has a seed already
            if (seedLine.Count == 0)
            {
                isHoldingSomething = false;
            }
            else
            {
                isHoldingSomething = true;
            }

            //click to move to point
            if (Input.GetMouseButton(0))
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                clickTimer += Time.deltaTime;
                if (clickTimer > runTime && currentSpeed < runSpeedMax)
                {
                    currentSpeed += Time.deltaTime * 5;
                }

                if (Physics.Raycast(ray, out hit, 100, mask))
                {
                    //if we hit the ground & height is in range, move the character to that position
                    if (hit.transform.gameObject.tag == "Ground")
                    {
                        walkingPointer.transform.position = hit.point;
                        targetPosition = new Vector3(hit.point.x, transform.position.y, hit.point.z);
                        isMoving = true;

                    }

                    //if we hit an interactable object AND we are far from it, the player should auto walk towards it
                    else if (Vector3.Distance(transform.position, hit.transform.position) > 5 &&
                        (hit.transform.gameObject.tag == "WindGen" || hit.transform.gameObject.tag == "Plant"
                        || hit.transform.gameObject.tag == "Seed" || hit.transform.gameObject.tag == "WindMachines"
                        || hit.transform.gameObject.tag == "Rock" || hit.transform.gameObject.tag == "NPC"))
                    {
                        targetPosition = new Vector3(hit.point.x + 2, transform.position.y, hit.point.z + 2);
                        walkingPointer.transform.position = new Vector3(targetPosition.x, targetPosition.y - 1, targetPosition.z);
                        isMoving = true;

                    }
                    else
                    {
                        isMoving = false;
                    }
                }
            }

            //On mouse up, we check clickTimer to see if we are walking to that point or stopping the character from running 
            if (Input.GetMouseButtonUp(0))
            {
                playerSource.PlayOneShot(footsteps[currentStep]);
                //increment footstep audio
                if (currentStep < (footsteps.Length - 1))
                {
                    currentStep++;
                }
                else
                {
                    currentStep = 0;
                }
                if (clickTimer < runTime)
                {
                    isMoving = true;
                    clickTimer = 0;
                    currentSpeed = walkSpeed;
                    //set walk sprite
                    if (currentWalk < (walkingSprites.Count - 1))
                    {
                        currentWalk++;
                    }
                    else
                    {
                        currentWalk = 0;
                    }
                    symbol.sprite = walkingSprites[currentWalk];
                    symbolAnimator.active = false;
                    walkingPointer.SetActive(true);
                }
                else
                {
                    symbolAnimator.active = false;
                    isMoving = false;
                    clickTimer = 0;
                    currentSpeed = walkSpeed;
                }
            }

            //Check for spacebar to open PlayerCommand Menu
            if (Input.GetKeyDown(KeyCode.Space) && playerCommandsMenu.enabled == false)
            {
                // enable player commands 
                playerCommandsMenu.enabled = true;
            }

            //Input map for Mousewheel scroll to change seeds
            //if scroll up 
            if (Input.GetAxis("Mouse ScrollWheel") > 0 && seedLine.Count > 1)
            {
                GameObject seedToMove = seedLine[0];
                seedLine.Remove(seedToMove);
                seedLine.Insert(seedLine.Count, seedToMove);

            }
            //if scroll down 
            else if (Input.GetAxis("Mouse ScrollWheel") < 0 && seedLine.Count > 1)
            {
                GameObject seedToMove = seedLine[seedLine.Count - 1];
                int index = seedLine.Count - 1;
                // move all seed positions backward in line 
                seedLine.RemoveAt(index);
                seedLine.Insert(0, seedToMove);

            }

            //Check if we are moving and transition animation controller
            if (isMoving)
            {
                MovePlayer();
                blubAnimator.SetBool("idle", false);
                blubAnimator.SetBool("dancing", false);
                blubAnimator.SetBool("touchingPlant", false);

                headTurnTimer = 0;

                footStepTimer += Time.deltaTime;
                
                if (currentSpeed > 12)
                {
                    //play footstep sound
                    if (footStepTimer > runStepTotal)
                    {
                        playerSource.PlayOneShot(footsteps[currentStep]);
                        //increment footstep audio
                        if (currentStep < (footsteps.Length - 1))
                        {
                            currentStep+= Random.Range(0, (footsteps.Length - currentStep));
                        }
                        else
                        {
                            currentStep = 0;
                        }
                        footStepTimer = 0;
                    }
                    //animate ui
                    walkingPointer.SetActive(false);
                    symbolAnimator.active = true;
                    blubAnimator.SetBool("running", true);
                    blubAnimator.SetBool("walking", false);
                }
                else
                {
                    //play footstep sound
                    if (footStepTimer > walkStepTotal)
                    {
                        playerSource.PlayOneShot(footsteps[currentStep]);
                        //increment footstep audio
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
                    blubAnimator.SetBool("walking", true);
                    blubAnimator.SetBool("running", false);
                }

              
            }
            //this timer only plays the idle animation if we are not moving. still a little buggy
            else
            {
                footStepTimer = 0;
                walkingPointer.SetActive(false);
                blubAnimator.SetBool("walking", false);
                blubAnimator.SetBool("running", false);

                headTurnTimer += Time.deltaTime;
                if (headTurnTimer > 3.5f && !blubAnimator.GetBool("touchingPlant"))
                {
                    blubAnimator.SetBool("idle", false);
                    blubAnimator.SetBool("dancing", true);
                }
                else
                {
                    blubAnimator.SetBool("idle", true);
                }
            }

            //if mouse has moved, refill list & reevaluate priorities
            if (lastPosition != transform.position)
            {
                ResetNearbyAudioSources();
            }

            lastPosition = transform.position;
        }
    }
   
    //Movement function which relies on vector3 movetowards. when we arrive at target, stop moving.
    void MovePlayer()
    {
        //first calculate rotation and look
        float currentDist = Vector3.Distance(transform.position, targetPosition);

        //this is a bit finnicky with char controller so may need to continuously set it 
        if (currentDist >= 0.3f)
        {
            transform.LookAt(targetPosition);

            //then set movement
            Vector3 movement = new Vector3(0, 0, currentSpeed);

            movement = transform.rotation * movement;

            //Actually move
            player.Move(movement * Time.deltaTime);

            player.Move(new Vector3(0, -0.5f, 0));
        }
        else
        {
            isMoving = false;
        }

       
    }

    //this function shifts all audio source priorities dynamically
    void ResetNearbyAudioSources()
    {
        //empty dictionary
        soundCreators.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, listeningRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            //check to see if obj is plant or rock
            if (hitColliders[i].gameObject.tag == "Plant" || hitColliders[i].gameObject.tag == "Rock")
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                //add to audiosource and distance to dictionary
                soundCreators.Add(hitColliders[i].gameObject.GetComponent<AudioSource>(), distanceAway);


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
}
