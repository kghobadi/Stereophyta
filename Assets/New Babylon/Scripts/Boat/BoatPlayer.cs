using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using InControl;

public class BoatPlayer : MonoBehaviour
{
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    //Camera ref variables
    AudioSource cameraAudSource;
    PlayerCameraController camControl;

    Vector3 origDockPos;
    //vars for footstep audio
    [HideInInspector]
    public AudioSource boatSource;
    [Header("Audio")]
    public AudioClip[] paddles;
    public AudioClip[] bigPaddles;
    int currentPaddle = 0, currentBigPaddle = 0;
  
    //only true once player has clicked on waters
    //mouse pos variables for calculating paddle forces
    Vector3 characterPosOnSreen;
    Vector3 origMousePos, currentMousePos, lastMousePos, finalMousePos;
    [Header("Boat States")]
    public BoatStates boatState;
    public enum BoatStates
    {
        IDLE, CHECKINGPADDLE, ANIMATINGROW, TURNINGBOAT, 
    }
    public float angleInDegrees;
    //min z force for big paddle sound
    public float bigPaddleMin;
    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask boatMask;

    //physics vars 
    [HideInInspector]
    public BoxCollider boatCol;
    [HideInInspector]
    public Rigidbody boatBody;
    [Header("Physics Vars")]
    public float boatSpeedX;
    public float boatSpeedZ;
    public float paddleForceX, paddleForceZ;
    public float waterResistanceFwd, waterResistanceAng;
    //turning & torque force
    [Header("Turning Physics")]
    public float division;
    public float indForce, indTorque;
    public int torqueApplier = 0;
   
    [Header("Animation & FX")]
    public Animator oarAnimator;
    //extra fx
    public Transform oarHead;
    public OarTrail[] oarTrails;
    public ParticleSystem[] splashParticles;
    int fxCounter = 0;
    float paddleIdleTimer, holdPaddle = 1f;

    UseBoat useBoatScript;
    Vector3 origRotation;
    [Header ("Entering & Exiting")]
    public bool inBoat;  //set when player is inBoat
    public float exitSphereRadius = 3f;
    public float dockDistance = 15f;
    public Vector3 exitSpot;
    public FadeUI[] dockprompts;  //dock boat prompt

    void Awake()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //audio
        boatSource = GetComponent<AudioSource>();

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<PlayerCameraController>();

        //ref to pickup script
        useBoatScript = GetComponent<UseBoat>();
        boatBody = GetComponent<Rigidbody>();
        boatCol = GetComponent<BoxCollider>();
    }

    void Start()
    {
        //set body & start angle
        boatBody.isKinematic = false;
        boatCol.enabled = false;
        origRotation = transform.localEulerAngles;
        origDockPos = transform.position;

        //starting state is idle 
        boatState = BoatStates.IDLE;
    }

    //called when player sleeps in bed 
    public void ResetDockPos()
    {
        transform.position = origDockPos;
        transform.localEulerAngles = origRotation;
    }

    void Update()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //only run this update code if the player is in the boat
        if (inBoat)
        {
            //if player anim not idle
            if(tpc.samita.GetNextAnimatorStateInfo(0).IsName("idle") != true)
            {
                tpc.SetAnimator("idle");
            }

            //for checking angle
            Vector3 forward = transform.forward;
            angleInDegrees = Mathf.Atan2(forward.y, forward.x) * Mathf.Rad2Deg;

            //get the current mouse pos
            currentMousePos = Input.mousePosition;
            characterPosOnSreen = Camera.main.WorldToScreenPoint(tpc.transform.position);

            //so we can't immediately exit boat
            paddleIdleTimer += Time.deltaTime;
            
            //click to move to point
            if (Input.GetMouseButtonDown(0) && boatState == BoatStates.IDLE)
            {
                //use raycast from cam to screen point
                origMousePos = currentMousePos;
                boatState = BoatStates.CHECKINGPADDLE;
            }

            //apply slow down to boat
            if(boatState == BoatStates.IDLE)
            {
                boatBody.velocity = Vector3.Lerp(boatBody.velocity, Vector3.zero, waterResistanceFwd * Time.deltaTime);
                boatBody.angularVelocity = Vector3.Lerp(boatBody.angularVelocity, Vector3.zero, waterResistanceAng * Time.deltaTime);
            }

            //mouse button is being released
            if (Input.GetMouseButtonUp(0) && boatState == BoatStates.CHECKINGPADDLE)
            {
                CalcPaddleForce();
            }
            
            //if raycaster hits the ground nearby, can press E to exit boat
            if (GroundCheck())
            {
                //force == boat pos - exitspot 
                Vector3 heading = transform.position - exitSpot;
                
                float distance = heading.magnitude;

                Vector3 direction = heading / distance;
               

                //push boat away from land
                if (distance < dockDistance)
                {
                    boatBody.AddForce(-direction * boatSpeedZ);
                    //Debug.Log("heading = " + heading);
                    //Debug.Log("direction = " + direction);
                }
                
                //exit boat 
                if ((Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed) && paddleIdleTimer > 0.5f)
                {
                    useBoatScript.ExitBoat(exitSpot);
                    paddleIdleTimer = 0;
                    //set to idle 
                    boatState = BoatStates.IDLE;
                }
            }

            //set last mouse pos to current 
            lastMousePos = currentMousePos;
        }
    }

    // now that we have our inputs, we need to 
    //Calculate Physical Forces
    void CalcPaddleForce()
    {
        //stop checking paddle and set final mouse pos
        finalMousePos = currentMousePos;
        boatState = BoatStates.ANIMATINGROW;
        //how far did the player drag mouse on input Y? could be either pos or neg
        float paddleDistY =  origMousePos.y - finalMousePos.y;
        //calc z force based on this ^
        paddleForceZ = paddleDistY * boatSpeedZ;

        //how far on the x?
        float paddleDistX = finalMousePos.x - origMousePos.x ;
        //calc x force 
        paddleForceX = (Mathf.Abs(paddleDistY) * boatSpeedX ) + (Mathf.Abs(paddleDistX) * boatSpeedX);

        //RIGHT SIDE 
        if(origMousePos.x > characterPosOnSreen.x)
        {
            //row was forward
            if (paddleForceZ > 0)
            {
                paddleForceX *= -1;
                oarAnimator.SetBool("rightOrLeft", true);
                oarAnimator.SetTrigger("rowRightF2B");
            }
            //row was backward
            else if (paddleForceZ < 0)
            {
                oarAnimator.SetBool("rightOrLeft", true);
                oarAnimator.SetTrigger("rowRightB2F");
            }
        }
        
        //LEFT SIDE 
        if(origMousePos.x < characterPosOnSreen.x)
        {
            //row was forward
            if (paddleForceZ > 0)
            {
                oarAnimator.SetBool("rightOrLeft", false);
                oarAnimator.SetTrigger("rowLeftF2B");
            }
            //row was backward
            else if (paddleForceZ < 0)
            {
                paddleForceX *= -1;
                oarAnimator.SetBool("rightOrLeft", false);
                oarAnimator.SetTrigger("rowLeftB2F");
            }
        }
      

        //so we don't play the fx for a measly click
        if(paddleForceZ > 250f)
        {
            StartPaddleFX();
        }

        StartCoroutine(WaitToApplyForce());
    }

    //wait for anim to play then apply forces
    IEnumerator WaitToApplyForce()
    {
        yield return new WaitForSeconds(0.8f);
       
        //z forward force applied with AddForce (0, 0, zForce);
        indForce = paddleForceZ / division;
        //x force applied with AddTorqur(0, xTorque, 0) 
        indTorque = paddleForceX / division;
        //reset torqueApplier & set turning boat 
        torqueApplier = 0;
     
        //decide which paddle sound
        if (Mathf.Abs(paddleForceZ) > bigPaddleMin)
        {
            PlayBigPaddleSound();
        }
        //normal paddle
        else
        {
            PlayPaddleSound();
        }

        //start turning in fixedUpdate
        boatState = BoatStates.TURNINGBOAT;
    }

    //this is where we actually apply the Forces
    void FixedUpdate()
    {
        //boat turns over time in the fixed update so it is not frame dependent
        if (boatState == BoatStates.TURNINGBOAT)
        {
            //add the force
            boatBody.AddRelativeForce(0, indForce, 0);
            //add the torque 
            boatBody.AddTorque(0, indTorque, 0);
            //count up 
            torqueApplier++;

            //split up force and find time val
            if (torqueApplier == division)
            {
                boatState = BoatStates.IDLE;
            }
        }
    }

    //grab trail & splash particles
    void StartPaddleFX()
    {
        //increment counter
        if(fxCounter < oarTrails.Length - 1)
        {
            fxCounter++;
        }
        else
        {
            fxCounter = 0;
        }

        //oar trail
        oarTrails[fxCounter].StartCoroutine(oarTrails[fxCounter].TrailOar());

        //splash particle
        splashParticles[fxCounter].transform.position = oarHead.position;
        ParticleSystem.MainModule splashMain = splashParticles[fxCounter].main;

        //set forward speed of particles as opposite of paddle force 
        if(paddleForceZ > 0)
        {
            splashMain.startSpeed = -5;
        }
        else
        {
            splashMain.startSpeed = 5;
        }

        splashParticles[fxCounter].Play();
        //move alongside oarhead
        splashParticles[fxCounter].GetComponent<PaddleSplashes>().StartCoroutine(splashParticles[fxCounter].GetComponent<PaddleSplashes>().Paddle());
    }
    
    //called every time we paddle
    void PlayPaddleSound()
    {
        //count through paddle sound array
        if (currentPaddle < paddles.Length - 1)
        {
            currentPaddle++;
        }
        else
        {
            currentPaddle = 0;
        }

        //play one shot of current sound
        boatSource.PlayOneShot(paddles[currentPaddle]);
    }

    //called every time we paddle
    void PlayBigPaddleSound()
    {
        //count through paddle sound array
        if (currentBigPaddle < bigPaddles.Length - 1)
        {
            currentBigPaddle++;
        }
        else
        {
            currentBigPaddle = 0;
        }

        //play one shot of current sound
        boatSource.PlayOneShot(bigPaddles[currentBigPaddle]);
    }


    //we want to see if we are on terrain that should make us slide downward
    //only gets called while Player is considered to be grounded
    //turn off boat's collision with ground
    //if boat is close to ground, should send equal and opposite force to push boat a little bit away from ground
    //direction decided by where we hit ground from with raycast
    bool GroundCheck()
    {
        //store hit and point
        RaycastHit hit;

        bool nearGround = false;

        for (int i = 0; i < 30; i++)
        {
            //raycast forward to see if we hit terrain 
            if (Physics.SphereCast(tpc.physicsRaycaster.transform.position, exitSphereRadius, tpc.physicsRaycaster.transform.forward, out hit, 15f, tpc.groundedCheck))
            {
                exitSpot = hit.point;

                nearGround = true;

            }

            //spin physics raycaster 1/30th of the way around y axis to shoot ray again
            tpc.physicsRaycaster.transform.Rotate(0, 12, 0);
            
        }

        //Debug.Log("boat near ground: " + nearGround);

        if (nearGround)
        {
            //fade in dock prompt
            for (int d = 0; d < dockprompts.Length; d++)
            {
                dockprompts[d].FadeIn();
            }
        }
        else
        {
            //fade out dock prompt
            for (int d = 0; d < dockprompts.Length; d++)
            {
                dockprompts[d].FadeOut();
            }
        }

        return nearGround;
    }
}
