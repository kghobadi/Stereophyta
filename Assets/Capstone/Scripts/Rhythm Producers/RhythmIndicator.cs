using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RhythmIndicator : MonoBehaviour {

    GameObject cammy;

    private void Awake()
    {
        cammy = Camera.main.gameObject;
    }

    void Update () {
        transform.LookAt(cammy.transform.position);
	}
}
