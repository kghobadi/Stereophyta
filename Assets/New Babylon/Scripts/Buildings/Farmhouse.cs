﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cameras;

public class Farmhouse : MonoBehaviour {
    //player vars
    GameObject player;
    ThirdPersonController tpc;

    //these get turned on & off when player walks inside
    CameraManager camManager;
    public GameCamera playerCamera;
    public GameCamera houseCamera;
    public GameObject playerInventory;

    //only true when player is inside house
    public bool occupied;
    public AudioClip[] lastFootsteps;

    //for bed sleep pop-up
    public GameObject bed;
    public bool showingSleepSymbols;
    public FadeSprite sleepSymbolFade;
    public ParticleSystem sleepParticles;
    
    void Awake () {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        camManager = FindObjectOfType<CameraManager>();
    }

    //player entering, turn stuff off
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!occupied)
            {
                camManager.Set(houseCamera);

                playerInventory.SetActive(false);
                lastFootsteps = tpc.currentFootsteps;
                tpc.currentFootsteps = tpc.woodSteps;
               
                occupied = true;

                //wait to change controls rotation
                if(PlayerPrefs.GetString("hasBook") == "yes")
                {
                    StartCoroutine(WaitToSetIndoors());
                }
                else
                {
                    tpc.indoors = true;
                }
            }
        }
    }

    IEnumerator WaitToSetIndoors()
    {
        yield return new WaitForSeconds(0.5f);
        if(occupied)
            tpc.indoors = true;
    }

    //so when you sleep it stays off
    void OnTriggerStay(Collider other)
    {
        //if(playerInventory.activeSelf)
        //    playerInventory.SetActive(false);

        //just for turning on sleep stuff over bed 
        if (Vector3.Distance(player.transform.position, bed.transform.position) < 5)
        {
            //check if we are sleeping or not
            if (!showingSleepSymbols && !tpc.sleeping)
            {
                sleepSymbolFade.FadeIn();
                sleepParticles.Play();
                showingSleepSymbols = true;
            }

            //turn it off if player start
            if(showingSleepSymbols && tpc.sleeping)
            {
                FadeOutSleepSymbols();
            }
        }
        //turn off
        else
        {
            if (showingSleepSymbols)
            {
                FadeOutSleepSymbols();
            }
        }
    }

    //player leaving, turn stuff back on
    void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (occupied)
            {
                //reset playercam
                camManager.Set(playerCamera);

                playerInventory.SetActive(true);
                tpc.currentFootsteps = lastFootsteps;
                tpc.indoors = false;
                tpc.transform.localEulerAngles = new Vector3(0, 105f, 0);
                occupied = false;

                if (showingSleepSymbols)
                {
                    FadeOutSleepSymbols();
                }
            }
        }
       
    }

    void FadeOutSleepSymbols()
    {
        sleepSymbolFade.FadeOut();
        sleepParticles.Stop();
        showingSleepSymbols = false;
    }
}
