using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Water : MonoBehaviour
{

    TerrainGridSystem tgs;

    public Texture2D plantedTexture;
    public Texture2D wateredTexture;

    public float waterDistance;


    //ParticleSystem waterEffect;
	public ParticleSystem waterSpray;

    GameObject _player;

    NewPlantLife currentPlant;

    public AudioSource cameraSource;
    public AudioClip wateringSound;

    private GameObject bed;
    private Bed sleepScript;

    public int particleAmount;

    inventoryMan inventMan;

    SpriteRenderer symbol;

    private Sprite normalSprite;
    private Sprite clickSprite;

    bool cursorChange, changeBack, rotateCan, rotateCanBack;
    int frameCounter;

    //Sprite symbol; use to change cursor sprite

    void Start()
    {
        frameCounter = 5;
        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;
        cameraSource = Camera.main.GetComponent<AudioSource>();

        _player = GameObject.FindWithTag("Player");
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol
        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();

        //waterEffect = GetComponentInChildren<ParticleSystem>();
        //waterEffect.Stop();
		waterSpray.Stop();
        inventMan = GetComponent<inventoryMan>();

        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
    }

    // Update is called once per frame
    void Update()
    {
        if (inventMan.underPlayerControl )
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                //Checks if the hit is a ground tile and within Distance for hoeing
                if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= waterDistance)
                {
                    cursorChange = true;
                    changeBack = false;
                }
            }

            if (changeBack)
            {
                cursorChange = false;
                changeBack = false;
                symbol.sprite = normalSprite;
            }

            if (!rotateCan && !rotateCanBack)
            {
                //Sends out raycast
                if (Input.GetMouseButtonDown(0))
                {

                    //cameraSource.Play ();

                    //Checks if raycast hits
                    if (Physics.Raycast(ray, out hit))
                    {
                        //Checks if the hit is a ground tile and within Distance for hoeing
                        if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= waterDistance)
                        {
                            //Can add cursor sprite change here
                            //lerp position forward 60 on x
                            rotateCan = true;
                            cursorChange = true;
                            currentPlant = hit.transform.gameObject.GetComponent<NewPlantLife>();

                        }
                    }
                }
            }
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
            if (rotateCan)
            {
                transform.localEulerAngles = Vector3.MoveTowards(transform.localEulerAngles, new Vector3(40, 0, 0), Time.deltaTime * 100);
				waterSpray.Emit(particleAmount);
                if (transform.localEulerAngles == new Vector3(40, 0, 0))
                {
					
					//waterEffect.Emit(particleAmount); // water particles
                    cameraSource.PlayOneShot(wateringSound, 1f);
                    if (!currentPlant.hasBeenWateredToday)
                    {
                        currentPlant.hasBeenWateredToday = true;
                        currentPlant.hasBeenWatered = true;

                        //to change ground texture to water texture
                        Cell tree = tgs.CellGetAtPosition(hit.transform.position, true);
                        int index = currentPlant.cellIndex;
                        tgs.CellToggleRegionSurface(index, true, wateredTexture);

                    }
                    rotateCan = false;
                    rotateCanBack = true;
                }
            }
            if (rotateCanBack)
            {
				waterSpray.Emit(particleAmount);
                transform.localEulerAngles = Vector3.MoveTowards(transform.localEulerAngles, Vector3.zero, Time.deltaTime * 100);
                if (transform.localEulerAngles == Vector3.zero)
                {
                    rotateCanBack = false;
                }
            }

        }
       
    }
}

