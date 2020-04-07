using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;
using Cameras;

public class StartView : MonoBehaviour {
    //sun ref
    Sun sunScript;
    CameraManager camManager;
    Camera mainCam;
    //player vars
    GameObject player;
    ThirdPersonController tpc;
    AudioListener startListener;
    AudioListener pListener;

    [Header("Cameras")]
    public bool startView;
    public bool active;
    GameCamera startCamera;
    public GameCamera playerCamera;
    public GameObject playerInventory;
    public AudioSource introMusic;
    
    //for now, this will be the windmill
    [Header("Values for rotation & movement")]
    public Transform rotationPoint;
    public float rotationSpeed;

    //UI stuff 
    [Header("UI refs")]
    public GameObject startMenuUI;
    public GameObject clickToStart;
    public FadeUI[] menuFades;
    public FadeUI[] toolsNSeeds;

    void Awake()
    {
        //sun & cam Manager refs
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        camManager = FindObjectOfType<CameraManager>();
        mainCam = Camera.main;
       
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        startCamera = GetComponent<GameCamera>();

        //listeners
        startListener = mainCam.GetComponent<AudioListener>();
        pListener = player.GetComponent<AudioListener>();

        //overwrite default cam (resets when player starts)
        if (startView)
        {
            camManager.defaultCamera = startCamera;
        }
    }

    void Start()
    {
        //only runs if true -- turn off stuff at start 
        if (startView)
        {
            camManager.Set(startCamera);

            //disable playerCam
            playerInventory.SetActive(false);
            clickToStart.SetActive(true);
            tpc.playerCanMove = false;

            //fade out any lingering tools n seeds menus 
            for (int i = 0; i < toolsNSeeds.Length; i++)
            {
                toolsNSeeds[i].FadeOut();
            }

            //fade in menu UI
            for (int i = 0; i < menuFades.Length; i++)
            {
                menuFades[i].FadeIn();
            }

            SetAudioListener(false);

            active = true;
        }
        //not start view 
        else
        {
            camManager.Set(playerCamera);
            clickToStart.SetActive(false);
            startMenuUI.SetActive(false);

            SetAudioListener(true);

            active = false;
        }
    }
	
	void Update ()
    {
        if (active)
        {
            //get input device 
            var inputDevice = InputManager.ActiveDevice;

            //rotates camera around windmill
            transform.RotateAround(rotationPoint.position, Vector3.up, rotationSpeed * Time.deltaTime);

            //check for spacebar input
            if (Input.GetMouseButtonDown(0) || inputDevice.Action1 || inputDevice.Action2 || inputDevice.Action3 || inputDevice.Action4)
            {
                EndStartView();
            }
        }
	}

    //disable start view stuff
    void EndStartView()
    {
        active = false;
       
        tpc.playerCanMove = true;
        playerInventory.SetActive(true);
        sunScript.rotationSpeed = sunScript.normalRotation;
        clickToStart.SetActive(false);
        SetAudioListener(true);

        //fade out menu UI
        for (int i = 0; i < menuFades.Length; i++)
        {
            menuFades[i].FadeOut();
        }
        
        //check if this is the last zone --> set as starting zone 
        if (PlayerPrefs.HasKey("lastZone") == false)
        {
            //check session # to decide whether to play this 
            introMusic.Play();
        }

        //camera transition
        camManager.Set(playerCamera);
        camManager.defaultCamera = playerCamera;
    }

    //true for player listener, false for start listener
    void SetAudioListener(bool playerOrStart)
    {
        if (playerOrStart)
        {
            pListener.enabled = true;
            startListener.enabled = false;
        }
        else
        {
            pListener.enabled = false;
            startListener.enabled = true;
        }
    }
}
