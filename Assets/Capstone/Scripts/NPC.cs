using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour {

    public string plantType;

    Plant currentPlant;

    public float visionDistance, movementDistance;

	void Start () {
		//should this be interactable?
	}
	
	void Update () {
		//states in here, distance check on player
	}

    public void Movement()
    {
        //for cubone:
        //walk north movementDistance
        //check for plant
        //turn right and walk
        //repeat

    }

    public void PlayTree()
    {

    }

    //pick up seed ()
    //plant seed ()

    //playerInteract()
}
