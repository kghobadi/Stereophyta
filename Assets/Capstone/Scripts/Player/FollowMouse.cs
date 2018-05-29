using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowMouse : MonoBehaviour {
    
	void Start () {
        Cursor.visible = false;
    }
	
	void Update () {
        transform.position = Input.mousePosition;
	}
}
