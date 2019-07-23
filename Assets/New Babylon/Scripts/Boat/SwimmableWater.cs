using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwimmableWater : MonoBehaviour {
    
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    void Start()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    //enter water
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == player)
        {
            if (!tpc.swimming)
            {
                tpc.swimming = true;
                tpc.currentFootsteps = tpc.swimSteps;
                tpc.myInventory.gameObject.SetActive(false);
                //tpc.playerCloak.enabled = false;
            }
        }
    }

    //exit water
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == player)
        {
            if (tpc.swimming)
            {
                tpc.swimming = false;
                tpc.currentFootsteps = tpc.grassSteps;
                tpc.myInventory.gameObject.SetActive(true);
                //tpc.playerCloak.enabled = true;
            }
        }
    }
}
