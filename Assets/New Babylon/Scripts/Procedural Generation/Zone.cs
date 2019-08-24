using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Zone : MonoBehaviour {

    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    public string zoneName;
    public bool playerInZone;
    public TerrainGridSystem zoneTGS;

    void Awake()
    {
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void OnTriggerStay(Collider other)
    {
        if(other.gameObject == player)
        {
            if (!playerInZone)
            {
                playerInZone = true;
                tpc.currentZone = this;
                tpc.currentTGS = zoneTGS;
                tpc.currentZoneName = zoneName;
            }
        }
        
    }
}
