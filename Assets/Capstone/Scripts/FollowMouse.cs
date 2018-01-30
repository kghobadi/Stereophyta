using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowMouse : MonoBehaviour {
    
	void Start () {
		
	}
	
	void Update () {
        transform.position = Input.mousePosition;
	}
}
