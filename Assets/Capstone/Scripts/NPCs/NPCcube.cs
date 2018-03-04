﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCcube : NPC {

    public float visionDistance, movementDistance, waitingTime, wavingTime, waveRefresh, waveRefreshTotal;
    int moveCounter;

    Vector3 targestDestination;

    bool upOrDown;


	public override void Start () {
        base.Start();
        targestDestination = transform.position + new Vector3(0, 0, movementDistance);
        moveCounter = 0;

        animator = GetComponentInChildren<Animator>();
        animator.SetBool("walking", true);

        speed += Random.Range(-1.5f, 1.5f);
    }
	
	public override void Update () {
        base.Update();
        if(currentState == NPCState.SETTINGMOVE)
        {
            SetMove();
        }

        if (currentState == NPCState.MOVING)
        {
            Movement();

            if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            {
                StartCoroutine(WaveAtPlayer());
                
            }
        }

        if (hasWavedAtPlayer)
        {
            waveRefresh -= Time.deltaTime;
            if (waveRefresh < 0)
            {
                hasWavedAtPlayer = false;
            }
        }
    }

    void SetMove()
    {
        //randomly changes note up or down
        int randomNum = Random.Range(0, 100);
        if(randomNum < 50)
        {
            upOrDown = true;
        }
        else
        {
            upOrDown = false;
        }

        if (moveCounter < 3)
        {
            moveCounter++;
        }
        else
        {
            moveCounter = 0;
        }
        switch (moveCounter)
        {
            case 0:
                targestDestination = transform.position + new Vector3(0, 0, movementDistance);
                transform.LookAt(transform.position + Vector3.forward);
                break;
            case 1:
                targestDestination = transform.position + new Vector3(movementDistance, 0, 0);
                transform.LookAt(transform.position + Vector3.right);
                break;
            case 2:
                targestDestination = transform.position + new Vector3(0, 0, -movementDistance);
                transform.LookAt(transform.position + Vector3.back);
                break;
            case 3:
                targestDestination = transform.position + new Vector3(-movementDistance, 0, 0);
                transform.LookAt(transform.position + Vector3.left);
                break;
        }
        currentState = NPCState.MOVING;
    }

    public void Movement()
    {
        transform.position = Vector3.MoveTowards(transform.position, targestDestination, speed * Time.deltaTime);

        if (Vector3.Distance(transform.position, targestDestination) < 0.01f)
        {
            transform.position = targestDestination;
            currentState = NPCState.LOOKING;
            LookForPlants();
        }
    }

    public void LookForPlants()
    {
        bool canPlayPlant = false;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant" /*&& hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == plantType*/)
            {
                currentPlant = hitColliders[i].gameObject.GetComponent<Plant>();
                canPlayPlant = true;
            }
            i++;
        }
        if (canPlayPlant)
        {
            StartCoroutine(PlayTree());
            
        }
        else
        {
            SetMove();
        }
    }

    public IEnumerator PlayTree()
    {
        //play animation or do a color change on character
        //wait here a moment
        animator.SetBool("walking", false);
        if(plantType == "CUBETREE")
            transform.LookAt(currentPlant.transform.position - new Vector3(0,2,0));
        else
        {
            transform.LookAt(currentPlant.transform.position);
        }
        yield return new WaitForSeconds(waitingTime);
        if (upOrDown)
        {
            currentPlant.ShiftNoteUp();
        }
        else
        {
            currentPlant.ShiftNoteDown();
        }
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

    public IEnumerator WaveAtPlayer()
    {
        currentState = NPCState.WAVING;
        transform.LookAt(_player.transform);
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        //rotates back correctly
        if(currentState == NPCState.WAVING)
        {
            switch (moveCounter)
            {
                case 0:
                    transform.LookAt(transform.position + Vector3.forward);
                    break;
                case 1:
                    transform.LookAt(transform.position + Vector3.right);
                    break;
                case 2:
                    transform.LookAt(transform.position + Vector3.back);
                    break;
                case 3:
                    transform.LookAt(transform.position + Vector3.left);
                    break;
            }
            //starts walking again
            currentState = NPCState.MOVING;
        }
        hasWavedAtPlayer = true;
        waveRefresh = waveRefreshTotal;
        animator.SetBool("waving", false);
        animator.SetBool("walking", true);
    }

    //OTHER FUNCTIONS
    //pick up seed ()
    //plant seed ()

    //playerInteract()
}