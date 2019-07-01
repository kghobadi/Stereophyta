using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class BoatPlayer : MonoBehaviour
{
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    //Camera ref variables
    AudioSource cameraAudSource;
    PlayerCameraController camControl;

    //set when player is inBoat
    public bool inBoat; 

    //vars for footstep audio
    public AudioSource boatSource;
    public AudioClip[] paddles;
    int currentPaddle = 0;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask boatMask;

    //only true once player has clicked on waters
    public bool checkingPaddle;
    //mouse pos variables for calculating paddle forces
    Vector3 characterPosOnSreen;
    Vector3 origMousePos, currentMousePos, lastMousePos, finalMousePos;
    public float angleInDegrees;

    //physics vars 
    public CapsuleCollider boatCol;
    public Rigidbody boatBody;
    public float boatSpeedX, boatSpeedZ;
    public float paddleForceX, paddleForceZ;
    public float waterResistanceFwd, waterResistanceAng;

    float paddleIdleTimer, holdPaddle = 1f;

    public Animator oarAnimator;

    UseBoat useBoatScript;

    public Vector3 exitSpot;

    void Start()
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
        boatBody.isKinematic = false;
        boatCol = GetComponent<CapsuleCollider>();
        boatCol.enabled = false;
        
    }

    void Update()
    {
        //only run this update code if the player is in the boat
        if (inBoat)
        {
            //for checking angle
            Vector3 forward = transform.forward;
            angleInDegrees = Mathf.Atan2(forward.y, forward.x) * Mathf.Rad2Deg;

            //get the current mouse pos
            currentMousePos = Input.mousePosition;
            characterPosOnSreen = Camera.main.WorldToScreenPoint(tpc.transform.position);

            paddleIdleTimer += Time.deltaTime;

            if (paddleIdleTimer > holdPaddle)
            {
                //ChangeAnimState(boatIdle);
            }

            //Debug.Log(boatBody.velocity);

            //click to move to point
            if (Input.GetMouseButtonDown(0))
            {
                //use raycast from cam to screen point
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                //raycast info
                if (Physics.Raycast(ray, out hit, 100, boatMask))
                {
                    if (hit.transform.gameObject.tag == "Water")
                    {
                        origMousePos = currentMousePos;
                        checkingPaddle = true;
                    }
                }
            }

            //called to adjust the oar in space while row is happening
            if (checkingPaddle)
            {
                AdjustOarAnim();
            }
            //apply slow down to boat
            else
            {
                boatBody.velocity = Vector3.Lerp(boatBody.velocity, Vector3.zero, waterResistanceFwd * Time.deltaTime);
                boatBody.angularVelocity = Vector3.Lerp(boatBody.angularVelocity, Vector3.zero, waterResistanceAng * Time.deltaTime);
            }

            //mouse button is being released
            if (Input.GetMouseButtonUp(0))
            {
                ApplyPaddleForce();
            }


            //For exiting boat
            //if raycaster hits the ground nearby, can press E to exit boat
            if (GroundCheck())
            {
                if (Input.GetKeyDown(KeyCode.E) && paddleIdleTimer > 0.5f)
                {
                    useBoatScript.ExitBoat(exitSpot);
                }
            }

            //set last mouse pos to current 
            lastMousePos = currentMousePos;
        }
    }

    //Calculate and monitor input while In Boat and only once player has clicked on water
    void AdjustOarAnim()
    {

    }

    // now that we have our inputs, we need to 
    //Apply Physical Forces
    void ApplyPaddleForce()
    {
        //stop checking paddle and set final mouse pos
        checkingPaddle = false;
        finalMousePos = currentMousePos;

        //how far did the player drag mouse on input Y? could be either pos or neg
        float paddleDistY =  origMousePos.y - finalMousePos.y;
        //calc z force based on this ^
        paddleForceZ = paddleDistY * boatSpeedZ;

        //how far on the x?
        float paddleDistX = finalMousePos.x - origMousePos.x ;
        //calc x force 
        paddleForceX = (Mathf.Abs(paddleDistY) * boatSpeedX ) + (Mathf.Abs(paddleDistX) * boatSpeedX);

        //check if the row was on left or right
        if(characterPosOnSreen.x < origMousePos.x)
        {
            //was left of player, so make x force negative
            paddleForceX *= -1;

            oarAnimator.SetBool("rightOrLeft", true);

            //right f 2 b
            if (paddleForceZ > 0)
            {
                oarAnimator.SetTrigger("rowRightF2B");
            }
            //right b 2 f
            else
            {
                oarAnimator.SetTrigger("rowRightB2F");
            }

        }
        //was right of player
        else
        {
            oarAnimator.SetBool("rightOrLeft", false);

            //left f 2 b
            if (paddleForceZ > 0)
            {
                oarAnimator.SetTrigger("rowLeftF2B");
            }
            //left b 2 f
            else
            {
                oarAnimator.SetTrigger("rowLeftB2F");
            }
        }

        StartCoroutine(WaitToApplyForce());
    }

    //wait for anim to play then apply forces
    IEnumerator WaitToApplyForce()
    {
        yield return new WaitForSeconds(0.8f);

        //z forward force applied with AddForce (0, 0, zForce);
        boatBody.AddRelativeForce(0, paddleForceZ, 0);
        //x force applied with AddTorqur(0, xTorque, 0) 
        StartCoroutine(AddTorqueOverTime(paddleForceX, 12));

        PlayPaddleSound();
    }

    //allows us to apply force over time
    IEnumerator AddTorqueOverTime(float totalForce, int division)
    {
        float indForce = totalForce / division;
        float time = 1f / division;

        for(int i = 0; i < division; i++)
        {
            boatBody.AddTorque(0, indForce, 0);
            yield return new WaitForSeconds(time);
        }
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


    //we want to see if we are on terrain that should make us slide downward
    //only gets called while Player is considered to be grounded
    bool GroundCheck()
    {
        //store hit and point
        RaycastHit hit;

        bool nearGround = false;

        for (int i = 0; i < 30; i++)
        {
            //raycast forward to see if we hit terrain 
            if (Physics.Raycast(tpc.physicsRaycaster.transform.position, tpc.physicsRaycaster.transform.forward, out hit, 15f, tpc.groundedCheck))
            {
                exitSpot = hit.point;

                nearGround = true;
            }

            //spin physics raycaster 1/30th of the way around y axis to shoot ray again
            tpc.physicsRaycaster.transform.Rotate(0, 12, 0);
        }

        Debug.Log("boat near ground: " + nearGround);

        return nearGround;
    }
}
