﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UseBoat : PickUp {
    PlayerCameraController camController;
    //position player should be teleported to
    public Vector3 playerLocalPos;
    BoatPlayer boatScript;
    //cursor ref
    public GameObject cursor;
    public bool firstTime;

    void Start()
    {
        firstTime = true;
        boatScript = GetComponent<BoatPlayer>();
        camController = Camera.main.GetComponent<PlayerCameraController>();
    }

    public override void PickUpTool(bool playSound)
    {
        //so we can deactivate stuff
        hasBeenAcquired = true;

        //play this tools pickup sound
        inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
        cursor.SetActive(true);
        Cursor.lockState = CursorLockMode.None;

        //set boats rotation to player's current forward
        if (!firstTime)
        {
            transform.localEulerAngles = new Vector3(transform.localEulerAngles.x, transform.localEulerAngles.y, tpc.characterBody.rotation.y);
            transform.localPosition += new Vector3(0, 0, 5f);
        }

        //turn off player movment
        tpc.playerCanMove = false;
        tpc.SetAnimator("idle");
        tpc.runParticles.SetActive(false);
        tpc.characterBody.localEulerAngles = new Vector3(0, 0, 0);
        camController.canLook = false;
        //child cam to boat
        camController.transform.SetParent(transform);
        //adjust cam height & rotation
        camController.transform.localPosition = new Vector3(0f, -10f, -8f);
        camController.transform.localEulerAngles = new Vector3(-75f, 0f, 0f);
        camController.LerpFOV(75f);
        
        //set boat as parent & position
        tpc.transform.SetParent(transform);
        tpc.transform.localPosition = playerLocalPos;
        tpc.myInventory.gameObject.SetActive(false);
        tpc.transform.localEulerAngles = new Vector3(-90f, 0, 0);

        //set boat vars
        boatScript.inBoat = true;
        boatScript.boatBody.isKinematic = false;
        boatScript.boatCol.enabled = true;
        //set oar anim
        boatScript.oarAnimator.SetTrigger("activateBoat");
        boatScript.oarAnimator.SetBool("rightOrLeft", true);
        firstTime = false;

        DeactivatePrompt();
    }

    public void ExitBoat(Vector3 exitPos)
    {
        hasBeenAcquired = false;

        //turn off and lock cursor
        cursor.SetActive(false);
        Cursor.lockState = CursorLockMode.Locked;

        //turn off player movment
        tpc.playerCanMove = true;
        camController.canLook = true;
        camController.transform.SetParent(null);
        camController.LerpFOV(50f);

        //set boat as parent & position
        tpc.transform.SetParent(null);
        tpc.transform.position = exitPos;
        tpc.myInventory.gameObject.SetActive(true);

        //set boat vars
        boatScript.inBoat = false;
        boatScript.boatBody.isKinematic = true;

        //reset boat & player rot
        transform.rotation = Quaternion.Euler(90f, -180f, transform.localEulerAngles.z);
        tpc.transform.rotation = Quaternion.Euler(0f, tpc.transform.localEulerAngles.y, 0f);

        //set oar anim
        boatScript.oarAnimator.SetTrigger("deactivateBoat");

        //fade out dock prompt
        for (int d = 0; d < boatScript.dockprompts.Length; d++)
        {
            boatScript.dockprompts[d].FadeOut();
        }

        ShowPickupPrompt();
    }
}
