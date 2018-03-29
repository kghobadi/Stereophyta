using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodWind : GodRhythm {

    float currentSpeed;
    GodWindGen _windGen;
    
	void Start () {
        _windGen = GetComponentInParent<GodWindGen>();
        currentSpeed = _windGen.windSpeed;
	}
	
	void Update () {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            Destroy(gameObject);
        }
	}

}
