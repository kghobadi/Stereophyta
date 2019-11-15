using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using TGS;

public class Zone : MonoBehaviour {

    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    [Header("Zone info")]
    public string zoneName;
    public bool playerHasBeenHereBefore;
    public bool playerInZone;
    public TerrainGridSystem zoneTGS;
    public GridManager zoneGridMan;
    public Spawner[] zoneSpawners;

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
        zoneGridMan = transform.parent.GetComponent<GridManager>();
        bookPage = GetComponent<BookPage>();

        SetZoneSpawners();
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
                playerInZone = true;
                tpc.currentZone = this;
                tpc.currentTGS = zoneTGS;
                tpc.currentZoneName = zoneName;
                tpc.currentGridMan = zoneGridMan;
                zoneSnapshot.TransitionTo(3f);
                //Debug.Log("Player entered zone: " + zoneName);

                if (!playerHasBeenHereBefore)
                {
                    for (int i = 0; i < zoneSpawners.Length; i++)
                    {
                        zoneSpawners[i].GenerateObjects();
                    }
                    playerHasBeenHereBefore = true;
                }
                else
                {
                    for (int i = 0; i < zoneSpawners.Length; i++)
                    {
                        zoneSpawners[i].RegenerateObjects();
                    }
                }

                //first time collecting a shroom, add shroom page to book
                if (PlayerPrefs.GetString("hasCollectedShroom") != "yes" || PlayerPrefs.HasKey("hasCollectedShroom") == false)
                {
                    if (bookPage)
                    {
                        bookPage.AddPage();
                    }
                    //set pref 
                    PlayerPrefs.SetString("hasCollectedShroom", "yes");
                }
            }
        }
        
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == player)
        {
            if (playerInZone)
            {
                playerInZone = false;
                tpc.currentZone = null;
                tpc.currentZoneName = "Ocean";
                Ocean.TransitionTo(3f);
                //Debug.Log("Player left zone: " + zoneName);
            }
        }
    }
}
