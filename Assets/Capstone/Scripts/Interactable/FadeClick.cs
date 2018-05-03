using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeClick : MonoBehaviour {
    
	void Start () {
		
	}
	
	void Update () {
        GetComponent<Image>().color = new Color(1, 1, 1, Mathf.Sin(Time.time*2));
	}
}
