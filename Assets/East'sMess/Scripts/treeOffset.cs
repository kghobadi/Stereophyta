using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class treeOffset : MonoBehaviour {
	public Transform[] joints;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.Space)) {
			for (int i = 0; i < 6; i++) {
				joints [i].position = new Vector3 (Random.Range (-5f, 5f), joints [i].position.y, Random.Range (-5f, 5f));
			}
		}
	}
}
