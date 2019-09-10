using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayerPos : MonoBehaviour {

    //player refs
    GameObject _player;
    ThirdPersonController tpc;

    public float heightAdjust = 0;

    void Start () {
        //player refs
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();
    }
	
	void Update () {
        transform.position = tpc.transform.position + new Vector3(0, heightAdjust, 0);
	}
}
