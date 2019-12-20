using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterWell : MonoBehaviour {
    GameObject player;
    ThirdPersonController tpc;
    public Items.WateringCan waterCan;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    //watercan near
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == waterCan.gameObject)
        {
            waterCan.nearWell = true;
        }
    }

    //watercan gone  
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == waterCan.gameObject)
        {
            waterCan.nearWell = false;
        }
    }
}
