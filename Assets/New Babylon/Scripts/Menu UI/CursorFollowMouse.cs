using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CursorFollowMouse : MonoBehaviour {
    
	void Start () {
		
	}
	
	void Update () {
        transform.position = Input.mousePosition;
	}
}
