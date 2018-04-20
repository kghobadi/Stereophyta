using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedSpot : MonoBehaviour {

    public int spotNumber;

    float timer, orbitTotal = 5;
    bool orbitOut;
    Vector3 origPosition;

    void Start()
    {
        origPosition = transform.localPosition;
    }

    // Update is called once per frame
    void Update () {
        transform.RotateAround(transform.parent.position, Vector3.up, 3);

        //timer -= Time.deltaTime;
        //if(timer < 0)
        //{
        //    orbitOut = !orbitOut;
        //    timer = orbitTotal;
        //}

        //if (orbitOut)
        //{
        //    if(spotNumber == 1)
        //        transform.localPosition = Vector3.MoveTowards(transform.localPosition, transform.localPosition + new Vector3(1, 0, 1), Time.deltaTime);
        //    else
        //    {
        //        transform.localPosition = Vector3.MoveTowards(transform.localPosition, transform.localPosition - new Vector3(1, 0, 1), Time.deltaTime);
        //    }

        //}
        //else
        //{
        //    transform.localPosition = Vector3.MoveTowards(transform.localPosition, origPosition, Time.deltaTime);
        //}
	}
}
