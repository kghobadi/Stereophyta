using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class ThirdPersonController : MonoBehaviour
{
    public float currentSpeed, walkSpeed, runSpeedMax;
    public float scrollSpeed = 2.0f;
    CharacterController player;

    Vector3 movement;

    AudioSource cameraAudSource;

    private Vector3 targetPosition;
    public bool isMoving; // for point to click
    Vector3 origPosition;

    CameraController camControl;
    
    GameObject terrain;

    public LayerMask mask;

    public bool isHoldingSomething, canUseSeed;

    public Animator blubAnimator;

    public List<GameObject> followers = new List<GameObject>();
    public List<float> followerDistances = new List<float>();
    public int followerCountMax;

    public List<GameObject> seedLine = new List<GameObject>();
    //public int seedMax;

    public AudioMixerSnapshot currentAudioMix;
    public AudioMixerGroup plantingGroup;

    public float startingHeight, runTime;
    
    public float throwStrength, throwMin, throwMax, throwStrengthMultiplier, gravity;

    float clickTimer, headTurnTimer;
    bool hasTurnedHead;

    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();
        origPosition = transform.position;
        terrain = GameObject.FindGameObjectWithTag("Ground");

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
                if (hit.transform.gameObject.tag == "Ground")
                {
                    targetPosition = hit.point + new Vector3(0, 1, 0);
                    //Debug.Log(targetPosition);
                    if (targetPosition.y < (startingHeight + 3) && targetPosition.y > (startingHeight - 3))
                    {
                        isMoving = true;
                    }
                }
                else if (Vector3.Distance(transform.position, hit.transform.position) > 10 &&
                    (hit.transform.gameObject.tag == "WindGen" || hit.transform.gameObject.tag == "Plant"
                    || hit.transform.gameObject.tag == "Seed" || hit.transform.gameObject.tag == "WindMachines"
                    || hit.transform.gameObject.tag == "Rock"))
                    //use if statement for interactable stuff which the player should auto walk towards
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
                    StartCoroutine(Wait(1f));
                //Debug.Log(headTurnTimer);
            }
        }
    }
   
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

    IEnumerator Wait(float time)
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
