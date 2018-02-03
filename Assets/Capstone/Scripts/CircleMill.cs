using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleMill : MonoBehaviour {
    public GameObject windTurbine;
    public float rotationSpeed;
  
	
	void Update () {
        windTurbine.transform.Rotate(0, rotationSpeed, 0);
	}
}
