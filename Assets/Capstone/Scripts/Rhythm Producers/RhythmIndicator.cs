﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//This script just makes the rhythm indicator sprite look at the camera 

public class RhythmIndicator : MonoBehaviour {
    //ref to player and their camera 
    GameObject player;
    ThirdPersonController tpc;
    Camera cammy;

    private void Start()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        cammy = tpc.playerCameraController.GetComponent<Camera>();
    }

    void Update () {
        transform.LookAt(cammy.transform.position);
	}
}
