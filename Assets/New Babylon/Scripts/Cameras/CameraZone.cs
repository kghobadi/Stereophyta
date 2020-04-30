﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Cameras
{
    //This script allows you to trigger cam Manager to enable a specific camera while player is in a zone.
    //Useful for buildings, caves, etc. 
    public class CameraZone : MonoBehaviour
    {
        CameraManager camManager;
        ThirdPersonController tpc;
        PlayerCameraController pcc;

        public bool active;
        public GameCamera desiredCam, lastCam;

        [Tooltip("Player cannot sprint")]
        public bool limitPlayerMovement;

        void Awake()
        {
            camManager = FindObjectOfType<CameraManager>();
            tpc = FindObjectOfType<ThirdPersonController>();
            pcc = FindObjectOfType<PlayerCameraController>();
        }

        void OnTriggerEnter(Collider other)
        {
            if(other.gameObject.tag == "Player" && !active)
            {
                Activate();
            }
        }
        
        void Activate()
        {
            if (desiredCam)
            {
                lastCam = camManager.currentCamera;
                camManager.Set(desiredCam);
                pcc.canSwitchCams = false;
                if (limitPlayerMovement)
                    tpc.canSprint = false;
                active = true;
            }
        }

        void OnTriggerExit(Collider other)
        {
            if (other.gameObject.tag == "Player" )
            {
                Deactivate();
            }
        }

        void Deactivate()
        {
            camManager.Set(lastCam);
            pcc.canSwitchCams = true;
            if (limitPlayerMovement)
            {
                tpc.canSprint = true;
            }
               
            active = false;
        }
    }
}

