using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using InControl;

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

        public float interactDist = 10f;

        //set tool refs in awake so that inventory can disable them at start
        public override void Awake()
        {
            base.Awake();

            toolSource = GetComponent<AudioSource>();
            toolAnimator = GetComponent<Animator>();
            toolAnimator.enabled = false;

            //inventory ref
            inventory = GameObject.FindGameObjectWithTag("Inventory");
            inventoryScript = inventory.GetComponent<Inventory>();
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

            //add to tools list,
            inventoryScript.AddItemToInventory(gameObject, inventorySprite);
            inventoryScript.SwitchToItem(gameObject);
            //play this tools pickup sound
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