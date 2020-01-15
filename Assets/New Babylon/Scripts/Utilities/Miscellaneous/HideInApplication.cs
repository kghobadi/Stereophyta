using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideInApplication : MonoBehaviour {

    Renderer[] renderers;

    void Awake(){
        renderers = GetComponentsInChildren<Renderer>();
    }

    // Use this for initialization
    void Start()
    {
        foreach(Renderer r in renderers)
            r.enabled = false;
    }
}
