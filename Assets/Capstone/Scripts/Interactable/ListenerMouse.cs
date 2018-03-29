using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ListenerMouse : MonoBehaviour {

	
	// Update is called once per frame
	void Update () {
        float mouseX = Input.mousePosition.x;

        float mouseY = Input.mousePosition.y;

        float cameraDif = Camera.main.transform.position.y - transform.position.y;

        Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif));

        Vector3 hoverLocation = new Vector3(worldpos.x, transform.position.y, worldpos.z);

        transform.position = hoverLocation;
    }
}
