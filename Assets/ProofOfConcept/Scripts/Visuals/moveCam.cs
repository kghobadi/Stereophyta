using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveCam : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		transform.Translate (Vector3.forward * Input.GetAxis("Vertical") * 10 * Time.deltaTime);
		transform.Translate (Vector3.right * Input.GetAxis("Horizontal") * 10 * Time.deltaTime);
		transform.Rotate(new Vector3(-10 * Input.GetAxis("Mouse Y"), 10 * Input.GetAxis("Mouse X"), 0));
		transform.localEulerAngles = new Vector3 (transform.localEulerAngles.x, transform.localEulerAngles.y, 0);
	}
}
