using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Ax : MonoBehaviour
{
    TerrainGridSystem tgs;

    public Texture2D groundTexture;

    public float axDistance;

    GameObject _player;

    GameObject currentTree;

    public GameObject crop;
    GameObject cropClone;

    public AudioSource cameraSource;
    public AudioClip cropYield;

    SpriteRenderer symbol;

    private Sprite normalSprite;
    private Sprite clickSprite;

    inventoryMan inventMan;
    int minCrop, maxCrop;

    WorldManager worldMan;

    public bool cursorChange, changeBack, swingAx, axBack;
    int frameCounter;

    float lerpVal;

    //public float lerpSpeed;
    //public Transform lerpTransform;

    void Start()
    {
        frameCounter = 5;
        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol
        inventMan = GetComponent<inventoryMan>();

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

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
                if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
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

            
            //Sends out raycast
            if (Input.GetMouseButton(0) && !swingAx && !axBack)
            {
                //Checks if raycast hits
                if (Physics.Raycast(ray, out hit))
                {
                    //Checks if the hit is a ground tile and within Distance for hoeing
                    if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
                    {
                        cursorChange = true;
                        swingAx = true;
                        lerpVal = 0;
                        currentTree = hit.transform.gameObject;
                        Cell tree = tgs.CellGetAtPosition(hit.point, true);
                        int index = currentTree.GetComponent<NewPlantLife>().cellIndex;
                        tgs.CellToggleRegionSurface(index, true, groundTexture);
                        tgs.CellSetTag(tree, 0);
                        //play sound
                        //play falling animation

                        if (currentTree.GetComponent<NewPlantLife>().ageCounter == 1)
                        {
                            SpawnCrops(1, 3);
                        }
                        else if (currentTree.GetComponent<NewPlantLife>().ageCounter == 2)
                        {
                            SpawnCrops(3, 6);

                        }
                        else if (currentTree.GetComponent<NewPlantLife>().ageCounter == 3)
                        {
                            SpawnCrops(3, 6);

                        }

                        cameraSource.PlayOneShot(cropYield);
                        Destroy(hit.transform.gameObject);

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

    void SpawnCrops(int min, int max)
    {
        int randoCrops = Random.Range(min, max);
        int randomRotation = Random.Range(0, 360);
        for (int i = 0; i < randoCrops; i++)
        {
            Vector3 xyz = (Vector3)Random.insideUnitSphere * 1 + Vector3.up;
            Vector3 spawnPosition = xyz + currentTree.transform.position;
            cropClone = Instantiate(crop, spawnPosition, Quaternion.Euler(0, randomRotation, 0));
        }
    }
}
