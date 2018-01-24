using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pageNotification : MonoBehaviour {
    SpriteRenderer pageNotified;

    public float showPageTimer, showPageTotal;

	void Start () {
        pageNotified = GetComponent<SpriteRenderer>();
        showPageTimer = showPageTotal;
        pageNotified.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
        if (pageNotified.enabled)
        {
            showPageTimer -= Time.deltaTime;
            if (showPageTimer < 0)
            {
                pageNotified.enabled = false;

                showPageTimer = showPageTotal;
            }
        }
    }
}
