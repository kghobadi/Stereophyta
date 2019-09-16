using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepTrigger : MonoBehaviour
{
    ThirdPersonController tpc;
    public bool playerTriggered = false;
    public AudioClip[] desiredFootsteps, lastFootsteps;

    private void Awake()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        //take this line out when we need new footstep triggers 
        desiredFootsteps = tpc.woodSteps;
    }

    //player enters trigger, switch to desiredFootsteps
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            lastFootsteps = tpc.currentFootsteps;
            tpc.currentFootsteps = desiredFootsteps;
            tpc.currentStep = 0;
           
            playerTriggered = true;
        }
    }

    //player exits trigger, switch back
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            //need to change this if i need more footstep triggers 
            tpc.currentFootsteps = tpc.grassSteps;
            tpc.currentStep = 0;

            playerTriggered = false;
        }
    }
}
