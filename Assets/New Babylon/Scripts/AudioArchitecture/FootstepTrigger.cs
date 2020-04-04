using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepTrigger : MonoBehaviour
{
    ThirdPersonController tpc;
    public bool triggered = false;
    public AudioClip[] desiredFootsteps, lastFootsteps;
    
    IEnumerator setFootsteps;

    private void Awake()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
    }

    //player enters trigger, switch to desiredFootsteps
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player" || other.gameObject.tag == "NPC")
        {
            Footsteps footstepper = other.gameObject.GetComponent<Footsteps>();

            lastFootsteps = footstepper.currentFootsteps;

            if (setFootsteps != null)
                StopCoroutine(setFootsteps);

            setFootsteps = WaitToSetFootsteps(footstepper, desiredFootsteps);

            StartCoroutine(setFootsteps);

            triggered = true;
        }
    }

    //player exits trigger, switch back
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player" || other.gameObject.tag == "NPC")
        {
            Footsteps footstepper = other.gameObject.GetComponent<Footsteps>();

            if (setFootsteps != null)
                StopCoroutine(setFootsteps);

            setFootsteps = WaitToSetFootsteps(footstepper, lastFootsteps);

            StartCoroutine(setFootsteps);

            triggered = false;
        }
    }

    IEnumerator WaitToSetFootsteps(Footsteps footsteps, AudioClip[] newFootsteps)
    {
        yield return new WaitForEndOfFrame();

        footsteps.currentFootsteps = newFootsteps;
        footsteps.currentSound = 0;
    }
}
