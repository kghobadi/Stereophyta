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

    //set when player is inBoat
    public bool inBoat; 

    //Camera ref variables
    AudioSource cameraAudSource;
    PlayerCameraController camControl;

    //vars for footstep audio
    public AudioSource playerSource;
    public AudioClip[] paddles;
    int currentPaddle = 0;

    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask boatMask;
    
    //store this mouse pos
    Vector3 lastPosition;
    
    public Rigidbody boatBody;
    public float boatSpeedX, boatSpeedZ;
    float paddleIdleTimer, holdPaddle = 1f;
    
    public bool boatVariablesSet, boatRotating;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        //walking UI
        playerSource = GetComponent<AudioSource>();

        //cam refs
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<PlayerCameraController>();

        //turn off walking sprites at start
        //ChangeAnimState(idle);
    }

    void OnEnable()
    {
        
    }

    void Update()
    {
        //what happens when the player is in the boat?
        if (!boatVariablesSet)
        {
            tpc.transform.SetParent(transform);
            transform.localPosition = new Vector3(0, 0, -1);
            boatBody.isKinematic = false;
            camControl.inBoat = true;
            boatVariablesSet = true;
        }

        paddleIdleTimer += Time.deltaTime;

        if (paddleIdleTimer > holdPaddle)
        {
            //ChangeAnimState(boatIdle);
        }

        Debug.Log(boatBody.velocity);

        //click to move to point
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            //raycast info
            if (Physics.Raycast(ray, out hit, 100, boatMask))
            {
                if (hit.transform.gameObject.tag == "Water")
                {
                    //directions to move in the water

                    //forward right paddle
                    if (hit.point.x > transform.position.x && hit.point.z > transform.position.z)
                    {
                        Vector3 force = new Vector3(-boatSpeedX, 0, boatSpeedZ);
                        Vector3 position = hit.point;
                        boatBody.AddForceAtPosition(force, position);
                        paddleIdleTimer = 0;
                        //ChangeAnimState(paddleRightFwd);
                    }

                    //forward left paddle
                    else if (hit.point.x < transform.position.x && hit.point.z > transform.position.z)
                    {
                        Vector3 force = new Vector3(boatSpeedX, 0, boatSpeedZ);
                        Vector3 position = hit.point;
                        boatBody.AddForceAtPosition(force, position);
                        paddleIdleTimer = 0;
                        //ChangeAnimState(paddleLeftFwd);
                    }

                    //backward right paddle
                    else if (hit.point.x > transform.position.x && hit.point.z < transform.position.z)
                    {
                        Vector3 force = new Vector3(-boatSpeedX, 0, -boatSpeedZ);
                        Vector3 position = hit.point;
                        boatBody.AddForceAtPosition(force, position);
                        paddleIdleTimer = 0;
                        //ChangeAnimState(paddleRightBkwd);
                    }

                    //backward left paddle
                    else if (hit.point.x < transform.position.x && hit.point.z < transform.position.z)
                    {
                        Vector3 force = new Vector3(boatSpeedX, 0, -boatSpeedZ);
                        Vector3 position = hit.point;
                        boatBody.AddForceAtPosition(force, position);
                        paddleIdleTimer = 0;
                        //ChangeAnimState(paddleLeftBkwd);
                    }

                    //play a paddle sound effect
                    //if (!playerSource.isPlaying)
                    //{
                    //count through paddle sound array
                    if (currentPaddle < paddles.Length)
                    {
                        currentPaddle++;
                    }
                    else
                    {
                        currentPaddle = 0;
                    }

                    //play one shot of current sound
                    playerSource.PlayOneShot(paddles[currentPaddle]);
                    //}
                }

                //when in boat next to ground, exit boat
                else if (hit.transform.gameObject.tag == "Ground" && Vector3.Distance(transform.position, hit.point) < 10 && paddleIdleTimer > 1)
                {
                    inBoat = false;
                    transform.position = new Vector3(hit.point.x, hit.point.y + 1.5f, hit.point.z);
                    boatBody.isKinematic = true;
                    //ChangeAnimState(idle);
                }
            }
        }
    }
   
  
    //public void ChangeAnimState (GameObject desiredAnim)
    //{
    //    if(desiredAnim != currentAnimation)
    //    {
    //        //set active this anim
    //        desiredAnim.SetActive(true);
    //        currentAnimation = desiredAnim;
    //    }
    //}
    
}
