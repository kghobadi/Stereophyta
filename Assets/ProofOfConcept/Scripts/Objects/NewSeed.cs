//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using TGS;

//public class NewSeed : MonoBehaviour
//{
//    GameObject _player;
//    FirstPersonController fpc;

//    public bool plantSeed;
//    public bool planting;
//    public AudioClip plantedSeed;
//    AudioSource soundBoard;
//    //which plant does this seed create?
//    public GameObject plant;
//    GameObject plantClone;

//    public float counter; // for planting 'animation'
//    public float fallSpeed;

//    Vector3 targetPos;

//    //TerrainGridSystem tgs;
    

//    //All possible texture references. Can use resources.Load for this stuff. 
//    public Texture2D groundTexture;
//    public Texture2D plantedTexture;
//    public Texture2D canClickTexture;

//    //controls plant Instant y pos
//    Vector3 plantSpawnPos;

//    public float withinPlantingRange;

//    bool textureShowing;

//    private GameObject bed;
//    private Bed sleepScript;

//    //public int decompositionDaysMin;
//    //public int decompositionDaysMax;
//    //int decompositionDay;

//    int currentCellIndex;
//    int previousCellIndex;

//    inventoryMan inventMan;
//    Inventory invent;

//    bool cursorChange, changeBack;
//    private Sprite normalSprite;
//    private Sprite clickSprite;
//    int frameCounter;

//    SpriteRenderer symbol;

//    void Start()
//    {
//        _player = GameObject.FindGameObjectWithTag("Player");
//        fpc = _player.GetComponent<FirstPersonController>();

//        soundBoard = Camera.main.GetComponent<AudioSource>();

//        //grabs Sun ref
//        bed = GameObject.FindGameObjectWithTag("Bed");
//        sleepScript = bed.GetComponent<Bed>();
//        //Random decompDay
//        //decompositionDay = Random.Range(decompositionDaysMin, decompositionDaysMax);
//        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol

//        //TerrainGridSystem Reference
//        //tgs = TerrainGridSystem.instance;

//        gameObject.name = "seed" + plant.name;

//        inventMan = GetComponent<inventoryMan>();
//        invent = _player.GetComponent<Inventory>();
        
//        //loads Cursor Sprites
//        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
//        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
//        frameCounter = 5;
//    }

//    void Update()
//    {
//        if (changeBack)
//        {
//            cursorChange = false;
//            changeBack = false;
//            symbol.sprite = normalSprite;
//        }
//        //Checks if has been picked up and equipped 
//        if (inventMan.underPlayerControl)
//        {
//            //Sends out raycast
//            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
//            RaycastHit hit;

            

//            //Checks if raycast hits
//            if (Physics.Raycast(ray, out hit))
//            {
//              //  Debug.Log("onyourfaceKas");
//                //Checks if the hit is a ground tile and within Distance for planting
//                if (hit.transform.gameObject.tag == "Ground" && Vector3.Distance(_player.transform.position, hit.point) <= withinPlantingRange && !textureShowing)
//                {
//                    //grabs Cell tile and index
//                    Cell fertile = tgs.CellGetAtPosition(hit.point, true);
//                    if(fertile != null)
//                    {
//                        int cellIndex = tgs.CellGetIndex(fertile);
//                        currentCellIndex = cellIndex;

//                        if (currentCellIndex != previousCellIndex)
//                        {
//                            previousCellIndex = currentCellIndex;
//                        }

//                        //checks if cell is fertile 
//                        if (tgs.CellGetTag(cellIndex) == 0)
//                        {
//                            //Sets texture to clickable
//                            cursorChange = true;
//                            changeBack = false;
//                            tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);

//                            //If player clicks, we plant seed and clear up Equip slot
//                            if (Input.GetMouseButtonDown(0))
//                            {
//                                cursorChange = false;
//                                changeBack = true;
//                                plantSeed = true;
//                                targetPos = hit.point;
//                                fpc.isHoldingSeed = false;
//                                inventMan.underPlayerControl = false;
//                                invent.somethingEquipped = false;

//                                invent.usedNowTakeAgain(inventMan.slotNumRetake);

//                            }

//                        }

//                        //If it's a new cell, set last cell back to fertileTexture
//                        if (tgs.CellGetTag(previousCellIndex) == 0)
//                            StartCoroutine(ChangeTexture(currentCellIndex, groundTexture));
//                    }
//                }

//            }

//            //This will be true either after a fruit decomposes, or after player plants seed

//        }
//        if (plantSeed)
//        {
//            //grabs Cell tile and index
//            Cell plantTile = tgs.CellGetAtPosition(targetPos, true);
//            int cellIndex = tgs.CellGetIndex(plantTile);

//            //checks if cell is Fertile
//            if (tgs.CellGetTag(cellIndex) == 0 || planting)
//            {
//                //                Debug.Log("planter");
//                //Centers seed on tile
//                transform.position = new Vector3(tgs.CellGetPosition(cellIndex).x, transform.position.y, tgs.CellGetPosition(cellIndex).z);
//                //Calls PlantSeed function on selected tile
//                PlantSeed(plantTile, cellIndex);

//            }
//        }
//        //always rotate seed in world space
//        transform.Rotate(0, 1, 0 * Time.deltaTime);

//        if (cursorChange)
//        {
//            symbol.sprite = clickSprite;
//            frameCounter--;
//            if (frameCounter < 0)
//            {
//                changeBack = true;
//                frameCounter = 5;
//            }
//        }

//        //if (inventMan.inInventory || !invent.somethingEquipped)
//        //{
//        //    cursorChange = false;
//        //    changeBack = true;
//        //}
//    }

//    public void PlantSeed(Cell tile, int index)
//    {
//        //  Debug.Log("planted Seed");
//        //unparents from player control   
//        transform.SetParent(null);

//        planting = true;
//        //Set tile tag to planted
//        tgs.CellSetTag(tile, 1);

//        //spirals seed downward into the ground
//        if (counter > 0)
//        {
//            transform.Translate(0, fallSpeed, 0);
//            counter -= 1 * Time.deltaTime;
//        }
//        else
//        {
//            if (plantClone != null)
//                Debug.Log(plantClone.name);

//            //This SHOULD be musical and on Clock
//            soundBoard.PlayOneShot(plantedSeed);

//            //Instantiate Plant and set position
//            plantSpawnPos = tgs.CellGetPosition(index);
//            plantClone = Instantiate(plant, plantSpawnPos, Quaternion.identity);

//            tgs.CellToggleRegionSurface(tgs.CellGetIndex(tile), true, plantedTexture);

//            //Destroy seed
//            Destroy(gameObject);
//        }
//    }



//    //Sets texture back to normals
//    IEnumerator ChangeTexture(int index, Texture2D texture)
//    {
//        textureShowing = true;
//        yield return new WaitForEndOfFrame();
//        tgs.CellToggleRegionSurface(index, true, texture);
//        textureShowing = false;
//    }
   



//}

