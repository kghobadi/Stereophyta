﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public abstract class Interactable : MonoBehaviour
{
    protected GameObject _player;
    protected GameObject cammy; // camera reference
    protected Image symbol; // 2d sprite renderer icon reference
    protected Sprite normalSprite;
    private Sprite interactSprite;
    private Sprite clickSprite;

    //for hovering over objects
    protected GameObject identifierObject;
    protected SpriteRenderer paper;
    public Sprite bookPage;

    //public Vector3 startScale;
    //public float scaleFactor;
    //public Material outlineShader;


    protected float withinDistance = 10f;
    public float withinDistanceActive = 3f;

    protected AudioSource soundBoard;
    public AudioClip InteractSound, firstTimePickup;

    public bool interactable;

    protected FirstPersonController fpc;

    public int objNumber;
    protected WorldManager worldMan;

    protected GameObject pageNotifier;
    protected Bed bedScript;
    protected ThirdPersonController tpc;

    protected GameObject rightArmObj;


    protected bool playerHolding;

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
        
        
            symbol.sprite = clickSprite;
            Play();

            symbol.sprite = normalSprite;
     
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









