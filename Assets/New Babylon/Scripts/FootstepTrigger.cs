using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepTrigger : MonoBehaviour
{
    ThirdPersonController tpc;
    public bool playerTriggered = false;

    private void Awake()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        playerTriggered = false;
    }

    void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            //walk thru first time
            if (playerTriggered)
            {
                tpc.currentFootsteps = tpc.grassSteps;
                tpc.currentStep = 0;
            }
            // return to start
            else
            {
                tpc.currentFootsteps = tpc.woodSteps;
                tpc.currentStep = 0;
            }

            playerTriggered = !playerTriggered;
        }
    }
}
