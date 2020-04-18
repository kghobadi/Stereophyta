using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;
using Player;

public abstract class PickUp : MonoBehaviour {
    //player vars
    protected GameObject player;
    protected ThirdPersonController tpc;

    //for adding to inventory
    protected GameObject inventory;
    protected Inventory inventoryScript;
    protected InteractPrompt interactPrompt;

    //is true once player picks it up
    [Header("Pick Up Logic")]
    public bool playerWasNear;
    public bool hasBeenAcquired;
    public AudioClip pickupSound;
    //for setting local transform under inventory
    public float pickUpDist = 10f;
    public string pickUpMessage;
    public Vector3 localPos, localRot, localScale;
   

    public virtual void Awake () {

        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //inventory ref
        inventory = GameObject.FindGameObjectWithTag("Inventory");
        inventoryScript = inventory.GetComponent<Inventory>();
        interactPrompt = inventory.GetComponent<InteractPrompt>();

        //Debug.Log(inventoryScript.gameObject + " has been found!");
    }

    //called to pick up tool for the first time
    public virtual void PickUpTool(bool playSound)
    {
        hasBeenAcquired = true;

        //child to inventory & turn on animator
        transform.SetParent(inventory.transform);

        //set local transform
        transform.localPosition = localPos;
        transform.localEulerAngles = localRot;
        transform.localScale = localScale;
        
        if (playSound)
        {
            //play this tools pickup sound
            inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
        }

        interactPrompt.DeactivatePrompt();
        //book notification??
    }

    public virtual void Update()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //just for pick up logic 
        if (!hasBeenAcquired)
        {
            //dist from player
            float dist = Vector3.Distance(transform.position, player.transform.position);
            //if player is close
            if (dist < pickUpDist)
            {
                playerWasNear = true;

                //fade in those prompts
                if (interactPrompt.pickUpText.color.a < 0.5f)
                {
                    interactPrompt.pickUpMessage = pickUpMessage;
                    interactPrompt.ShowPickupPrompt();
                }

                //pick up when player presses E
                if (Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed)
                {
                    PickUpTool(true);
                }
            }
            //player has left
            else if (dist > (pickUpDist + 5f))
            {
                //fade out prompts
                if (playerWasNear)
                {
                    interactPrompt.DeactivatePrompt();
                    playerWasNear = false;
                }
            }
        }
    }
}
