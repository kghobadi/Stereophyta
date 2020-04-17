﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;
using Cameras;

public class CircleMillControls : MonoBehaviour {
    //player ref
    GameObject player;
    ThirdPersonController tpc;
    CameraManager camManager;

    //camera refs
    [Header("Camera Refs")]
    public PlayerCameraController camControl;
    public GameCamera operatingCamera;
    public GameCamera lastCamera;

    //is the player currently operating the mill controls?
    [Header("Operating Vars")]
    public bool playerOperating;
    public bool playerWasNear;
    private float timeUntilLeaving;
    //is the mill currently activated -- moving circle winds?
    public Vector3 operatingPos, exitPos;
    public GameObject operatingMenu;
    public GameObject cursor;
    //direction lever boolean (starts as 'positive')
    public Button changeDirection;
    public bool dirClockwise = true;

    //windTurbine and its rotation speed, lever objects 
    public GameObject windTurbine;
    public float rotationSpeed;

    //the transform parent of this object
    Transform circleMill;

    //actual wind which rotates around mill
    [Header("Wind Refs")]
    public Transform circleWindParent;
    public Slider windCountSlider;
    public Image windHandle;
    public int windCount = 0;
    public CircleWind[] allCircleWinds, currentCircleWinds, zeroCircleWinds, singleCircleWind,
        doubleCircleWind, tripleCircleWind, quadCircleWind;
    public float windSpeedMin;

    //rhythm vars
    [Header("Rhythm Vars")]
    public Slider rhythmSlider;
    public Image rhythmHandle;
    public int rhythmState;
    public float rhythmInterval, windRadius;
    TempoIndication tempoIndicator;

    //lowering sound
    AudioSource controlsAudio;
    [Header("Audio")]
    public AudioClip[] selectionSounds;
    public AudioClip beginOperating, gearTurn1, gearTurn2;

    //ui refs for pickup prompt
    [Header("Interact Prompts")]
    public float interactDist;
    public string useMessage, leaveMessage;
    InteractPrompt interactPrompt;

    void Awake()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        interactPrompt = tpc.myInventory.GetComponent<InteractPrompt>();
        camManager = FindObjectOfType<CameraManager>();
        //audio
        controlsAudio = GetComponent<AudioSource>();
        tempoIndicator = GetComponent<TempoIndication>();
    }

    void Start()
    {
        //mill refs
        circleMill = transform.parent;
        operatingPos = transform.position + new Vector3(-1f, 1f, 0);
        exitPos = transform.position + new Vector3(-2f, 1f, 0);

        //add circle winds to the list
        currentCircleWinds = singleCircleWind;
        for (int i = 0; i < allCircleWinds.Length; i++)
        {
            allCircleWinds[i].DeactivateWind();
        }

        operatingMenu.SetActive(false);

        //set rhythm states
        SwitchRhythm();
        //set winds
        SetCurrentCircleWinds();
    }

    void Update()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //just for interact logic 
        if (!playerOperating)
        {
            //dist from player
            float dist = Vector3.Distance(transform.position, player.transform.position);
            //if player is close
            if (dist < interactDist)
            {
                playerWasNear = true;

                //fade in those prompts
                if (interactPrompt.pickUpText.color.a < 0.5f)
                {
                    interactPrompt.pickUpMessage = useMessage;
                    interactPrompt.ShowPickupPrompt();
                }

                //pick up when player presses E
                if ((Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed) && !tpc.menuOpen)
                {
                    OperateControls();
                }
            }
            //player has left
            else if (dist > (interactDist + 1))
            {
                //fade out prompts
                if (playerWasNear)
                {
                    interactPrompt.DeactivatePrompt();
                    playerWasNear = false;
                }
            }
        }
        //player operating
        else
        {
            timeUntilLeaving += Time.deltaTime;

            if(timeUntilLeaving > 0.5f)
            {
                //pick up when player presses E
                if ((Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed) && !tpc.menuOpen)
                {
                    LeaveControls();
                }
            }
        }

        //rotates the wind turbine
        windTurbine.transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }

    //called when player begins operating
    void OperateControls()
    {
        playerOperating = true;
        tpc.playerCanMove = false;
        tpc.transform.position = operatingPos;
        tpc.myInventory.FadeOut();
        tpc.myInventory.gameObject.SetActive(false);
        tpc.playerSource.PlayOneShot(beginOperating);
        timeUntilLeaving = 0;

        //transition camera
        lastCamera = camManager.currentCamera;
        camManager.Set(operatingCamera);

        //play sound if not already playing anything
        if (!controlsAudio.isPlaying)
        {
            controlsAudio.PlayOneShot(beginOperating);
        }
      
        //menu on
        operatingMenu.SetActive(true);
        //cursor on
        Cursor.lockState = CursorLockMode.None;
        cursor.SetActive(true);

        //show interact leave prompt 
        interactPrompt.pickUpMessage = leaveMessage;
        interactPrompt.ShowPickupPrompt();
    }

    //called when player stops operating
    void LeaveControls()
    {
        playerOperating = false;
        tpc.playerCanMove = true;
        tpc.transform.position = exitPos;
        tpc.myInventory.gameObject.SetActive(true);

        //transition camera
        camManager.Set(lastCamera);

        //menu off
        operatingMenu.SetActive(false);
        //cursor off
        Cursor.lockState = CursorLockMode.Locked;
        cursor.SetActive(false);

        interactPrompt.DeactivatePrompt();
    }
    
    //Switch Wind Direction
    public void ChangeDirections()
    {
        //loop thru circle winds to set neg wind speed
        for (int i = 0; i < allCircleWinds.Length; i++)
        {
            allCircleWinds[i].windSpeed *= -1;
        }

        rotationSpeed *= -1;

        //plays dif sound and moves lever correctly
        if (dirClockwise)
        {
            controlsAudio.PlayOneShot(gearTurn1, 1f);
            dirClockwise = false;
        }
        //counter clockwise
        else
        {
            controlsAudio.PlayOneShot(gearTurn2, 1f);
            dirClockwise = true;
        }
    }

    //called when the player moves the rhythm switch UI
    public void SwitchRhythm()
    {
        //set rhythm state & rhythm indicator
        rhythmState = (int)rhythmSlider.value;
        controlsAudio.PlayOneShot(selectionSounds[rhythmState], 1f);
        
        //loop thru wind circles and set new speeds
        for (int i = 0; i < allCircleWinds.Length; i++)
        {
            //set to min
            if(rhythmState == 0)
            {
                allCircleWinds[i].windSpeed = windSpeedMin;
            }
            //multiply by interval
            else
            {
                allCircleWinds[i].windSpeed = windSpeedMin + (rhythmState * rhythmInterval);
            }
        }

        //set rotation speed
        if(rhythmState == 0)
        {
            rotationSpeed = 25f;
        }
        else
        {
            rotationSpeed = 25f * (2 * rhythmState);
        }

        //keep them counter-clockwise if so -- negative!
        if (!dirClockwise)
        {
            //loop thru circle winds to set neg wind speed
            for (int i = 0; i < allCircleWinds.Length; i++)
            {
                allCircleWinds[i].windSpeed *= -1;
            }

            rotationSpeed *= -1;
        }
    }

    public void SetCurrentCircleWinds()
    {
        //deactivate current circle winds
        if(currentCircleWinds.Length > 0)
        {
            for (int i = 0; i < currentCircleWinds.Length; i++)
            {
                currentCircleWinds[i].DeactivateWind();
            }
        }
        //set windCount
        windCount = (int)windCountSlider.value;

        //set new circle winds
        switch (windCount)
        {
            case 0:
                currentCircleWinds = zeroCircleWinds;
                break;
            case 1:
                currentCircleWinds = singleCircleWind;
                break;
            case 2:
                currentCircleWinds = doubleCircleWind;
                break;
            case 3:
                currentCircleWinds = tripleCircleWind;
                break;
            case 4:
                currentCircleWinds = quadCircleWind;
                break;
        }

        //play sound corresponding to number 
        controlsAudio.PlayOneShot(selectionSounds[windCount], 1f);

        //if we aren't at 0
        if (currentCircleWinds.Length > 0)
        {
            //activate new winds
            for(int i = 0; i < currentCircleWinds.Length; i++)
            {
                currentCircleWinds[i].ActivateWind();
            }
        }
    }
    
}
