using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lockPosition : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		transform.localPosition = new Vector3(0, 0, transform.localPosition.z);
	}
}
