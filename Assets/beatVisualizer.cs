using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AudioHelm{
public class beatVisualizer : MonoBehaviour {
	public float progress = 0f;

	public void Pulse(float amount){
		progress = Mathf.Max(progress, Mathf.Clamp(amount, 0.0f, 1.0f));
	}
	
	// Update is called once per frame
	void Update () {
		progress = Mathf.Lerp(progress, 0.0f, Time.deltaTime);
		//transform.localScale = Vector3.Lerp (new Vector3 (1, 1, 1), new Vector3 (2, 2, 2), progress * 2);
	}
}
}