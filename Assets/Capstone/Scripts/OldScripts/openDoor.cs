using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class openDoor : MonoBehaviour {
	public bool open;

	public BoxCollider trigger;
	// Use this for initialization
	void Start () {
		open = false;

	}
	
	// Update is called once per frame
	void Update () {
		if (open) {
			//needs to rotate to 0, -100, 0
			transform.localRotation = Quaternion.Lerp(transform.localRotation, Quaternion.Euler(0, -100, 0), 3 * Time.deltaTime);
		} else {
			//rotates back
			transform.localRotation = Quaternion.Lerp(transform.localRotation, Quaternion.Euler(0, 0, 0), 3 *Time.deltaTime);
		}
	}
		
}
