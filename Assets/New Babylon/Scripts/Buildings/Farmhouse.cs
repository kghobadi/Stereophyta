using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Farmhouse : MonoBehaviour {
    //player vars
    GameObject player;
    ThirdPersonController tpc;

    //these get turned on & off when player walks inside
    public GameObject playerCamera;
    public GameObject playerInventory;
    public GameObject walkingEffect;
    public GameObject houseCamera;

    //only true when player is inside house
    public bool occupied;
    public AudioClip[] lastFootsteps;
    
    void Start () {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        houseCamera.SetActive(false);
    }

    //player entering, turn stuff off
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!occupied)
            {
                playerCamera.SetActive(false);
                playerInventory.SetActive(false);
                walkingEffect.SetActive(false);
                lastFootsteps = tpc.currentFootsteps;
                tpc.currentFootsteps = tpc.woodSteps;
                houseCamera.SetActive(true);
                occupied = true;
            }
        }
    }

    //so when you sleep it stays off
    void OnTriggerStay(Collider other)
    {
        if(playerInventory.activeSelf)
            playerInventory.SetActive(false);
    }

    //player leaving, turn stuff back on
    void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (occupied)
            {
                playerCamera.SetActive(true);
                playerInventory.SetActive(true);
                walkingEffect.SetActive(true);
                tpc.currentFootsteps = lastFootsteps;
                houseCamera.SetActive(false);
                occupied = false;
            }
        }
       
    }
}
