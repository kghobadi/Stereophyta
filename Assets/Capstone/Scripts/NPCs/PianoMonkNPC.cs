﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PianoMonkNPC : NPC {

    //Piano Monks will play piano trees all the way up and down the scale
    //If sapling counter > saplingsNecessary, uses Divine Light to grow all nearby plants
    //They do not play rocks
    List<PianoPlant> currentPlants = new List<PianoPlant>();

    List<Plant> plantsToGrow = new List<Plant>();

    public ParticleSystem squareRipples;

    public override void Start()
    {
        base.Start();
        squareRipples.Stop();
        myMusic.primaryTempo = 2;
    }

    public override void Update()
    {
        if(currentState == NPCState.LABOR)
        {
            //nothing 
        }
        else
        {
            base.Update();
        }
       
    }

    //fills up lists of nearby plants and rocks
    public override void LookForWork()
    {
        //hasLooked = true;
        currentPlants.Clear();
        currentRocks.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                if(hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == "PIANO")
                {
                    currentPlants.Add(hitColliders[i].gameObject.GetComponent<PianoPlant>());
                }
            }
            else if (hitColliders[i].gameObject.tag == "Rock")
            {
                currentRocks.Add(hitColliders[i].gameObject.GetComponent<Rock>());
            }
            i++;
        }
        //if there are no nearby plants or rocks, we set move
        if (currentPlants.Count > 0)
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
        animator.SetBool("idle", false);
        animator.SetBool("working", true);
        squareRipples.Play();
        yield return new WaitForSeconds(waitingTime);

        //choose random plant to play up or down the scale
        int randomPlant = Random.Range(0, currentPlants.Count);

        int randomShift = Random.Range(0, 100);

        int randomAmount = Random.Range(3, 7);
            
                transform.LookAt(new Vector3(currentPlants[randomPlant].transform.position.x, transform.position.y, currentPlants[randomPlant].transform.position.z));
                for(int n = 0; n < randomAmount; n++)
        {
            //check if its active
            if (currentPlants[randomPlant].gameObject.activeSelf)
            {
                if (randomShift > 50)
                {
                    currentPlants[randomPlant].Selection_Two(); //ShiftNoteUp
                    currentPlants[randomPlant].audioSource.PlayOneShot(currentPlants[randomPlant].currentSound);
                }
                else
                {
                    currentPlants[randomPlant].Selection_Three(); //ShiftNoteDown
                    currentPlants[randomPlant].audioSource.PlayOneShot(currentPlants[randomPlant].currentSound);
                }
                yield return new WaitForSeconds(waitingTime);
            }
            //set move to avoid bugs 
            else
            {
                SetMove();
            }
        }

        squareRipples.Stop();
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }
}
