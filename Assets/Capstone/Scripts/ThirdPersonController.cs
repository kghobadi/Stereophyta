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
    private bool isMoving; // for point to click
    Vector3 origPosition;

    CameraController camControl;
    
    GameObject terrain;

    public LayerMask mask;

    public bool isHoldingSomething;

    Animator blubAnimator;

    public List<GameObject> followers = new List<GameObject>();
    public List<float> followerDistances = new List<float>();
    public int followerCountMax;

    public List<GameObject> seedLine = new List<GameObject>();
    public int seedMax;

    public AudioMixerSnapshot currentAudioMix;
    public AudioMixerGroup plantingGroup;

    public float startingHeight, runTime;
    
    public float throwStrength, throwMin, throwMax, throwStrengthMultiplier, gravity;

    float clickTimer;

    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();
        origPosition = transform.position;
        terrain = GameObject.FindGameObjectWithTag("Ground");

        targetPosition = transform.position;
        blubAnimator = GetComponentInChildren<Animator>();
        blubAnimator.SetBool("walking", false);
        startingHeight = transform.position.y;

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
                currentSpeed += Time.deltaTime * 3;
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
                else if (Vector3.Distance(transform.position, hit.point) > 5 && 
                    (hit.transform.gameObject.tag == "WindGen" || hit.transform.gameObject.tag == "Plant" 
                    || hit.transform.gameObject.tag == "Seed" || hit.transform.gameObject.tag == "WindMachines"
                    || hit.transform.gameObject.tag == "NPC")) 
                    // use if statement for interactable stuff which the player should auto walk towards
                {
                    targetPosition = new Vector3(hit.point.x + 2, transform.position.y, hit.point.z + 2);
                    Debug.Log(targetPosition);
                    if (targetPosition.y < (startingHeight + 3) && targetPosition.y > (startingHeight - 3))
                    {
                        isMoving = true;
                    }
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
            blubAnimator.SetBool("walking", true);
            //if(clickTimer < runTime)
            // blubAnimator.SetBool("walking", true);
            //else{
            // blubAnimator.SetBool("running", true); 
            //could tie running animation speed to speed var
        }
        else
        {
            blubAnimator.SetBool("walking", false); // idle animation
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


}
