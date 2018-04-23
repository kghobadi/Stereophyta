using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class reflections : MonoBehaviour {
	public ReflectionProbe turnRefOn;
	void OnTriggerEnter(Collider coll) {
		if (coll.tag == "Player") {
			turnRefOn.enabled = true;
		}
	}

	void OnTriggerExit(Collider coll) {
		if (coll.tag == "Player") {
			turnRefOn.enabled = false;
		}
	}

}
