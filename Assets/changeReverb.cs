using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class changeReverb : MonoBehaviour {

	public AudioReverbZone indoors;
	public AudioReverbZone outdoors;

	//bool switched;
	bool inside = false;


	void OnTriggerEnter(){
		if (!inside) {
			indoors.enabled = true;
			outdoors.enabled = false;
			inside = true;
			//switched = true;
		} else {
			outdoors.enabled = true;
			indoors.enabled = false;
		}

	}

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
