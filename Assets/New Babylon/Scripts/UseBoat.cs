using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UseBoat : PickUp {

    public override void PickUpTool(bool playSound)
    {
        //play this tools pickup sound
        inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
    }
}
