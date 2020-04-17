using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterWell : MonoBehaviour {
    GameObject player;
    ThirdPersonController tpc;
    public Items.WateringCan waterCan;

    InteractPrompt interactPrompt;
    [Header("Interaction")]
    public string interactMessage;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        interactPrompt = tpc.myInventory.GetComponent<InteractPrompt>();
    }

    //watercan near
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == waterCan.gameObject)
        {
            waterCan.nearWell = true;

            //this means we have watercan
            if (PlayerPrefs.GetString("hasWaterCan") == "yes" && waterCan.waterAmount < waterCan.waterMax)
            {
                interactPrompt.clickMessage = interactMessage;
                interactPrompt.ShowClickPrompt();
            }
        }
    }

    //watercan gone  
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == waterCan.gameObject)
        {
            waterCan.nearWell = false;

            //this means we have watercan
            if (PlayerPrefs.GetString("hasWaterCan") == "yes" && waterCan.waterAmount < waterCan.waterMax)
            {
                interactPrompt.DeactivateClickPrompt();
            }
        }
    }
}
