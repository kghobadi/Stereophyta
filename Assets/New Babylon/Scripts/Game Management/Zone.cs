using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Audio;
using TGS;

public class Zone : MonoBehaviour {

    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    [Header("Zone info")]
    public string zoneName;
    public bool playerInZone;
    public bool startingZone;
    public Transform startingSpot;
    public bool playerHasVisited;
    public TerrainType terrainType;
    public enum TerrainType
    {
        TERRAIN, MODEL,
    }
    public TerrainGridSystem zoneTGS;
    public GridManager zoneGridMan;
    public Spawner[] zoneSpawners;
    public ZoneSaver zoneSaver;

    [Header("Audio snapshots")]
    public AudioMixerSnapshot Ocean;
    public AudioMixerSnapshot zoneSnapshot;

    [Header("Plants & Animals")]
    public List<GameObject> plants = new List<GameObject>();
    public Transform plantParent;
    public List<GameObject> shrooms = new List<GameObject>();
    public Transform shroomParent;
    public List<GameObject> animals = new List<GameObject>();
    public Transform animalParent;

    BookPage bookPage;

    void Awake()
    {
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        if(terrainType == TerrainType.TERRAIN)
            zoneGridMan = transform.parent.GetComponent<GridManager>();
        //zone saver...
        zoneSaver = GetComponent<ZoneSaver>();
        if(zoneSaver == null)
        {
            zoneSaver = gameObject.AddComponent<ZoneSaver>();
        }
        bookPage = GetComponent<BookPage>();

        SetZoneSpawners();

        //check if this is the last zone-- > set as starting zone
        if (PlayerPrefs.HasKey("lastZone"))
        {
            if (PlayerPrefs.GetString("lastZone") == zoneName)
            {
                startingZone = true;
            }
            else
            {
                startingZone = false;
            }
        }
    }

    void Start()
    {
        //set player to this as starting zone 
        if (startingZone)
        {
            tpc.transform.position = startingSpot.position;

            StartCoroutine(WaitToActivate(0.1f));
        }
    }

    void SetZoneSpawners()
    {
        //Set zone spawners 
        if (zoneSpawners.Length != transform.childCount)
        {
            zoneSpawners = new Spawner[transform.childCount];

            for (int i = 0; i < zoneSpawners.Length; i++)
            {
                zoneSpawners[i] = transform.GetChild(i).GetComponent<Spawner>();
            }
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == player)
        {
            if (!playerInZone)
            {
                ActivateZone();
            }
        }
    }

    IEnumerator WaitToActivate(float time)
    {
        yield return new WaitForSeconds(time);

        ActivateZone();
    }

    public void ActivateZone()
    {
        playerInZone = true;
        tpc.currentZone = this;
        tpc.currentZoneName = zoneName;
        tpc.enteredZone.Invoke();

        //has tgs
        if (terrainType == TerrainType.TERRAIN)
        {
            tpc.currentTGS = zoneTGS;
            tpc.currentGridMan = zoneGridMan;
        }
        //nothing, no tgs
        if (terrainType == TerrainType.MODEL)
        {
            tpc.currentTGS = null;
            tpc.currentGridMan = null;
        }

        zoneSnapshot.TransitionTo(3f);
        //Debug.Log("Player entered zone: " + zoneName);
        //set last zone 
        PlayerPrefs.SetString("lastZone", zoneName);

        CheckZoneGeneration();
    }

    public void CheckZoneGeneration()
    {
        //this means we have set been here before, so we have saved before
        if (PlayerPrefs.GetInt(zoneName + "Visits") > 0 && tpc.savingAndLoadingEnabled)
        {
            //only for this session
            if (!playerHasVisited)
            {
                //first load
                zoneSaver.LoadGameData();
                //will not load again this session 
                playerHasVisited = true;
            }

            //wait then regen check 
            StartCoroutine(WaitToRegen());
        }
        //never been to zone, so just generate
        else
        {
            //only for this session
            if (!playerHasVisited)
            {
                //first time
                for (int i = 0; i < zoneSpawners.Length; i++)
                {
                    zoneSpawners[i].GenerateObjects();
                }
                //will not load again this session 
                playerHasVisited = true;
            }
            else
            {
                //then handle any regeneration
                for (int i = 0; i < zoneSpawners.Length; i++)
                {
                    zoneSpawners[i].RegenerateObjects();
                }
            }
        }
    }

    IEnumerator WaitToRegen()
    {
        yield return new WaitForSeconds(0.25f);

        //then handle any regeneration
        for (int i = 0; i < zoneSpawners.Length; i++)
        {
            zoneSpawners[i].RegenerateObjects();
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == player)
        {
            if (playerInZone)
            {
                DeactivateZone();
            }
        }
    }

    public void DeactivateZone()
    {
        playerInZone = false;
        //check that we are just leaving this zone and Not teleported directly to a new one 
        if(tpc.currentZone == this)
        {
            tpc.currentZone = null;
            tpc.currentZoneName = "Ocean";
            Ocean.TransitionTo(3f);
        }
        
        //save what's in the zone
        zoneSaver.SaveGameData();
        //Debug.Log("Player left zone: " + zoneName);
    }
}
