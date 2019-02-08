using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


//This script should essentially stay this simple
public abstract class Interactive : MonoBehaviour {
    //player ref
    protected GameObject player;
    protected ThirdPersonController tpc;

    protected InteractiveObjects listOfObjs;

    public float interactDistance = 10;
    public bool interactive;

    //ui stuff
    protected GameObject interactPrompt;
    protected Image promptBack;
    protected Image interactImage;
    protected Text interactText;

    //our sprite and message
    public Sprite interactSprite;
    public string interactMessage;
    string interactiveString;

    void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        listOfObjs = GameObject.FindGameObjectWithTag("InteractiveObjs").GetComponent<InteractiveObjects>();

        //grab interactPrompt refs
        interactPrompt = GameObject.FindGameObjectWithTag("InteractPrompt");
        promptBack = interactPrompt.GetComponent<Image>();
        interactImage = interactPrompt.transform.GetChild(0).GetComponent<Image>();
        interactText = interactPrompt.transform.GetChild(1).GetComponent<Text>();

        interactiveString = "Press           " + interactMessage;

        interactive = false;
    }

    //will probably also want to take into consideration player's forward rotation 
    public virtual void Update()
    {
        //dist calc
        float dist = Vector3.Distance(transform.position, tpc.transform.position);

        //distance is interactive, but not in the list yet
        if (dist < interactDistance && !listOfObjs.interactiveObjects.ContainsKey(gameObject))
        {
            //add to interactive objects dictionary
            listOfObjs.interactiveObjects.Add(gameObject, dist);
        }
        //distance is interactive, already in list so just update dist value
        else if(dist < interactDistance && listOfObjs.interactiveObjects.ContainsKey(gameObject))
        {
            //update the dist value for this game obj
            listOfObjs.interactiveObjects[gameObject] = dist;
        }
        //distance no longer interactive, but in dict
        else if (dist > interactDistance && listOfObjs.interactiveObjects.ContainsKey(gameObject))
        {
            //remove from interactive objects dictionary
            listOfObjs.interactiveObjects.Remove(gameObject);
        }

        //this will only be interactive if it is the closest interactive object next to the player.
        //this is set in project settings as X for ps4, and E for keyboard
        if (Input.GetButtonDown("Interact") && interactive)
        {
            Interact();
        }
    }

    public virtual void UpdateInteractPrompt()
    {
        interactive = true;

        interactImage.sprite = interactSprite;

        interactText.text = interactiveString;
    }

    public virtual void DisableInteractPrompt()
    {
        interactive = false;

    }

    public virtual void Interact()
    {
        //do whatever the hell you want
    }
}
