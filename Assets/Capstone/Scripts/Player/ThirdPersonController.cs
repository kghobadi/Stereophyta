using System.Collections;
using System.Collections.Generic;
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

    //Camera ref variables
    AudioSource cameraAudSource;
    CameraController camControl;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;

    //control player actions with interactable objects
    public bool isHoldingSomething, canUseSeed;
 
    //Lists for follower line and seed line
    public List<GameObject> followers = new List<GameObject>();
    public List<float> followerDistances = new List<float>();
    public int followerCountMax;

    public List<GameObject> seedLine = new List<GameObject>();

    //Store the current audio mixer info so when you plant stuff and drop off followers, they adjust to where player is on map
    public AudioMixerSnapshot currentAudioMix;
    public AudioMixerGroup plantingGroup;

    //Player command menu refs
    public Image playerCommandsMenu;

    void Start()
    {
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
        //this is used in fruitSeedNoInv to let seed know whether player has a seed already
        if(seedLine.Count == 0)
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
            if(clickTimer > runTime && currentSpeed < runSpeedMax)
            {
                currentSpeed += Time.deltaTime * 5;
            }

            if (Physics.Raycast(ray, out hit, 100, mask))
            {
                //if we hit the ground & height is in range, move the character to that position
                if (hit.transform.gameObject.tag == "Ground")
                {
                    targetPosition = hit.point + new Vector3(0, 1, 0);
                    if (targetPosition.y < (startingHeight + 3) && targetPosition.y > (startingHeight - 3))
                    {
                        isMoving = true;
                    }
                }

                //if we hit an interactable object AND we are far from it, the player should auto walk towards it
                else if (Vector3.Distance(transform.position, hit.transform.position) > 5 &&
                    (hit.transform.gameObject.tag == "WindGen" || hit.transform.gameObject.tag == "Plant"
                    || hit.transform.gameObject.tag == "Seed" || hit.transform.gameObject.tag == "WindMachines"
                    || hit.transform.gameObject.tag == "Rock"))
                {
                        targetPosition = new Vector3(hit.point.x + 2, transform.position.y, hit.point.z + 2);
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
            if(clickTimer < runTime)
            {
                isMoving = true;
                clickTimer = 0;
                currentSpeed = walkSpeed;
            }
            else
            {
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

        //Check if we are moving and transition animation controller
        if (isMoving && targetPosition.y < (startingHeight + 3) && targetPosition.y > (startingHeight-3))
        {
            MovePlayer();
            blubAnimator.SetBool("idle", false);
            headTurnTimer = 0;

            blubAnimator.SetBool("touchingPlant", false);
            if (currentSpeed > 12)
            {
                blubAnimator.SetBool("running", true);
                blubAnimator.SetBool("walking", false);
            }
            else
            {
                blubAnimator.SetBool("walking", true);
                blubAnimator.SetBool("running", false);
            }
        }
        //this timer only plays the idle animation if we are not moving. still a little buggy
        else
        {
            if(headTurnTimer < 5)
            {
                blubAnimator.SetBool("idle", true);
                blubAnimator.SetBool("walking", false);
                blubAnimator.SetBool("running", false);
            }
            headTurnTimer += Time.deltaTime;
            if (headTurnTimer > 3.5f && !blubAnimator.GetBool("touchingPlant"))
            {
                if (!hasTurnedHead)
                    StartCoroutine(Idle(1f));
            }
        }
    }
   
    //Movement function which relies on vector3 movetowards. when we arrive at target, stop moving.
    void MovePlayer()
    {
        transform.LookAt(targetPosition);
        transform.position = Vector3.MoveTowards(transform.position, targetPosition, currentSpeed * Time.deltaTime);
        
        if (Vector3.Distance(transform.position, targetPosition) < 0.01f)
        {
            transform.position = targetPosition;
            isMoving = false;
        }
    }

    //this waits for the idle animation to finish and resets the timers
    IEnumerator Idle(float time)
    {
        hasTurnedHead = true;
        blubAnimator.SetBool("idle", false);
        blubAnimator.Play("HeadTurn", 0);
        yield return new WaitForSeconds(time);
        headTurnTimer = 0;
        hasTurnedHead = false;
        blubAnimator.SetBool("idle", true);
    }
}
