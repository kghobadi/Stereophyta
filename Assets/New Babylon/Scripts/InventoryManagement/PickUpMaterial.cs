using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Player;

public abstract class PickUpMaterial : MonoBehaviour {
    //player vars
    protected GameObject player;
    protected ThirdPersonController tpc;

    //for adding to inventory
    protected GameObject inventory;
    protected Inventory inventoryScript;
    public Sprite inventorySprite;
    //is true once player picks it up
    public bool playerWasNear, hasBeenAcquired;
    public AudioClip pickupSound;
    //for setting local transform under inventory
    public Vector3 localPos, localRot, localScale;
    //ui refs for pickup prompt
    public Text pickUpText;
    public string pickUpMessage;
    public FadeUI[] interactPrompts;

    void Awake () {

        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //inventory ref
        inventory = GameObject.FindGameObjectWithTag("Inventory");
        inventoryScript = inventory.GetComponent<Inventory>();
    }

    //called to pick up tool for the first time
    public virtual void PickUpMat(bool playSound)
    {
        hasBeenAcquired = true;

        //child to inventory & turn on animator
        transform.SetParent(inventory.transform);

        //set local transform
        transform.localPosition = localPos;
        transform.localEulerAngles = localRot;
        transform.localScale = localScale;

        //add to items list,
        inventoryScript.AddItemToInventory(gameObject, inventorySprite);
        inventoryScript.SwitchToItem(gameObject);
        //play this items pickup sound
        if (playSound)
        {
            inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
        }

        DeactivatePrompt();
        //book notification??
    }

    public virtual void Update()
    {
        //just for pick up logic 
        if (!hasBeenAcquired)
        {
            //dist from player
            float dist = Vector3.Distance(transform.position, player.transform.position);
            //if player is close
            if (dist < 10f)
            {
                playerWasNear = true;

                //fade in those prompts
                if (pickUpText.color.a < 0.5f)
                    ShowPickupPrompt();

                //pick up when player presses Q
                if (Input.GetKeyDown(KeyCode.Q))
                {
                    PickUpMat(true);
                }
            }
            //player has left
            else if (dist > 15f)
            {
                //fade out prompts
                if (playerWasNear)
                {
                    DeactivatePrompt();
                    playerWasNear = false;
                }
            }
        }
    }

    public virtual void ShowPickupPrompt()
    {
        //Debug.Log("show pickup prompt");
        //set text prompt
        pickUpText.text = pickUpMessage;

        //fade em in
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeIn();
        }
    }

    //turn off prompt
    public virtual void DeactivatePrompt()
    {
        //Debug.Log("deactivating prompt");
        //fade em out
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeOut();
        }
    }
}
