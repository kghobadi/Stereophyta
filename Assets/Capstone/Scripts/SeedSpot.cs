using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedSpot : MonoBehaviour {

    public int spotNumber;
    public float rotationSpeed = 3f;

    //float timer, orbitTotal = 5;
    //bool orbitOut;
    //Vector3 origPosition;

    void Start()
    {
        //origPosition = transform.localPosition;
    }

    // Update is called once per frame
    void Update () {
        transform.RotateAround(transform.parent.position, Vector3.up, rotationSpeed);
	}
}
