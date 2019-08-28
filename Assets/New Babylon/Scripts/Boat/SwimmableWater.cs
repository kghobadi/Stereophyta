﻿using System.Collections;
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
            //if not swimming
            if (!tpc.swimming )
            {
                tpc.swimming = true;
                tpc.currentFootsteps = tpc.swimSteps;
                tpc.myInventory.gameObject.SetActive(false);
                tpc.playerCloak.gameObject.SetActive(false);

                if (tpc.jumping)
                {
                    tpc.jumping = false;
                    tpc.jumpTrail.transform.SetParent(null);
                    tpc.jumpTrail.GetComponent<JumpTrail>().StartCoroutine(tpc.jumpTrail.GetComponent<JumpTrail>().Deactivate());

                    //bring down move speed 
                    tpc.currentMovement /= 3;
                    tpc.currentMovementV /= 2;
                }
            }
        }
    }

    //exit water
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == player)
        {
            //if swimming 
            if (tpc.swimming)
            {
                tpc.swimming = false;
                tpc.currentFootsteps = tpc.grassSteps;
                tpc.myInventory.gameObject.SetActive(true);
                
                StartCoroutine(WaitToEnableCloak());
            }
        }
    }

    IEnumerator WaitToEnableCloak()
    {
        yield return new WaitForSeconds(0.5f);

        if (!tpc.swimming)
        {
            tpc.ActivateCloak(0.1f);
        }
    }
}
