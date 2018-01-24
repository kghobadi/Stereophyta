using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class snakeAnim : MonoBehaviour {
	public GameObject head, mid1, mid2, tail;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		head.transform.localEulerAngles = new Vector3 (head.transform.localEulerAngles.x, head.transform.localEulerAngles.y + (3 * Mathf.Sin (Time.time)/10), head.transform.localEulerAngles.z);
		mid1.transform.localEulerAngles = new Vector3 (mid1.transform.localEulerAngles.x + (Mathf.Sin (Time.time) / 30), mid1.transform.localEulerAngles.y - (3 * Mathf.Sin (Time.time) / 10), mid1.transform.localEulerAngles.z);
		mid2.transform.localEulerAngles = new Vector3 (mid2.transform.localEulerAngles.x + (Mathf.Sin (Time.time) / 30), mid2.transform.localEulerAngles.y + (3 * Mathf.Sin (Time.time) / 10), mid2.transform.localEulerAngles.z);
		tail.transform.localEulerAngles = new Vector3 (tail.transform.localEulerAngles.x, tail.transform.localEulerAngles.y + (.1f * Mathf.Sin (Time.time / 2)), tail.transform.localEulerAngles.z);
	}
}
