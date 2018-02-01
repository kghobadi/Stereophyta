using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleWind : MonoBehaviour {

    GameObject windMill;
    public float windSpeed;

	void Start () {
        windMill = transform.parent.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
        transform.RotateAround(windMill.transform.position, Vector3.up, windSpeed);
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<plant>().PlaySound();
        }
    }
}
