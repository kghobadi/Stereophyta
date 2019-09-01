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
    public bool playerInZone;
    public TerrainGridSystem zoneTGS;
    public Spawner[] zoneSpawners;
    [Header("Audio snapshots")]
    public AudioMixerSnapshot Ocean;
    public AudioMixerSnapshot zoneSnapshot;
    [Header("Plants & Animals")]
    public List<GameObject> plants = new List<GameObject>();
    public List<GameObject> animals = new List<GameObject>();
    void Awake()
    {
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
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
                zoneSnapshot.TransitionTo(3f);
                Debug.Log("Player entered zone: " + zoneName);
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
                Debug.Log("Player left zone: " + zoneName);
            }
        }
    }
}
