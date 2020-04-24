using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NPC;

public class MonologueTrigger : MonoBehaviour
{
    //player
    GameObject player;
    ThirdPersonController tpc;

    //general
    [Tooltip("Only need this if the Trigger first becomes active when an NPC moves into it")]
    public GameObject speakerHost;
    public bool canActivate = true;
    public bool autoActivate;
    public bool hasActivated;
    public bool playerInZone;
    public bool displayUI;

    public GameObject interactDisplay;
    public FadeUItmp spaceToTalk;
    //monologues
    [Tooltip("Monologue Managers of the NPCs whose monologues should be activated")]
    public MonologueManager[] myMonologues;
    [Tooltip("Indeces of above Mono Managers to set")]
    public int[] monoNumbers;
    public Movement npcMovement;
    public Transform monologuePoint;

    private void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if(!hasActivated && canActivate)
                PlayerEnteredZone();
        }

        //can activate true when speaker arrives 
        if(other.gameObject == speakerHost)
        {
            //Debug.Log("can activate!");
            canActivate = true;
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
        if (playerInZone)
        {
            if((Input.GetKeyUp(KeyCode.Space) || autoActivate) && !hasActivated)
            {
                ActivateMonologue();
            }
        }
    }

    //called in OnTriggerEnter()
    public void PlayerEnteredZone()
    {
        playerInZone = true;
        tpc.canJump = false;
        if (npcMovement.waitingToGiveMonologue == false)
        {
            //tell npc to go to monologue point 
            if (monologuePoint)
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

        //fade in space to talk 
        if (spaceToTalk)
            spaceToTalk.FadeIn();

        ToggleInteractUI(playerInZone);
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
                myMonologues[i].SetMonologueSystem(monoNumbers[i]);
                myMonologues[i].EnableMonologue();
            }

            //fade out space to talk 
            if (spaceToTalk)
                spaceToTalk.FadeOut();

            hasActivated = true;
            ToggleInteractUI(false);
        }
    }
    
    //called in OnTriggerExit()
    public void PlayerExitedZone()
    {
        playerInZone = false;
        tpc.canJump = true;
        ToggleInteractUI(playerInZone);
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
