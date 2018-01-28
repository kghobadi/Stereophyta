using System.Collections;
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


    public virtual void Start()
    {
        //bedScript = GameObject.FindGameObjectWithTag("Bed").GetComponent<Bed>();
        //worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        _player = GameObject.FindGameObjectWithTag("Player"); //searches for Player
        cammy = GameObject.FindGameObjectWithTag("MainCamera"); //searches for Camera
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        //identifierObject = GameObject.FindGameObjectWithTag("Identifier");
        //paper = identifierObject.transform.GetChild(0).GetComponent<SpriteRenderer>();
        //pageNotifier = GameObject.Find("PageNotifier");

        //identifierObject.GetComponent<SpriteRenderer>().enabled = false;
        //paper.enabled = false;
        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        //        Debug.Log(normalSprite);
        symbol.sprite = normalSprite;

        soundBoard = cammy.GetComponent<AudioSource>(); //assigns audio source

        fpc = _player.GetComponent<FirstPersonController>();
        //startScale = transform.localScale;
    }

    public virtual void OnMouseEnter()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            //if (!worldMan.firstTimePickups[objNumber])
            //{
            //    identifierObject.GetComponent<SpriteRenderer>().enabled = true;
            //    paper.enabled = true;
            //}
            //cammy.GetComponent<camMouseLook>().sensitivityX = 1.5f;
            //cammy.GetComponent<camMouseLook>().sensitivityY = 1.5f;
            symbol.sprite = interactSprite;

        }
    }

    // can write an Update timer for Identifier if necessary

    public virtual void OnMouseExit()
    {
        if (interactable)
        {
            symbol.sprite = normalSprite;


            //if (!worldMan.firstTimePickups[objNumber])
            //{
            //    identifierObject.GetComponent<SpriteRenderer>().enabled = false;
            //    paper.enabled = false;
            //}
        }
    }

    public virtual void handleClickSuccess()
    {
        
        //if (!worldMan.firstTimePickups[objNumber])
        //{
        //    identifierObject.GetComponent<SpriteRenderer>().enabled = false;
        //    paper.enabled = false;
        //    worldMan.firstTimePickups[objNumber] = true;
        //    symbol.sprite = clickSprite;
        //    soundBoard.PlayOneShot(firstTimePickup);
        //    symbol.sprite = normalSprite;
        //    pageNotifier.GetComponent<SpriteRenderer>().enabled = true;
        //    if(bookPage != null)
        //    {
        //        worldMan.bookRef.bookPages[worldMan.bookRef.pageAdder] = bookPage;
        //        worldMan.bookRef.pageAdder++;
        //    }
        ////}
        //else
        //{
            symbol.sprite = clickSprite;
            Play();
        //}
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









