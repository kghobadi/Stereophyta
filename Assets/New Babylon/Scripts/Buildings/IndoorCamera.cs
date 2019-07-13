using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IndoorCamera : MonoBehaviour {
    //player vars
    GameObject player;
    ThirdPersonController tpc;


    void Start () {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        tpc.houseCam = transform;
    }
	
	void Update () {
        transform.LookAt(player.transform);
	}
}
