using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UseBoat : PickUp {
    PlayerCameraController camController;
    //position player should be teleported to
    public Vector3 playerLocalPos;
    BoatPlayer boatScript;

    public GameObject cursor;

    void Start()
    {
        boatScript = GetComponent<BoatPlayer>();
        camController = Camera.main.GetComponent<PlayerCameraController>();
    }

    public override void PickUpTool(bool playSound)
    {
        //play this tools pickup sound
        inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
        cursor.SetActive(true);
        Cursor.lockState = CursorLockMode.None;

        //turn off player movment
        tpc.playerCanMove = false;
        camController.canLook = false;
       
        //set boat as parent & position
        tpc.transform.SetParent(transform);
        tpc.transform.localPosition = playerLocalPos;
        tpc.myInventory.gameObject.SetActive(false);
        tpc.transform.localEulerAngles = new Vector3(-90f, 0, 0);

        //set boat vars
        boatScript.inBoat = true;
        boatScript.boatBody.isKinematic = false;
        boatScript.boatCol.enabled = true;
    }

    public void ExitBoat(Vector3 exitPos)
    {
        //turn off and lock cursor
        cursor.SetActive(false);
        Cursor.lockState = CursorLockMode.Locked;

        //turn off player movment
        tpc.playerCanMove = true;
        camController.canLook = true;
        //set boat as parent & position
        tpc.transform.SetParent(null);
        tpc.transform.position = exitPos;
        tpc.myInventory.gameObject.SetActive(true);

        //set boat vars
        boatScript.inBoat = false;
        boatScript.boatBody.isKinematic = true;
        boatScript.boatCol.enabled = false;
    }
}
