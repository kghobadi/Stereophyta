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

        AdjustHeight();
	}

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 15f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 3f, 0);
            }
        }
    }
}
