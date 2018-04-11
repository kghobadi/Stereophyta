using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class GodDrummer : GodNPC
{
    public float scaleColliderTime;
    float collisionSpeed, particleSpeed, particleLifetime;

    BoxCollider drummerCollider;
    Vector3 originalColliderSize;
 
    ParticleSystem beatParticles;
    GodDrumCollider drumCollision;
    public Transform drumBackpack, drumPosContainer;
    public int backpackMax;
    public List<GameObject> drumSet = new List<GameObject>();
    List<Transform> drumPositions = new List<Transform>();

    bool startSounds, setDrumPosition; // use this in update

    public override void Start()
    {
        base.Start();
        moveCounter = 0;
        animator.SetBool("walking", false);
        animator.speed = 0.75f;

        beatParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        beatParticles.Stop();
        drumCollision = transform.GetChild(2).GetComponent<GodDrumCollider>();

        // list of positions for deploying rock drums
        for (int t = 0; t < drumPosContainer.childCount; t++)
        {
            drumPositions.Add(drumPosContainer.GetChild(t));
        }

        backpackMax = drumPositions.Count;

        // if there are rocks in the drummers pack, add them to the list
        if (drumBackpack.childCount > 0)
        {
            for (int i = 0; i < drumBackpack.childCount; i++)
            {
                drumSet.Add(drumBackpack.GetChild(i).gameObject);
                drumSet[i].transform.localPosition = drumPositions[i].localPosition;
            }
        }
        
        drummerCollider = GetComponent<BoxCollider>();
        originalColliderSize = drummerCollider.size;

        startSounds = true;
        currentState = NPCState.PLAYING;
        myMusic.isPlaying = true;

    }

    public override void Update()
    {
        base.Update();

        //if (currentState == NPCState.FOLLOWING)
        //{
        //    for (int i = 0; i < drumSet.Count; i++)
        //    {
        //        drumSet[i].transform.localPosition = drumBackpack.localPosition;
        //        drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
        //    }
        //    drumCollision.gameObject.SetActive(false);
        //}

        if (currentState == NPCState.PLAYING)
        {
            drumCollision.gameObject.SetActive(true);
            for (int i = 0; i < drumSet.Count; i++)
            {
                drumSet[i].transform.localPosition = drumPositions[i].localPosition;
                //if(!startSounds)
                //    drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
            }

            if (myMusic.showRhythm && myMusic.isPlaying)
                {
                    SwitchTempoVisuals();
                    drumCollision.StartCoroutine(drumCollision.LerpScale(collisionSpeed));
                    
                    beatParticles.Play();
                    myMusic.showRhythm = false;
                }
            
        }
    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        startSounds = false;
    }

    //fills up lists of nearby plants and rocks
    public override void LookForWork()
    {
        //hasLooked = true;
        currentRocks.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Rock" && !drumSet.Contains(hitColliders[i].gameObject))
            {
                if(drumSet.Count < backpackMax)
                {
                    drumSet.Add(hitColliders[i].gameObject);
                    hitColliders[i].gameObject.transform.SetParent(drumBackpack);
                    hitColliders[i].gameObject.transform.localPosition = drumBackpack.localPosition;
                }
                else
                {
                    currentRocks.Add(hitColliders[i].gameObject.GetComponent<GodRock>());
                }
            }
            i++;
        }

        //if there are no nearby plants or rocks, we set move
        if (currentRocks.Count > 0)
        {
            StartCoroutine(PerformLabor());
        }
        else
        {
            SetMove();
        }
    }

    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(waitingTime);
        
        //slap the fuck outta that rock
        for (int i = 0; i < currentRocks.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            transform.LookAt(new Vector3(currentRocks[i].transform.position.x, transform.position.y, currentRocks[i].transform.position.z));
            if (randomShift > 50)
            {
                currentRocks[i].ShiftNoteUp(); //ShiftNoteUp
            }
            else
            {
                currentRocks[i].ShiftNoteDown(); //ShiftNoteDown
            }
            yield return new WaitForSeconds(waitingTime);
        }
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

    void SwitchTempoVisuals()
    {
        ParticleSystem.MainModule beatParticlesModule = beatParticles.main;

        switch (myMusic.primaryTempo)
        {
            case 0:
                collisionSpeed = 16;
                particleSpeed = 1.875f;
                particleLifetime = 12f;
                break;
            case 1:
                collisionSpeed = 8f;
                particleSpeed = 3.75f;
                particleLifetime = 6f;
                break;
            case 2:
                collisionSpeed = 4f;
                particleSpeed = 7.5f;
                particleLifetime = 3f;
                break;
            case 3:
                collisionSpeed = 2f;
                particleSpeed = 15f;
                particleLifetime = 1.5f;
                break;
            case 4:
                collisionSpeed = 1f;
                particleSpeed = 30f;
                particleLifetime = 0.75f;
                break;
        }
        beatParticlesModule.startSpeed = particleSpeed;
        beatParticlesModule.startLifetime = particleLifetime;
    }

    public override void DropObject()
    {
        playerHolding = false;
        interactable = true;
        holdTimer = 0;
        symbol.sprite = normalSprite;
        for (int i = 0; i < movementPoints.Count; i++)
        {
            movementPoints[i].GetComponent<GodWaypoint>().showMesh = false;
        }
        currentState = NPCState.PLAYING;
    }

}
