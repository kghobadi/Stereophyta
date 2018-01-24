using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class hereWeGo : MonoBehaviour {
	public Vector3 twist;
	public int count;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		if (Input.GetMouseButtonDown (0)) {
			twist = count * Random.onUnitSphere;
			twist = new Vector3 (Mathf.Abs(twist.x + (twist.y/2)), 0, Mathf.Abs(twist.z + (twist.y/2)));
			GetComponentInChildren<Rigidbody> ().AddTorque (twist, ForceMode.Impulse);
			count++;
		}
	}
}
