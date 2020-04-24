using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//use this script to trigger a specific anim on player or NPC when they enter 
public class AnimationZone : MonoBehaviour {
    ThirdPersonController tpc;
    public bool activated;

    InteractPrompt interactPrompt;

	void Awake () {
        tpc = FindObjectOfType<ThirdPersonController>();
	}

    void Start()
    {
        interactPrompt = tpc.myInventory.GetComponent<InteractPrompt>();
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            ActivateZone();
        }
    }

    public void ActivateZone()
    {
        if (!activated)
        {

            activated = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        
    }

    public void DeactivateZone()
    {
        if (activated)
        {

            activated = false;
        }
    }
}
