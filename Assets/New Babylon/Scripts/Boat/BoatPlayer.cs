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
    
    //store this mouse pos
    Vector3 lastPosition;

    //physics vars 
    public CapsuleCollider boatCol;
    public Rigidbody boatBody;
    public float boatSpeedX, boatSpeedZ;
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
            paddleIdleTimer += Time.deltaTime;

            if (paddleIdleTimer > holdPaddle)
            {
                //ChangeAnimState(boatIdle);
            }

            Debug.Log(boatBody.velocity);

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
                        Paddle(hit);
                    }
                }
            }

            //if raycaster hits the ground nearby, can press E to exit boat
            if (GroundCheck())
            {
                if (Input.GetKeyDown(KeyCode.E) && paddleIdleTimer > 0.5f)
                {
                    useBoatScript.ExitBoat(exitSpot);
                }
            }
        }
    }

    void Paddle(RaycastHit hit)
    {
        //directions to move in the water

        //Calculate and monitor input

        //want to allow the player to paddle only while clicking on water,
        //so at least the raycast is still relevant
        //while holding the mouse button (left or right)
        //drag the mouse either down or up on the screen
        //to create a force going in the opposite direction
        //force will be dependent on the length of the row
        //need a forward force -- greater than the x the longer the row is
        //x force depending on whether your mouse Input X pos is to the left or right of boat
        //calculate row by taking the start mouse Input pos 
        //and the ending mouse input pos 
        //see which one's Y pos is greater
        //out put force values

        // now that we have our inputs, we need to 
        //Apply Physical Forces
        //z forward force applied with AddForce (0, 0, zForce);
        //x force applied with AddTorqur(0, xTorque, 0) 
        //will need to calculate the boats true angle like in waddle ski for finding proper Torque angles.


        PlayPaddleSound();
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
            if (Physics.Raycast(tpc.physicsRaycaster.transform.position, tpc.physicsRaycaster.transform.forward, out hit, 10f, tpc.groundedCheck))
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
