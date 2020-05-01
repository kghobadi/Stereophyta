﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NPC;
using InControl;

public class MonologueTrigger : MonoBehaviour
{
    //player
    GameObject player;
    ThirdPersonController tpc;

    //general
    [Tooltip("Only need this if the Trigger first becomes active when an NPC moves into it")]
    public GameObject speakerHost;
    [Tooltip("Defaults to true, uncheck if player can only activate once an NPC enters it")]
    public bool canActivate = true;
    [Tooltip("Check to auto activate when player enters trigger")]
    public bool autoActivate;
    [Tooltip("True when monologue has been activated")]
    public bool hasActivated;
    [Tooltip("True when player is within trigger")]
    public bool playerInZone;
    [Tooltip("Check to display talking head UI")]
    public bool displayUI;
    [Tooltip("Will attach to NPC upon activation")]
    public bool parentToNPC;
    int activationCount = 0;

    public GameObject interactDisplay;
    public FadeUItmp spaceToTalk;
    //monologues
    [Tooltip("Monologue Managers of the NPCs whose monologues should be activated")]
    public MonologueManager[] myMonologues;
    [Tooltip("Indeces of above Mono Managers to set")]
    public int[] monoNumbers;
    public Movement npcMovement;
    public Transform monologuePoint;
    public float npcWait = 0;

    private void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!playerInZone && canActivate)
                PlayerEnteredZone();
        }

        //can activate true when speaker arrives 
        if (other.gameObject == speakerHost)
        {
            NPCEnteredZone();
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!playerInZone && canActivate)
                PlayerEnteredZone();
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            PlayerExitedZone();
        }
    }

    void Update()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        if (playerInZone)
        {
            if ((Input.GetKeyUp(KeyCode.Space) || inputDevice.Action3.WasPressed || autoActivate) && !hasActivated)
            {
                ActivateMonologue();
            }
        }
    }

    //called in OnTriggerEnter()
    public void PlayerEnteredZone()
    {
        if (!hasActivated)
        {
            playerInZone = true;
            tpc.canJump = false;
            SetNPCWait();

            //fade in space to talk 
            if (spaceToTalk)
                spaceToTalk.FadeIn();

            ToggleInteractUI(playerInZone);
        }
    }

    void NPCEnteredZone()
    {
        if (!hasActivated)
        {
            //Debug.Log("can activate!");
            canActivate = true;

            SetNPCWait();
        }
    }

    //NPC will wait to give monologue
    void SetNPCWait()
    {
        if (npcMovement.waitingToGiveMonologue == false)
        {
            //tell npc to go to monologue point 
            if (monologuePoint && activationCount == 0)
            {
                npcMovement.SetIdle();
                npcMovement.NavigateToPoint(monologuePoint.position, true);
            }
            //wait to give monologue when you arrive 
            else
            {
                npcMovement.SetIdle();
                npcMovement.waitingToGiveMonologue = true;
            }
        }
    }

    //activates monologues
    void ActivateMonologue()
    {
        if (!hasActivated)
        {
            //sets monologues 
            for (int i = 0; i < myMonologues.Length; i++)
            {
                myMonologues[i].mTrigger = this;
                myMonologues[i].SetMonologueSystem(monoNumbers[i], activationCount);
                myMonologues[i].EnableMonologue();
            }

            //fade out space to talk 
            if (spaceToTalk)
                spaceToTalk.FadeOut();

            hasActivated = true;
            ToggleInteractUI(false);
            activationCount++;
            autoActivate = false;

            //follow NPC 
            if (parentToNPC)
                transform.SetParent(myMonologues[0].transform);
        }
    }
    
    //called in OnTriggerExit()
    public void PlayerExitedZone()
    {
        playerInZone = false;
        ToggleInteractUI(playerInZone);
        tpc.canJump = true;

        //this is a repeat, so don't wait forever..
        if(activationCount > 0 && npcMovement.GetComponent<MonologueManager>().inMonologue == false)
        {
            npcMovement.waitingToGiveMonologue = false;
            npcMovement.monologueWaitTimer = 0;
            if(npcMovement.waypointCounter > 0)
                npcMovement.waypointCounter--;
        }
    }
    
    public void ToggleInteractUI(bool newState)
    {
        if (displayUI)
        {
            interactDisplay.SetActive(newState);
        }
    }

    //called when monologue text script is reset
    public void WaitToReset(float time)
    {
        StartCoroutine(WaitToReactivate(time));
    }

    IEnumerator WaitToReactivate(float timer)
    {
        yield return new WaitForSeconds(timer);

        hasActivated = false;
    }
}
