using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

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
    protected Sprite normalSprite;
    protected Sprite interactSprite;
    protected Sprite clickSprite;

    //click distances checks on player
    protected float withinDistance = 10f; // for OnMouseOver
    public float withinDistanceActive = 5f; // for OnMouseDown

    //UI sounds
    protected AudioSource soundBoard;
    public AudioClip InteractSound;

    //controls when an object can be clicked
    public bool interactable, playerClicked;

    // lets us know if object is now held by player
    protected bool playerHolding;

    //Selection Wheel Menu variables
    public int selectionCounter; // number of interactable options
    protected Image selectionMenu; //menu itself 
    protected Sprite selectionMenuDisplay; // menu image -- this will vary based on the object
    protected List<GameObject> selectionButtons = new List<GameObject>(); //buttons in selection wheel
    public Sprite[] selectionImages; // button sprites

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

        //mouse cursor ref components
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        symbol.sprite = normalSprite;

        //Canvas refs
        canvasObject = GameObject.FindGameObjectWithTag("MainCanvas");
        graphicRaycaster = canvasObject.GetComponent<CanvasRaycaster>();

        //Selection wheel component refs
        if (selectionCounter > 1)
        {
            // get the menu object itself
            selectionMenu = GameObject.FindGameObjectWithTag("SelectionMenu").GetComponent<Image>();
            //find and load correct selectionMenuImage, store corresponding Buttons
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

        //assigns audio source
        soundBoard = cammy.GetComponent<AudioSource>(); 

    }

    //inheritable, checks distance
    public virtual void OnMouseEnter()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            symbol.sprite = interactSprite;
        }
    }

    //inheritable, should always play animation for player
    public virtual void OnMouseOver()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            symbol.sprite = interactSprite;
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
            symbol.sprite = normalSprite;
        }
    }

    //private check
    void OnMouseDown()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistanceActive && interactable)
        {
            handleClickSuccess();
        }
    }

    //inheritable, what happens when you click
    public virtual void handleClickSuccess()
    {
        playerClicked = true;
        if(selectionCounter > 1)
        {
            tpc.enabled = false;
            symbol.sprite = normalSprite;

            selectionMenu.enabled = true;
            selectionMenu.sprite = selectionMenuDisplay;
            

            for(int i=0; i < selectionCounter; i++)
            {
                selectionButtons[i].SetActive(true);
                selectionButtons[i].GetComponent<Image>().sprite = selectionImages[i];
            }
        }
        else
        {
            //changes mouse cursor and plays interact sound
            symbol.sprite = clickSprite;
            Play();
            symbol.sprite = normalSprite;
        }
    }

    //only runs when selection menu is on, then runs corresponding function in inherited scripts
    public virtual void Update()
    {
        if (selectionMenu != null && selectionMenu.enabled && playerClicked)
        {
            tpc.blubAnimator.SetBool("walking", false);
            tpc.blubAnimator.SetBool("running", false);
            tpc.blubAnimator.SetBool("idle", false);
            tpc.blubAnimator.SetBool("touchingPlant", true);

            if (selectionMenu.GetComponent<SelectionMenu>().clickTimer > selectionMenu.GetComponent<SelectionMenu>().clickWait)
            {
                graphicRaycaster.graphicsCastingOn = true;
            }

            if (graphicRaycaster.hitWorld)
            {
                DeactivateSelectionMenu();
            }

            if (selectionMenu.GetComponent<SelectionMenu>().selected)
            {
                selectionMenu.GetComponent<SelectionMenu>().selected = false;
                switch (selectionMenu.GetComponent<SelectionMenu>().selectedFunction)
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

        if(selectionMenu.enabled && !playerClicked)
        {
            interactable = false;
        }

        if(!selectionMenu.enabled && !playerHolding)
        {
            interactable = true;
        }
    }

    public virtual void Selection_One()
    {
        selectionMenu.GetComponent<SelectionMenu>().clickTimer = 0f;
    }

    public virtual void Selection_Two()
    {
        selectionMenu.GetComponent<SelectionMenu>().clickTimer = 0f;
    }

    public virtual void Selection_Three()
    {
        selectionMenu.GetComponent<SelectionMenu>().clickTimer = 0f;
    }

    public virtual void Selection_Four()
    {
        selectionMenu.GetComponent<SelectionMenu>().clickTimer = 0f;
    }

    //Call this whenever player is done interacting with an object
    public virtual void DeactivateSelectionMenu()
    {
        // set images to null and turn buttons off.
        playerClicked = false;
        tpc.enabled = true;
        symbol.sprite = normalSprite;

        selectionMenu.enabled = false;
        graphicRaycaster.graphicsCastingOn = false;
        graphicRaycaster.hitWorld = false;

        for (int i = 0; i < selectionCounter; i++)
        {
            selectionButtons[i].SetActive(false);
        }
    }

    //only used for handleClickSuccess
    void Play()
    {
        soundBoard.PlayOneShot(InteractSound);
    }
}









