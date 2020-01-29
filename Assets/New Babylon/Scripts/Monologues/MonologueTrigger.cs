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
    public bool hasActivated;
    public bool playerInZone;
    public bool displayUI;

    public GameObject interactDisplay;
    //monologues
    public MonologueText[] myMonologues;
    public Movement npcMovement;

    private void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if(!hasActivated)
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
        if (playerInZone)
        {
            if(Input.GetKeyDown(KeyCode.Space) && !hasActivated)
            {
                ActivateMonologue();
            }
        }
    }

    //activates monologues
    void ActivateMonologue()
    {
        if (!hasActivated)
        {
            for (int i = 0; i < myMonologues.Length; i++)
            {
                myMonologues[i].EnableMonologue();
            }

            hasActivated = true;
            ToggleInteractUI(false);
        }
    }

    public void PlayerEnteredZone()
    {
        playerInZone = true;
        tpc.canJump = false;
        npcMovement.waitingToGiveMonologue = true;
        ToggleInteractUI(playerInZone);
    }

    public void PlayerExitedZone()
    {

        playerInZone = false;
        tpc.canJump = true;
        ToggleInteractUI(playerInZone);
    }


    void ToggleInteractUI(bool newState)
    {
        if (displayUI)
        {
            interactDisplay.SetActive(newState);
        }
    }

    void OnDisable()
    {
        if (hasActivated)
        {
            for (int i = 0; i < myMonologues.Length; i++)
            {
                myMonologues[i].DisableMonologue();
            }
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
