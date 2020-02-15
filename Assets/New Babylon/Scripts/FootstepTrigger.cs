using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepTrigger : MonoBehaviour
{
    ThirdPersonController tpc;
    public bool triggered = false;
    public AudioClip[] desiredFootsteps, lastFootsteps;

    private void Awake()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
    }

    //player enters trigger, switch to desiredFootsteps
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player" || other.gameObject.tag == "NPC")
        {
            Footsteps footsteps = other.gameObject.GetComponent<Footsteps>();

            lastFootsteps = footsteps.currentFootsteps;
            footsteps.currentFootsteps = desiredFootsteps;
            footsteps.currentSound = 0;

            triggered = true;
        }
    }

    //player exits trigger, switch back
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player" || other.gameObject.tag == "NPC")
        {
            Footsteps footsteps = other.gameObject.GetComponent<Footsteps>();

            footsteps.currentFootsteps = lastFootsteps;
            footsteps.currentSound = 0;

            triggered = false;
        }
    }
}
