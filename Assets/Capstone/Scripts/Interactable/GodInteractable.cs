using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[Serializable]
public abstract class GodInteractable : MonoBehaviour
{
    //player refs
    protected GameObject cammy; // camera reference

    //mouse cursor images 
    protected Image symbol; // 2d sprite renderer icon reference
    //protected List<Sprite> walkingSprites = new List<Sprite>(); // walking feet cursor
    protected Sprite normalSprite;
    protected Sprite interactSprite; // hand for interact
    protected Sprite clickSprite; 

    //UI sounds
    protected AudioSource soundBoard;
    public AudioClip InteractSound;

    //controls when an object can be clicked
    public bool interactable;

    // lets us know if object is now held by player
    protected bool playerHolding;

    //Canvas vars
    protected GameObject canvasObject;
    protected CanvasRaycaster graphicRaycaster;


    public float holdTimer =0, holdTimerWait=0.25f;

    public virtual void Start()
    {
        // player components
        cammy = GameObject.FindGameObjectWithTag("MainCamera"); //searches for Camera

        //mouse cursor ref components & animate walking UI 
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        //for (int i = 1; i < 4; i++)
        //{
        //    walkingSprites.Add(Resources.Load<Sprite>("CursorSprites/Foot" + i));
        //    symbol.gameObject.GetComponent<AnimateUI>().animationSprites.Add(Resources.Load<Sprite>("CursorSprites/Foot" + i));
        //}
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");

        //symbol.sprite = walkingSprites[0];
        //symbol.gameObject.GetComponent<AnimateUI>().active = true;
        symbol.sprite = normalSprite;

        symbol.gameObject.GetComponent<AnimateUI>().active = false;
        //Canvas refs
        canvasObject = GameObject.FindGameObjectWithTag("MainCanvas");
        graphicRaycaster = canvasObject.GetComponent<CanvasRaycaster>();

        //assigns audio source
        soundBoard = cammy.GetComponent<AudioSource>(); 

    }

    //inheritable, checks distance
    public virtual void OnMouseEnter()
    {
        if (interactable)
        {
            symbol.sprite = interactSprite;
        }
    }

    //inheritable, should always play animation for player
    public virtual void OnMouseOver()
    {
        if (interactable)
        {
            symbol.sprite = interactSprite;
            
        }
    }

    //inheritable 
    public virtual void OnMouseExit()
    {
        if (interactable)
        {
            symbol.sprite = normalSprite;
        }
    }

    //private check
    void OnMouseDown()
    {
        if (interactable)
        {
            handleClickSuccess();
        }
    }

    //inheritable, what happens when you click
    public virtual void handleClickSuccess()
    {
        if (!playerHolding && interactable)
        {
            //changes mouse cursor and plays interact sound
            symbol.sprite = clickSprite;
            Play();
            playerHolding = true;
            symbol.sprite = normalSprite;
        }
         
        
    }

    //only runs when selection menu is on, then runs corresponding function in inherited scripts
    public virtual void Update()
    {
        if (playerHolding)
        {
            interactable = false;

            holdTimer += Time.deltaTime;

            if (Input.GetMouseButtonDown(0) && holdTimer > holdTimerWait)
            {
                DropObject();
            }

            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            float cameraDif = Camera.main.transform.position.y - transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif));

            Vector3 hoverLocation = new Vector3(worldpos.x, transform.position.y, worldpos.z);

            transform.position = hoverLocation;
        }

       
    }

    public virtual void DropObject()
    {
        playerHolding = false;
        interactable = true;
        holdTimer = 0;
        symbol.sprite = normalSprite;
        //transform.position = mouse pos and y on ground
    }
    
    //only used for handleClickSuccess
    void Play()
    {
        soundBoard.PlayOneShot(InteractSound);
    }

}









