using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class for things that can be picked from plants
// i.e. fruits, seeds, etc. 
public abstract class Pickable : MonoBehaviour {

    public GameObject[] pickableObjects;

	protected virtual void Awake () {
		
	}

    public virtual void Pick()
    {

    }
}
