using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedSpot : MonoBehaviour {

    float timer, orbitTotal = 5;
    bool orbitOut;

	// Update is called once per frame
	void Update () {
        transform.RotateAround(transform.parent.position, Vector3.up, 1);

        timer -= Time.deltaTime;
        if(timer < 0)
        {
            orbitOut = !orbitOut;
            timer = orbitTotal;
        }

        if (orbitOut)
        {
            transform.localPosition = Vector3.MoveTowards(transform.localPosition, transform.localPosition + new Vector3(1, 0, 1), Time.deltaTime);

        }
        else
        {
            transform.localPosition = Vector3.MoveTowards(transform.localPosition, transform.localPosition - new Vector3(1, 0, 1), Time.deltaTime);
        }
	}
}
