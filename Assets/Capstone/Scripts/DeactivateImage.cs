using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class DeactivateImage : MonoBehaviour {
    Image thisImage;

    float deactivationTimer = 0, activeTimeTotal = 5f;

	void Start () {
        thisImage = GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update () {
        if (thisImage.enabled)
        {
            deactivationTimer += Time.deltaTime;
            if(deactivationTimer > activeTimeTotal)
            {
                thisImage.enabled = false;
                deactivationTimer = 0;
            }
        }
	}
}
