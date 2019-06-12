using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

//abstract class to build tools from
public abstract class Tool : MonoBehaviour {
    //player vars
    protected GameObject player;
    protected ThirdPersonController tpc;
    //audio source reference
    protected AudioSource toolSource;
    public Animator toolAnimator;
    //rhythm vars
    public bool showRhythm;
    public int timeScale;

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

    public float interactDist = 10f, leaveDist = 15f;

    //set tool refs in awake so that inventory can disable them at start
    public virtual void Awake()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

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
        inventoryScript.myItems.Add(gameObject);
        inventoryScript.toolSprites.Add(inventorySprite);
        //set current inventory item to this
        if(inventoryScript.currenItemObj != null)
        {
            inventoryScript.currenItemObj.SetActive(false);
        }
          
        inventoryScript.currenItemObj = gameObject;
        inventoryScript.currentItem = inventoryScript.myItems.Count - 1;
        inventoryScript.SetToolSprite();

        if (playSound)
        {
            //play this tools pickup sound
            inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
        }

        DeactivatePrompt();
        //book notification??
    }

    public void OnEnable()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
    }

    public void OnDisable()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public virtual void OnThirtySecond(BeatArgs e)
    {
            switch (timeScale)
            {
                case 0:
                    if (e.TickMask[TickValue.Measure])
                    {
                        // rhythm creation / beat visual
                        showRhythm = true;
                    }
                    break;
                case 1:
                    if (e.TickMask[TickValue.Quarter])
                    {
                        // rhythm creation / beat visual
                        showRhythm = true;
                    }
                    break;
                case 2:
                    if (e.TickMask[TickValue.Eighth])
                    {
                        // rhythm creation / beat visual
                        showRhythm = true;
                    }
                    break;
                case 3:
                    if (e.TickMask[TickValue.Sixteenth])
                    {
                        // rhythm creation / beat visual
                        showRhythm = true;
                    }
                    break;
                case 4:
                    if (e.TickMask[TickValue.ThirtySecond])
                    {
                        // rhythm creation / beat visual
                        showRhythm = true;
                    }
                    break;
            }
    }

    public virtual void Update ()
    {
        //just for pick up logic 
        if (!hasBeenAcquired)
        {
            //dist from player
            float dist = Vector3.Distance(transform.position, player.transform.position);
            //if player is close
            if(dist < interactDist)
            {
                playerWasNear = true;
                //so switch inv is not called 
                inventoryScript.canSwitchInv = false;
                inventoryScript.inputTimer = 0.25f;

                //fade in those prompts
                if (pickUpText.color.a < 0.5f)
                    ShowPickupPrompt();

                //pick up when player presses E
                if (Input.GetKeyDown(KeyCode.E))
                {
                    PickUpTool(true);
                }
            }
            //player has left
            else if(dist > leaveDist)
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
