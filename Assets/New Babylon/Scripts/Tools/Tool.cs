using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;
using Player;

namespace Items
{
    //abstract class to build tools from
    public abstract class Tool : RhythmProducer
    {
        //audio source reference
        protected AudioSource toolSource;
        [Header("Tool Vars")]
        public Animator toolAnimator;

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
        [Header("Initial Pickup Prompt")]
        public Text pickUpText;
        public string pickUpMessage;
        public FadeUI[] interactPrompts;
        BookPage bookPage;

        public float interactDist = 10f;
        [Header("Item grouping")]
        //my item script
        public Item itemScript;
        //my group leader
        public Item itemGrouper;
        public bool multiple;
        
        //set tool refs in awake so that inventory can disable them at start
        public override void Awake()
        {
            base.Awake();
            //tool components
            toolSource = GetComponent<AudioSource>();
            toolAnimator = GetComponent<Animator>();
            toolAnimator.enabled = false;

            //inventory ref
            inventory = GameObject.FindGameObjectWithTag("Inventory");
            inventoryScript = inventory.GetComponent<Inventory>();
            itemScript = GetComponent<Item>();
            //my book page
            bookPage = GetComponent<BookPage>();
        }

        //called to pick up tool for the first time
        public virtual void PickUpTool(bool playSound)
        {
            hasBeenAcquired = true;

            //child to inventory & turn on animator
            transform.SetParent(inventory.transform);
            toolAnimator.enabled = true;

            //set local transform
            transform.localPosition = localPos;
            transform.localEulerAngles = localRot;
            transform.localScale = localScale;
            
            //check for previous pickup so we can just add to count 
            if(multiple)
            {
                Item itemGroup = inventoryScript.CheckForToolType(itemScript.toolType);

                //found my tool group
                if(itemGroup != null)
                {
                    AddToolToGroup(itemGroup);
                }
                //couldnt find the group, first time pickup
                else
                {
                    AddToolToInventory();

                    //has a book page to add 
                    if (bookPage)
                    {
                        bookPage.AddPage();
                    }
                }
            }
            //only one of this tool type, just add to inventory
            else
            {
                AddToolToInventory();

                //has a book page to add 
                if (bookPage)
                {
                    bookPage.AddPage();
                }
            }

            //play this tools pickup sound
            if (playSound)
            {
                inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
            }

            DeactivatePrompt();
            //book notification??
        }

        //add tool to items list
        protected virtual void AddToolToInventory()
        {
            inventoryScript.AddItemToInventory(gameObject, inventorySprite);
            inventoryScript.SwitchToItem(gameObject);
            itemGrouper = itemScript;
        }

        //add to group, and set my ItemScript ref to the itemGroup
        protected virtual void AddToolToGroup(Item group)
        {
            inventoryScript.AddItemToGroup(group, gameObject);
            inventoryScript.SwitchToItem(group.gameObject);
            itemGrouper = group;
        }

        //removes this from the fan group
        protected virtual void RemoveFromGroup()
        {
            itemGrouper.toolGroup.Remove(gameObject);
            itemGrouper.itemCount--;
            itemGrouper = null;
        }

        //remove windfan from inventory completely 
        protected virtual void RemoveFromInventory()
        {
            //remove from inventory lists 
            int index = inventoryScript.myItems.IndexOf(gameObject);
            inventoryScript.RemoveItemFromInventory(index);
            //set obj active and switch inventory 
            inventoryScript.SwitchItem(true, true);
        }

        public virtual void Update()
        {
            //just for pick up logic 
            if (!hasBeenAcquired)
            {  
                //get input device 
                var inputDevice = InputManager.ActiveDevice;
                //dist from player
                float dist = Vector3.Distance(transform.position, player.transform.position);
                //if player is close
                if (dist < interactDist)
                {
                    playerWasNear = true;
                    //so switch inv is not called 
                    inventoryScript.canSwitchItems = false;
                    inventoryScript.inputTimer = 0.25f;

                    //fade in those prompts
                    if (pickUpText.color.a < 0.5f)
                        ShowPickupPrompt();

                    //pick up when player presses E
                    if (Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed)
                    {
                        PickUpTool(true);
                    }
                }
                //player has left
                else if (dist > (interactDist + 5f))
                {
                    //fade out prompts
                    if (playerWasNear)
                    {
                        DeactivatePrompt();
                        playerWasNear = false;
                    }

                }
            }

            //always set tempo to player Tempo while acquired
            if (hasBeenAcquired)
            {
                timeScale = tpc.playerTempo.timeScale;
            }
        }

        //this will be filled in by each tool individually
        public virtual void MainAction()
        {

        }

        public virtual void PlaySound(AudioSource audSource, AudioClip[] sounds)
        {
            int randomSound = Random.Range(0, sounds.Length);
            audSource.PlayOneShot(sounds[randomSound]);
        }


        //pick up prompt for when player is near 
        void ShowPickupPrompt()
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
        void DeactivatePrompt()
        {
            //Debug.Log("deactivating prompt");
            //fade em out
            for (int i = 0; i < interactPrompts.Length; i++)
            {
                interactPrompts[i].FadeOut();
            }
        }
    }

}