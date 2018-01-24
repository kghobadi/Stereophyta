using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class spin : MonoBehaviour {
	private Transform rotateMill;
	public float origRotSpeed, rotSpeed;
    
	// Use this for initialization
	void Start () {
		rotateMill = GetComponent<Transform>();
		origRotSpeed = -25f;
        rotSpeed = origRotSpeed;
	}
	
	// Update is called once per frame
	void Update () {
       

		rotateMill.transform.Rotate (0, rotSpeed * Time.deltaTime, 0);
        
	}
}
