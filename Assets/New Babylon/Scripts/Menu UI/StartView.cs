﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartView : MonoBehaviour {
    //sun ref
    Sun sunScript;

    //player vars
    GameObject player;
    ThirdPersonController tpc;

    //this cam comp
    Camera startCam;

    //these start disabled
    public GameObject playerCamera;
    public GameObject houseCamera;
    public GameObject playerInventory;

    //set this to true to enable start menu
    public bool startView, lerpToPlayer;

    //for now, this will be the windmill
    public Transform rotationPoint;
    //speed cam will rotate around island, lerp speed to player pos on click
    public float rotationSpeed, lerpSpeed;
    Quaternion targetLook;
    public float mSmoothLook = 5f;

    //UI stuff 
    public GameObject startMenuUI;
    public FadeUI[] menuFades;

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
            playerInventory.SetActive(false);
            startCam.fieldOfView = 75f;

            if (PlayerPrefs.GetString("hasBook") == "yes")
            {
                playerCamera.GetComponent<AudioListener>().enabled = false;
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
            GetComponent<AudioListener>().enabled = false;
            startCam.enabled = false;
            playerCamera.GetComponent<PlayerCameraController>().canLook = true;
        }
    }
	
	void Update () {
        if (startView)
        {
            //rotates camera around windmill
            if (!lerpToPlayer)
            {
                //rotate around windmill
                transform.RotateAround(rotationPoint.position, Vector3.up, rotationSpeed * Time.deltaTime);
                //keep the house cam off 
                if(houseCamera.activeSelf)
                    houseCamera.SetActive(false);
            }
            
            //check for spacebar input
            if (Input.GetMouseButtonDown(0))
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
                //the game has been played before and the player has made it out of the house
                //lerping to player cam 
                if (PlayerPrefs.GetString("hasBook") == "yes")
                {
                    //pos
                    transform.position = Vector3.Lerp(transform.position, playerCamera.transform.position, lerpSpeed * Time.deltaTime);
                    //field of view
                    startCam.fieldOfView = Mathf.Lerp(startCam.fieldOfView, 50f, lerpSpeed * Time.deltaTime);

                    //distance check, once within reactivate everything and turn off start viewer
                    if (Vector3.Distance(transform.position, playerCamera.transform.position) < 0.5f)
                    {
                        //enable player & player cam
                        tpc.playerCanMove = true;
                        playerInventory.SetActive(true);
                        playerCamera.GetComponent<PlayerCameraController>().canLook = true;
                        playerCamera.GetComponent<Camera>().enabled = true;
                        playerCamera.GetComponent<AudioListener>().enabled = true;

                        //disable start view stuff
                        sunScript.rotationSpeed = sunScript.normalRotation;
                        GetComponent<AudioListener>().enabled = false;
                        startCam.enabled = false;
                        startView = false;
                    }
                }
                //first time starting, lerp to house Cam
                else
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
                        
                        //disable start view stuff
                        sunScript.rotationSpeed = sunScript.normalRotation;
                        GetComponent<AudioListener>().enabled = false;
                        startCam.enabled = false;
                        startView = false;
                    }
                }
               
            }
        }
	}
}