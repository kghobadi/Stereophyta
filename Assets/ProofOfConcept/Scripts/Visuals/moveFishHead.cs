using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveFishHead : MonoBehaviour {
	public GameObject head;

	public Vector2 screen;
	public Vector3 rotat;
	
	// Update is called once per frame
	void Update () {
		rotat = head.transform.localEulerAngles;
		screen = new Vector2 (Input.mousePosition.x/Screen.width, Input.mousePosition.y/Screen.height);
		head.transform.LookAt(screen);
	}
}
