using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class controlWind : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Cursor.lockState = CursorLockMode.Locked;
		Cursor.visible = false;
	}
	
	// Update is called once per frame
	void Update () {
		
		transform.Rotate (new Vector3(-250 * Input.GetAxis ("Mouse Y") * Time.deltaTime, 250 * Input.GetAxis ("Mouse X") * Time.deltaTime, 0));
		transform.position = new Vector3 (transform.position.x, .3f, transform.position.z);
		transform.localEulerAngles = new Vector3 (transform.localEulerAngles.x, transform.localEulerAngles.y, 0);
		if (Input.GetKey (KeyCode.W)) {
			transform.Translate (2 * Vector3.forward * Time.deltaTime);

		}
		if (Input.GetKey (KeyCode.S)) {
			transform.Translate (Vector3.back * Time.deltaTime);
		}
	}
}
