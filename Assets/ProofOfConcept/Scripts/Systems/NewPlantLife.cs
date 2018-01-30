//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using TGS;
//public class NewPlantLife : MonoBehaviour
//{
//    public bool plantedInEditor;
//    //public Texture2D plantedTexture;

//    //bool fruitGrowing;
//    //public int fruitAmount;
//    public int ageCounter, deathCounter;
//    public int growthPeriod, growthPeriodSapling, growthPeriodAdult, growthPeriodOld;

//    public int extraLifeMax;
//    int extraLifeCounter;


//    public bool hasBeenWatered;
//    public bool hasBeenWateredToday;

//	mixOutAmb ambiance;

//    //AudioHelm.Sequencer seq;

//    //playSequence playSeq;
//    public enum PlantType
//    {
//        CIRCLE, SQUARE, TRIANGLE
//    }

//    public PlantType thisPlant;

//    public GameObject sapling, young, adult, old, stump;
//    private GameObject saplingClone, youngClone, adultClone, oldClone, stumpClone; // can still add or remove from life cycle
//    private Transform currentTree;
//    //public GameObject fruit;
//    //GameObject fruitClone;
//    private GameObject bed;
//    private Bed sleepScript;
//    bool hasGrown;
//    private AudioSource treeSounds;
//    //public AudioClip growthSound;
//    //newSequencePlay playAud;
//    //public float fruitYpos;
//    int randomRotation;
//    TerrainGridSystem tgs;
//    Cell groundTile;
//    public int cellIndex;
//    public List<Cell> neighbors = new List<Cell>();
//    public List<int> neighborIndexes = new List<int>();
//    public Texture2D growingTexture;
//    public Texture2D groundTexture;

//    public Vector3[] neighbourPos;
//    //List<AudioHelm.Note> note;
//    //AudioHelm.Note newNote;

//    public GameObject crop;
//    GameObject cropClone;

//    cellManager cellMan;

//    void Awake()
//    {
//        //seq = GetComponent<AudioHelm.Sequencer>();
//        //playAud = GetComponent<newSequencePlay>();
//        //grabs Sun ref
//        neighbourPos = new Vector3[6];
//        bed = GameObject.FindGameObjectWithTag("Bed");
//        sleepScript = bed.GetComponent<Bed>();
//		ambiance = GameObject.Find ("ambiance").GetComponent<mixOutAmb>();

//    }
//    void Start()
//    {
//        // playAud = GetComponent<playSequence>();
//        //grabs Audio
//        deathCounter = 0;
//        treeSounds = gameObject.AddComponent<AudioSource>();
//        //TerrainGridSystem ref
//        tgs = TerrainGridSystem.instance;
//        randomRotation = 60 * Random.Range(0, 6);
//        // Clone Sapling prefabs and Instantiate
//        groundTile = tgs.CellGetAtPosition(transform.position, true);
//        //transform.SetParent ();
//        cellIndex = tgs.CellGetIndex(groundTile);
//        neighbors = tgs.CellGetNeighbours(groundTile);
//        tgs.CellSetCanCross(cellIndex, false);

//        if (plantedInEditor)
//        {
//            ageCounter = 2;
//            transform.position = tgs.CellGetPosition(cellIndex);
//            tgs.CellSetTag(cellIndex, 1);
//            tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
//        }
//        else
//        {

//            //Set age and fruit
//            ageCounter = 0;
//            //fruitAmount = 0;
//            growthPeriod = 1;
//        }
//        StartCoroutine(Growth());

//        cellMan = GameObject.Find("cellManager").GetComponent<cellManager>();

//    }

//    void Update()
//    {
//        if (hasGrown)
//        {
//            switch (ageCounter)
//            {
//			case 1: //Sapling
//				hasGrown = false;
//				hasBeenWatered = false;
//				//playAud.changedSequence = false;
//				tgs.CellToggleRegionSurface (cellIndex, true, growingTexture);
//				saplingClone = Instantiate (sapling, transform.position, Quaternion.Euler (0, randomRotation, 0), transform);
//				currentTree = saplingClone.transform;
//				growthPeriod = growthPeriodSapling;
//				ambiance.somethingPlanted = true;
//                    StartCoroutine(Growth());
//                    break;
//                case 2: //Adult
//                    hasGrown = false;
//                    hasBeenWatered = false;
//                    //playAud.changedSequence = false;
//                    Destroy(saplingClone);
//                    adultClone = Instantiate(adult, transform.position, Quaternion.Euler(0, randomRotation, 0), transform);
//                    currentTree = adultClone.transform;
//                    //fruitAmount = Random.Range(0, 2);
//                    growthPeriod = growthPeriodAdult;
//                    StartCoroutine(Growth());
//                    break;
//                case 3: // Old
//                    hasGrown = false;
//                    hasBeenWatered = false;
//                    //playAud.changedSequence = false;
//                    Destroy(adultClone);
//                    oldClone = Instantiate(old, transform.position, Quaternion.Euler(0, randomRotation, 0), transform);
//                    currentTree = oldClone.transform;
//                    //fruitAmount = Random.Range(0, 2);
//                    growthPeriod = growthPeriodOld;
//                    StartCoroutine(Growth());
//                    break;
//                case 4: // Dead
//                    hasGrown = false;
//                    hasBeenWatered = false;
//                    //playAud.changedSequence = false;
//                    Destroy(oldClone);
//                    currentTree = null;
//                    //Takes current cell and sets it back to normal Ground for tree death

//                    tgs.CellSetTag(groundTile, 0);
//                    tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
//                    tgs.CellSetCanCross(cellIndex, true);
//                    //Death
//                    SpawnCrops(3, 6);
//                    Destroy(gameObject);
//                    //stumpClone = Instantiate(stump, transform.position, Quaternion.Euler(0, randomRotation, 0));
//                    // silence after death or leftover ringing in Stump
//                    //THIS IS WHERE I SHOULD INCORPORATE POSSIBILITY OF ANCIENT
//                    break;
//            }
//        }

//        // can switch Ground Tile color here when Tree is playing sound


//    }

//    IEnumerator Growth()
//    {
//        //for loop waits a number of days 
//        for (int i = 0; i < growthPeriod; i++)
//        {
//            yield return new WaitUntil(() => sleepScript.dayPassed == true); //Can be changed so that it is not real time  
//            if (hasBeenWateredToday && ageCounter < 2)
//            {
//                growthPeriod -= 1;
//                hasBeenWateredToday = false; //if a day has passed, must be watered again
//            }
//            else if (hasBeenWateredToday && ageCounter >= 2 && extraLifeCounter < extraLifeMax)
//            {
//                growthPeriod += 1;
//                extraLifeCounter += 1;
//                hasBeenWateredToday = false;
//            }

//            tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
//        }
//        //checks if hasBeenWatered, otherwise keeps growing in same Age
//        if (hasBeenWatered)
//        {
//            ageCounter += 1;
//            randomRotation = 60 * Random.Range(0, 6);
//            hasGrown = true;
//            hasBeenWatered = false;
//            hasBeenWateredToday = false;
//        }
//        else
//        {
//            hasBeenWateredToday = false;
//            StartCoroutine(Growth());
//            //can add death state here and counter for Non-Watered growth periods. 
//        }
//    }

//    void SpawnCrops(int min, int max)
//    {
//        int randoCrops = Random.Range(min, max);
//        int randomRotation = Random.Range(0, 360);
//        for (int i = 0; i < randoCrops; i++)
//        {
//            Vector3 xyz = (Vector3)Random.insideUnitSphere * 1 + Vector3.up;
//            Vector3 spawnPosition = xyz + transform.position;
//            cropClone = Instantiate(crop, spawnPosition, Quaternion.Euler(0, randomRotation, 0));
//        }
//    }

//    public void repositionInGrid()
//    {
//        Cell repositionIn = tgs.CellGetAtPosition(transform.position, true);
//        cellIndex = tgs.CellGetIndex(repositionIn);
//        tgs.CellSetTag(repositionIn, 1);

//        //seq.length = (cellMan.sequencerSize * 8);

//        tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
//        transform.position = tgs.CellGetPosition(cellIndex);
//    }

//	void OnDestroy() {
//		ambiance.lookForPlants = true;
//	}

//}
