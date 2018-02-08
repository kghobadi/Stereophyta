using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuzzleWind : MonoBehaviour {

    float currentSpeed;
    WindMachine _windGen;
    
	void Start () {
        _windGen = GetComponentInParent<WindMachine>();
        currentSpeed = _windGen.windSpeed;
        transform.SetParent(null);
	}
	
	void Update () {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            Destroy(gameObject);
        }
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plant>().PlaySound();
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plant>().PlaySound();
        }
    }
}
