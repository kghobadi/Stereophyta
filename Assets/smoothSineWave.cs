using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class smoothSineWave : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.localPosition = new Vector3 (Mathf.Sin(Time.time), transform.localPosition.y, transform.localPosition.z);
	}
}
