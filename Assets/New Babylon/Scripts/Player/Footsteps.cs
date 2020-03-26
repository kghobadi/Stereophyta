using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footsteps : AudioHandler {
    ThirdPersonController tpc;
    CapsuleCollider capCollider;
    [Header("Footstep Settings")]
    public ObjectPooler footstepPooler;
    float height;
    public float heightAdjust = 0.05f;
    public float xAdjust = 0.5f;
    bool leftOrRightFoot;
    public bool onLand = true;
    public float footstepTimer = 0f;
    public float walkStepTotal = 1f;
    public float runStepTotal = 0.5f;

    [Header("Sound Settings")]
    public float volume = 1f;
    public AudioClip[] currentFootsteps;
    public AudioClip[] grassSteps, woodSteps, swimSteps;

    public override void Awake ()
    {
        base.Awake();
        tpc = GetComponent<ThirdPersonController>();

        //set height depending on if player or npc 
        if(tpc == null)
        {
            capCollider = GetComponent<CapsuleCollider>();
            height = capCollider.height;
        }
        else
        {
            height = tpc.controller.height;
        }
	}

    void Start()
    {
        currentFootsteps = grassSteps;
    }

    //called from behavior update of player or NPC
    public void FootstepCountdown(float footstepTotal)
    {
        footstepTimer -= Time.deltaTime;
        if (footstepTimer < 0)
        {
            //only spawn footprints on land
            if(onLand)
                SpawnFootprint();
            RandomizePitch(pitchRange.x, pitchRange.y);
            PlaySoundUp(currentFootsteps, volume);
            footstepTimer = footstepTotal;
            //Debug.Log("footstep time!");
        }
    }
	
    //leave footprints behind as you walk around
    public void SpawnFootprint()
    {
        //Debug.Log("spawned footprint");
        //set footprint obj
        GameObject footprint = null;
        footprint = footstepPooler.GrabObject();
        footprint.GetComponent<FadeSprite>().FadeIn();

        //set spawn point
        Vector3 spawnPos = new Vector3(transform.position.x, transform.position.y - height / 2 + heightAdjust, transform.position.z);

        //move left or right
        if (leftOrRightFoot)
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(xAdjust, 0, 0);
        }
        else
        {
            //edit spawn point and tell sprite to flip
            spawnPos += new Vector3(-xAdjust, 0, 0);
        }

        //set pos 
        footprint.transform.position = spawnPos;

        //parent to body 
        if(tpc)
            footprint.transform.SetParent(tpc.characterBody.transform);
        else
            footprint.transform.SetParent(transform);

        //set proper rotation & unparent 
        footprint.transform.localEulerAngles = new Vector3(90, 0, 0);
        footprint.transform.SetParent(null);

        //wait 1 sec to fade out footprint
        footprint.GetComponent<FadeSprite>().StartCoroutine(footprint.GetComponent<FadeSprite>().WaitToFadeOut());

        //play little dirt particle effect 
        //running fx
        if (tpc)
        {
            if (tpc.running)
            {
                footprint.transform.GetChild(1).GetComponent<ParticleSystem>().Play();
            }
            //walking fx
            else
            {
                footprint.transform.GetChild(0).GetComponent<ParticleSystem>().Play();
            }
        }
        //walking fx
        else
        {
            footprint.transform.GetChild(0).GetComponent<ParticleSystem>().Play();
        }

        leftOrRightFoot = !leftOrRightFoot;
    }
}
