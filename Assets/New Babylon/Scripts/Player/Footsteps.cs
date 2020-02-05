using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footsteps : MonoBehaviour {
    ThirdPersonController tpc;
    public ObjectPooler footstepPooler;
    public float heightAdjust = 0.05f;
    bool leftOrRightFoot;

	// Use this for initialization
	void Awake () {
        tpc = GetComponent<ThirdPersonController>();
	}
	

    //leave footprints behind as you walk around
    public void SpawnFootprint()
    {
        //set footprint obj
        GameObject footprint = null;
        footprint = footstepPooler.GrabObject();
        footprint.GetComponent<FadeSprite>().FadeIn();

        //set spawn point
        Vector3 spawnPos = new Vector3(transform.position.x, transform.position.y - tpc.controller.height / 2 + heightAdjust, transform.position.z);

        //set pos 
        footprint.transform.position = spawnPos;

        //mess with rotation 
        footprint.transform.SetParent(tpc.characterBody.transform);
        if (leftOrRightFoot)
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(0.3f, 0, 0);
        }
        else
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(-0.3f, 0, 0);

        }
        footprint.transform.localEulerAngles = new Vector3(90, 0, 0);
        footprint.transform.SetParent(null);

        //wait 1 sec to fade out footprint
        footprint.GetComponent<FadeSprite>().StartCoroutine(footprint.GetComponent<FadeSprite>().WaitToFadeOut());

        //play little dirt particle effect 
        //running fx
        if (tpc.running)
        {
            footprint.transform.GetChild(1).GetComponent<ParticleSystem>().Play();
        }
        //walking fx
        else
        {
            footprint.transform.GetChild(0).GetComponent<ParticleSystem>().Play();
        }


        leftOrRightFoot = !leftOrRightFoot;
    }
}
