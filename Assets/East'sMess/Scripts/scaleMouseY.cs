using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class scaleMouseY : MonoBehaviour {
	public GameObject W, A, S, D;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		if (Input.GetKey (KeyCode.W)) {
			W.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);
		}
		if (Input.GetKey (KeyCode.A)) {
			A.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);
		}
		if (Input.GetKey (KeyCode.S)) {
			S.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);
		}
		if (Input.GetKey (KeyCode.D)) {
			D.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);
		}

	}
}
