using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[Serializable]
public struct ButtonImages
{
    public Sprite[] buttonImages; //array of images to allow for button pic or animation
}

[Serializable]
public abstract class Interactable : MonoBehaviour
{
    //player refs
    protected GameObject _player; //player object
    protected GameObject cammy; // camera reference
    protected ThirdPersonController tpc; //player controller
    public GameObject rightArmObj; //where objects are held by player

    //mouse cursor images 
    protected Image symbol; // 2d sprite renderer icon reference
    protected List<Sprite> walkingSprites = new List<Sprite>(); // walking feet cursor
    protected Sprite interactSprite; // hand for interact
    protected Sprite clickSprite;

    //click distances checks on player
    protected WorldManager _worldManager; //used for optimization 
    protected int enabledCounter = 0; // used to count # of enables
    protected float distanceFromPlayer; // stores distance away
    protected float canSeeDistance = 15f; // for OnMouseOver
    public float canClickDistance = 10f; // for OnMouseDown

    //UI sounds
    protected AudioSource soundBoard;
    public AudioClip InteractSound;

    //controls when an object can be clicked
    public bool interactable, playerClicked;

    // lets us know if object is now held by player
    protected bool playerHolding, buttonsOn;

    //Selection Wheel Menu variables
    public int selectionCounter; // number of interactable options
    protected Image selectionMenu; //menu itself 
    protected SelectionMenu menuScript;
    protected Sprite selectionMenuDisplay; // menu image -- this will vary based on the object
    protected List<GameObject> selectionButtons = new List<GameObject>(); //buttons in selection wheel
    public ButtonImages[] selectionImages; // button sprite arrays

    //Canvas vars
    protected GameObject canvasObject;
    protected CanvasRaycaster graphicRaycaster;


    public virtual void Start()
    {
        // player components
        _player = GameObject.FindGameObjectWithTag("Player"); //searches for Player
        tpc = _player.GetComponent<ThirdPersonController>();
        cammy = GameObject.FindGameObjectWithTag("MainCamera"); //searches for Camera
        rightArmObj = GameObject.FindGameObjectWithTag("rightArm");
        _worldManager = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

        //mouse cursor ref components & animate walking UI 
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        for (int i = 1; i < 4; i++)
        {
            walkingSprites.Add(Resources.Load<Sprite>("CursorSprites/Foot" + i));
            symbol.gameObject.GetComponent<AnimateUI>().animationSprites.Add(Resources.Load<Sprite>("CursorSprites/Foot" + i));
        }
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");

        symbol.sprite = walkingSprites[0];
        symbol.gameObject.GetComponent<AnimateUI>().active = true;

        //Canvas refs
        canvasObject = GameObject.FindGameObjectWithTag("MainCanvas");
        graphicRaycaster = canvasObject.GetComponent<CanvasRaycaster>();

        //Selection wheel component refs
        if (selectionCounter > 1)
        {
            // get the menu object itself
            selectionMenu = GameObject.FindGameObjectWithTag("SelectionMenu").GetComponent<Image>();

            //store script ref
            menuScript = selectionMenu.GetComponent<SelectionMenu>();

            //find and load correct selectionMenuImage, store corresponding Buttons (function at bottom)
            SwitchSelectionButtons();
        }

        //assigns audio source
        soundBoard = cammy.GetComponent<AudioSource>(); 

    }

    //inheritable, checks distance
    public virtual void OnMouseEnter()
    {
        if (distanceFromPlayer <= canSeeDistance && interactable)
        {
            symbol.sprite = interactSprite;
            symbol.gameObject.GetComponent<AnimateUI>().active = false;
        }
    }

    //inheritable, should always play animation for player
    public virtual void OnMouseOver()
    {
        if (distanceFromPlayer <= canSeeDistance && interactable)
        {
            symbol.sprite = interactSprite;
            symbol.gameObject.GetComponent<AnimateUI>().active = false;
            tpc.blubAnimator.SetBool("walking", false);
            tpc.blubAnimator.SetBool("running", false);
            tpc.blubAnimator.SetBool("idle", false);
            tpc.blubAnimator.SetBool("touchingPlant", true);
            _player.transform.LookAt(new Vector3(transform.position.x, _player.transform.position.y, transform.position.z));
        }
    }

    //inheritable 
    public virtual void OnMouseExit()
    {
        if (interactable)
        {
            tpc.blubAnimator.SetBool("touchingPlant", false);
            symbol.sprite = walkingSprites[0];
            symbol.gameObject.GetComponent<AnimateUI>().active = true;
        }
    }

    //private check
    void OnMouseDown()
    {
        if (distanceFromPlayer <= canClickDistance && interactable)
        {
            handleClickSuccess();
        }
    }

    //inheritable, what happens when you click
    public virtual void handleClickSuccess()
    {
        playerClicked = true;
        SwitchSelectionButtons();
        if(selectionCounter > 1)
        {
            tpc.enabled = false;
            symbol.sprite = interactSprite;
            symbol.gameObject.GetComponent<AnimateUI>().active = false;

            selectionMenu.enabled = true;
            selectionMenu.sprite = selectionMenuDisplay;
            buttonsOn = true;
            
            //sets selection Menu button images
            for(int i=0; i < selectionCounter; i++)
            {
                selectionButtons[i].SetActive(true);
                selectionButtons[i].GetComponent<Image>().sprite = selectionImages[i].buttonImages[0];

                //if the image array is greater than 1, animate it!
                if(selectionImages[i].buttonImages.Length > 1)
                {
                    selectionButtons[i].GetComponent<AnimateDialogue>().animationSprites = selectionImages[i].buttonImages;
                    selectionButtons[i].GetComponent<AnimateDialogue>().active = true;
                }
            }
        }
        else
        {
            //changes mouse cursor and plays interact sound
            symbol.sprite = clickSprite;
            Play();
        }
    }

    //only runs when selection menu is on, then runs corresponding function in inherited scripts
    public virtual void Update()
    {
        //stored for all the other stuff too 
        distanceFromPlayer = Vector3.Distance(transform.position, _player.transform.position);

        //store current activation state
        bool isActive = gameObject.activeInHierarchy;
        //Debug.Log(isActive);

        //if object is active and too far from player, turn off
        if(isActive && distanceFromPlayer > _worldManager.activationDistance)
        {
            _worldManager.allInactiveObjects.Add(gameObject);
            gameObject.SetActive(false);
        }
        
        //to proceed, need selectionMenu
        if (selectionMenu == null) return;

        if (graphicRaycaster.hitWorld)
        {
            DeactivateSelectionMenu();
        }

        //store selectionMenu.enabled
        bool selectionMenuEnabled = selectionMenu.enabled;

        if (selectionMenuEnabled && playerClicked)
        {
            symbol.sprite = interactSprite;
            symbol.gameObject.GetComponent<AnimateUI>().active = false;

            tpc.blubAnimator.SetBool("walking", false);
            tpc.blubAnimator.SetBool("running", false);
            tpc.blubAnimator.SetBool("idle", false);
            tpc.blubAnimator.SetBool("touchingPlant", true);

            if (menuScript.clickTimer > menuScript.clickWait && !graphicRaycaster.graphicsCastingOn)
            {
                graphicRaycaster.graphicsCastingOn = true;
            }

            if (menuScript.selected)
            {
                menuScript.selected = false;
                switch (menuScript.selectedFunction)
                {
                    case 1:
                        Selection_One();
                        break;
                    case 2:
                        Selection_Two();
                        break;
                    case 3:
                        Selection_Three();
                        break;
                    case 4:
                        Selection_Four();
                        break;
                }
            }
        }

        if(selectionMenuEnabled && !playerClicked)
        {
            interactable = false;
        }

        if(!selectionMenuEnabled && !playerHolding)
        {
            interactable = true;
        }

        if (!selectionMenuEnabled && buttonsOn)
        {
            for (int i = 0; i < selectionCounter; i++)
            {
                selectionButtons[i].GetComponent<AnimateDialogue>().active = false;
                selectionButtons[i].SetActive(false);
            }
            playerClicked = false;
            buttonsOn = false;
        }
    }

    public virtual void Selection_One()
    {
        menuScript.clickTimer = 0f;
    }

    public virtual void Selection_Two()
    {
        menuScript.clickTimer = 0f;
    }

    public virtual void Selection_Three()
    {
        menuScript.clickTimer = 0f;
    }

    public virtual void Selection_Four()
    {
        menuScript.clickTimer = 0f;
    }

    //Call this whenever player is done interacting with an object
    public virtual void DeactivateSelectionMenu()
    {
        // set images to null and turn buttons off.
        selectionMenu.enabled = false;
        graphicRaycaster.graphicsCastingOn = false;
        graphicRaycaster.hitWorld = false;
        playerClicked = false;

        for (int i = 0; i < selectionCounter; i++)
        {
            selectionButtons[i].GetComponent<AnimateDialogue>().active = false;
            selectionButtons[i].SetActive(false);
        }

        
        tpc.enabled = true;

        symbol.sprite = walkingSprites[0];
        symbol.gameObject.GetComponent<AnimateUI>().active = true;
        //Debug.Log("deactivated");
    }

    //only used for handleClickSuccess
    void Play()
    {
        soundBoard.PlayOneShot(InteractSound);
    }

    public virtual void SwitchSelectionButtons()
    {
        selectionButtons.Clear();

        switch (selectionCounter)
        {
            case 2:
                selectionMenuDisplay = Resources.Load<Sprite>("SelectionMenus/SelectionWheel2");
                selectionButtons.Add(selectionMenu.transform.GetChild(0).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(1).gameObject);
                break;
            case 3:
                selectionMenuDisplay = Resources.Load<Sprite>("SelectionMenus/SelectionWheel3");
                selectionButtons.Add(selectionMenu.transform.GetChild(2).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(3).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(4).gameObject);
                break;
            case 4:
                selectionMenuDisplay = Resources.Load<Sprite>("SelectionMenus/SelectionWheel4");
                selectionButtons.Add(selectionMenu.transform.GetChild(5).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(6).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(7).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(8).gameObject);
                break;
        }
    }

    //called when the script or object is disabled
    public virtual void OnDisable()
    {
        //specify this in whichever objects need it
        StopAllCoroutines();
    }

    public virtual void OnEnable()
    {
        enabledCounter++;
        //specify this in whichever objects need it
    }
}









