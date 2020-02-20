using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

//a master script for issuing events on the games timelines
public class EventManager : MonoBehaviour {
    Sun sun;

    public UnityEvent monologues;

	void Awake () {
        sun = FindObjectOfType<Sun>();
	}
	
	
}
