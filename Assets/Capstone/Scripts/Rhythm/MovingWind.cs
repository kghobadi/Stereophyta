﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingWind : Rhythm {

    float currentSpeed;
    WindGen _windGen;
    
	void Start () {
        _windGen = GetComponentInParent<WindGen>();
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