using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ax : MonoBehaviour
{

    public float axDistance;

    GameObject _player;

    AudioSource cameraSource;
    public AudioClip cropYield;

    SpriteRenderer symbol;

    private Sprite normalSprite;
    private Sprite clickSprite;

    inventoryMan inventMan;
    
    public bool cursorChange, changeBack, swingAx, axBack;
    int frameCounter;

    float lerpVal;
    
    void Start()
    {
        frameCounter = 5;

        _player = GameObject.FindWithTag("Player");
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol
        inventMan = GetComponent<inventoryMan>();
        cameraSource = Camera.main.GetComponent<AudioSource>();

        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
    }


    void Update()
    {
        //Checks if has been picked up and equipped 
        if (inventMan.underPlayerControl)
        {
            GetComponent<BoxCollider>().enabled = false;
            if (!swingAx && !axBack)
            {
                transform.localEulerAngles = new Vector3(40, 100, 30);
            }

            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                //Checks if the hit is a ground tile and within Distance for hoeing
                if (hit.transform.gameObject.tag == "Plant" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
                {
                    Debug.Log("hit");
                    cursorChange = true;
                    changeBack = false;
                }

            }
            if (changeBack)
            {
                symbol.sprite = normalSprite;
                cursorChange = false;
                changeBack = false;
            }

            if (Input.GetMouseButton(0) && !swingAx && !axBack)
            {
                //Checks if raycast hits
                if (Physics.Raycast(ray, out hit))
                {
                    //Checks if the hit is a ground tile and within Distance for hoeing
                    if (hit.transform.gameObject.tag == "Plant" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
                    {
                        cursorChange = true;
                        swingAx = true;
                        lerpVal = 0;
                        
                        Destroy(hit.transform.gameObject);
                        //SpawnSeed();

                    }
                }
            }
            if (swingAx)
            {
                transform.localEulerAngles = Vector3.Lerp(new Vector3(40, 100, 30), new Vector3(-50, 50, 36), lerpVal);
                lerpVal += Time.deltaTime * 5;
                if (lerpVal > 0.98f)
                {

                    swingAx = false;
                    axBack = true;
                    Debug.Log("this happened");
                }
            }

            if (axBack)
            {
                lerpVal -= Time.deltaTime * 1.5f;
                transform.localEulerAngles = Vector3.Lerp(new Vector3(40, 100, 30), new Vector3(-50, 50, 36), lerpVal);
                if (lerpVal < 0.02f)
                {
                    axBack = false;
                }
            }

            lerpVal = Mathf.Clamp01(lerpVal);

            if (cursorChange)
            {
                symbol.sprite = clickSprite;
                frameCounter--;
                if (frameCounter < 0)
                {
                    changeBack = true;
                    frameCounter = 5;
                }
            }
        }
    }

   void SpawnSpeed()
    {
        // use this to spawn a seed when you limit the numbers
    }
}
