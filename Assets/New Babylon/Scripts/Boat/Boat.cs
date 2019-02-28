using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Boat : Interactive {
    public Rigidbody rb;
    //UI walking
    public Sprite[] getInBoat; // walking feet cursor

    BoatPlayer boatPlayer;

    void Start () {
        rb = GetComponent<Rigidbody>();

        // get in boat UI
        rb.isKinematic = true;

        boatPlayer = GetComponent<BoatPlayer>();
        boatPlayer.enabled = false;
    }

    public override void Interact()
    {
        base.Interact();

        rb.isKinematic = false;
        tpc.transform.position = transform.position;
        tpc.playerCanMove = false;
        boatPlayer.enabled = true;
    }

}
