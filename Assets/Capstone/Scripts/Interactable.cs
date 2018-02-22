using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public abstract class Interactable : MonoBehaviour
{
    protected GameObject _player;
    protected GameObject cammy; // camera reference
    protected Image symbol; // 2d sprite renderer icon reference
    protected Sprite normalSprite;
    protected Sprite interactSprite;
    protected Sprite clickSprite;

    protected float withinDistance = 10f;
    public float withinDistanceActive = 3f;

    protected AudioSource soundBoard;
    public AudioClip InteractSound, firstTimePickup;

    public bool interactable;

    protected ThirdPersonController tpc;

    public GameObject rightArmObj;

    public Gate gateScript; // can grab reference IN GATE SCRIPT

    protected bool playerHolding;

    public bool interactionFulfilled, hasBeenChecked, hasBeenAdded;
    public int interactionCounter = 0;
    public int interactionsNecessary;

    public virtual void Start()
    {

        _player = GameObject.FindGameObjectWithTag("Player"); //searches for Player
        cammy = GameObject.FindGameObjectWithTag("MainCamera"); //searches for Camera
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol

        tpc = _player.GetComponent<ThirdPersonController>();
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        //        Debug.Log(normalSprite);
        symbol.sprite = normalSprite;

        soundBoard = cammy.GetComponent<AudioSource>(); //assigns audio source

        rightArmObj = GameObject.FindGameObjectWithTag("rightArm");
    }

    public virtual void OnMouseEnter()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            
            symbol.sprite = interactSprite;

        }
    }

    public virtual void OnMouseOver()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            symbol.sprite = interactSprite;
            if(Input.GetMouseButtonDown(1) || Input.GetMouseButtonDown(0))
            {
                if(gateScript!= null)
                {
                    //increment interactionCounter
                    interactionCounter++;
                    if (interactionCounter >= interactionsNecessary)
                    {
                        interactionFulfilled = true;
                        gateScript.CheckAreaComplete();
                    }
                }
               
            }
        }
    }

    public virtual void OnMouseExit()
    {
        if (interactable)
        {
            symbol.sprite = normalSprite;

        }
    }

    public virtual void handleClickSuccess()
    {
        //changes mouse cursor and plays interact sound
        symbol.sprite = clickSprite;
        Play();
        symbol.sprite = normalSprite;

        //increment interactionCounter
        if (gateScript != null)
        {
            //increment interactionCounter
            interactionCounter++;
            if (interactionCounter >= interactionsNecessary)
            {
                interactionFulfilled = true;
                gateScript.CheckAreaComplete();
            }
        }
    }



    void OnMouseDown()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistanceActive && interactable)
        {
            handleClickSuccess();

        }

    }

    void Play()
    {
        soundBoard.PlayOneShot(InteractSound);
    }
   


}









