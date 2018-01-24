using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class spriteRender : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (GetComponentInParent<playAudio> ().sprVisisble == false) {
			GetComponent<SpriteRenderer> ().enabled = false;
		} else {
			GetComponent<SpriteRenderer> ().enabled = true;
		}
	}
}
