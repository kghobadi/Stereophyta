using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Menu : MonoBehaviour {
    GameObject menuObject;

    bool isShowing;

	void Start () {
        menuObject = GameObject.FindGameObjectWithTag("Menu");
        menuObject.SetActive(false);
        isShowing = false;
	}
	

	void Update () {
        if (Input.GetKey(KeyCode.LeftControl) && !isShowing)
        {
            menuObject.SetActive(true);
            isShowing = true;
        }

        if (Input.GetKeyUp(KeyCode.LeftControl) && isShowing) {
            menuObject.SetActive(false);
            isShowing = false;
        }

	}
}
