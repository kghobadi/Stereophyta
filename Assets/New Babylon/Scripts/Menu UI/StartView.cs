using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;

public class StartView : MonoBehaviour {
    //sun ref
    Sun sunScript;

    //player vars
    GameObject player;
    ThirdPersonController tpc;

    //this cam comp
    Camera startCam;

    //these start disabled
    [Header("Cameras")]
    public GameObject playerCamera;
    public GameObject houseCamera;
    public GameObject playerInventory;

    //set this to true to enable start menu
    public bool startView, lerpToPlayer;

    //for now, this will be the windmill
    [Header("Values for rotation & movement")]
    public Transform rotationPoint;
    //speed cam will rotate around island, lerp speed to player pos on click
    public float rotationSpeed, lerpSpeed;
    Quaternion targetLook;
    public float mSmoothLook = 5f;

    //UI stuff 
    [Header("UI refs")]
    public GameObject startMenuUI;
    public FadeUI[] menuFades;
    public GameObject clickToStart;
    public FadeUI[] toolsNSeeds;

	void Start () {
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        startCam = GetComponent<Camera>();

        //only runs if true -- turn off stuff at start 
        if (startView)
        {
            //disable playerCam
            playerCamera.GetComponent<Camera>().enabled = false;
            tpc.GetComponent<AudioListener>().enabled = false;
            playerInventory.SetActive(false);
            startCam.fieldOfView = 75f;
            clickToStart.SetActive(true);

            //fade out any lingering tools n seeds menus 
            for(int i = 0; i < toolsNSeeds.Length; i++)
            {
                toolsNSeeds[i].FadeOut();
            }

            //fade in menu UI
            for (int i = 0; i < menuFades.Length; i++)
            {
                menuFades[i].FadeIn();
            }
        }
        //not start view 
        else
        {
            //enable player cam & disable start cam 
            //GetComponent<AudioListener>().enabled = false;
            //startCam.enabled = false;
            //playerCamera.GetComponent<PlayerCameraController>().canLook = true;
            //tpc.GetComponent<AudioListener>().enabled = true;
        }
    }
	
	void Update () {
        if (startView)
        {
            //get input device 
            var inputDevice = InputManager.ActiveDevice;

            //rotates camera around windmill
            if (!lerpToPlayer)
            {
                //rotate around windmill
                transform.RotateAround(rotationPoint.position, Vector3.up, rotationSpeed * Time.deltaTime);
                //keep the house cam off 
                if (houseCamera.activeSelf)
                    houseCamera.SetActive(false);
            }

            //check for spacebar input
            if (Input.GetMouseButtonDown(0) || inputDevice.Action1 || inputDevice.Action2 || inputDevice.Action3 || inputDevice.Action4 )
            {
                //fade out menu UI
                for (int i = 0; i < menuFades.Length; i++)
                {
                    menuFades[i].FadeOut();
                }

                //start the lerp to player
                lerpToPlayer = true;
            }

            //lerping camera to player
            if (lerpToPlayer)
            {
                //look at player
                //add yLook to the player pos, then subtract cam pos to get the forward look
                targetLook = Quaternion.LookRotation((player.transform.position ) - transform.position);
                transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, mSmoothLook * Time.deltaTime);

                //lerp functionality
                LerpToPlayer(); 
            }
        }
	}

    void LerpToPlayer()
    {
        //pos
        transform.position = Vector3.Lerp(transform.position, playerCamera.transform.position, lerpSpeed * Time.deltaTime);
        //field of view
        startCam.fieldOfView = Mathf.Lerp(startCam.fieldOfView, 50f, lerpSpeed * Time.deltaTime);
        //can't look until we arrive at player spot 
        playerCamera.GetComponent<PlayerCameraController>().canLook = false;

        //distance check, once within reactivate everything and turn off start viewer
        if (Vector3.Distance(transform.position, playerCamera.transform.position) < 0.5f)
        {
            //enable player & player cam
            tpc.playerCanMove = true;
            playerInventory.SetActive(true);
            playerCamera.GetComponent<PlayerCameraController>().canLook = true;
            playerCamera.GetComponent<Camera>().enabled = true;
            tpc.GetComponent<AudioListener>().enabled = true;

            //disable start view stuff
            sunScript.rotationSpeed = sunScript.normalRotation;
            GetComponent<AudioListener>().enabled = false;
            startCam.enabled = false;
            startView = false;
        }
    }

    void LerpToHouse()
    {
        //pos
        transform.position = Vector3.Lerp(transform.position, houseCamera.transform.position, lerpSpeed * Time.deltaTime);
        //field of view
        startCam.fieldOfView = Mathf.Lerp(startCam.fieldOfView, 60f, lerpSpeed * Time.deltaTime);

        //distance check, once within reactivate everything and turn off start viewer
        if (Vector3.Distance(transform.position, houseCamera.transform.position) < 0.5f)
        {
            //enable player movement and houseCam
            tpc.playerCanMove = true;
            houseCamera.SetActive(true);
            playerCamera.GetComponent<PlayerCameraController>().canLook = true;
            tpc.GetComponent<AudioListener>().enabled = true;

            //disable start view stuff
            sunScript.rotationSpeed = sunScript.normalRotation;
            GetComponent<AudioListener>().enabled = false;
            startCam.enabled = false;
            startView = false;
        }
    }
}
