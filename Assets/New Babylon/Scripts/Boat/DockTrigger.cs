using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InControl;

public class DockTrigger : MonoBehaviour {
    GameObject boat;
    UseBoat useBoat;
    BoatPlayer bPlayer;
    ThirdPersonController tpc;
    public Transform dockingPos;
    public Transform playerPos;
    InteractPrompt dockPrompt;

    void Awake()
    {
        boat = GameObject.FindGameObjectWithTag("Boat");
        useBoat = boat.GetComponent<UseBoat>();
        bPlayer = boat.GetComponent<BoatPlayer>();
        tpc = FindObjectOfType<ThirdPersonController>();
        dockPrompt = tpc.myInventory.GetComponent<InteractPrompt>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Boat" || other.gameObject.tag == "Player")
        {
            if (bPlayer.inBoat == true)
            {
                //fade in dock prompt
                bPlayer.dockable = true;
                dockPrompt.pickUpMessage = "Dock Boat";
                dockPrompt.ShowPickupPrompt();
            }
        }
        
    }

    void OnTriggerStay(Collider other)
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        if (other.gameObject.tag == "Boat" || other.gameObject.tag == "Player")
        {
            //in boat
            if(bPlayer.inBoat == true)
            {
                //exit boat 
                if ((Input.GetKeyDown(KeyCode.E) || inputDevice.Action3.WasPressed) && bPlayer.dockable)
                {
                    bPlayer.ExitBoat(playerPos.position);
                    bPlayer.ResetDockPos();
                }
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Boat" || other.gameObject.tag == "Player")
        {
            //fade in dock prompt
            bPlayer.dockable = false;
        }
    }


}
