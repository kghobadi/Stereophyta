using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class mixOutAmb : MonoBehaviour {

	public AudioMixerSnapshot noPlants, plants;
	public AudioMixer ambientMixer;
	public cellManager manager;
	bool transitioned;
	public bool somethingPlanted;
	public bool lookForPlants;

	// Use this for initialization
	void Start () {
		noPlants.TransitionTo (1f);
	}
	
	// Update is called once per frame
	void Update () {

		if (lookForPlants) {
			GameObject[] allPlants = GameObject.FindGameObjectsWithTag ("sequencer");
			if (allPlants.Length > 0) {
				somethingPlanted = true;
				lookForPlants = false;
			} else {
				somethingPlanted = false;
				lookForPlants = false;
			}
		}
		

		if (somethingPlanted) {
			if (!transitioned) {
				plants.TransitionTo (1f);
				transitioned = true;
				print ("transitioned");
			}
		} else {
			if (transitioned) {
				noPlants.TransitionTo (1f);
				transitioned = false;
				print ("transitioned");

			}
		}
	}
}
