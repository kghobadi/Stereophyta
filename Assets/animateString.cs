using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class animateString : MonoBehaviour {
	private LineRenderer animateLine;
	public GameObject point1, point2;
	private Animator animatePlant;
	public int linePoints;
	public float timer;
	public GameObject target;
	public GameObject parts;

    NewPlant plantScript;

	// Use this for initialization
	void Start () {
		animateLine = GetComponent<LineRenderer>();
        plantScript = GetComponentInParent<NewPlant>();
		animatePlant = GetComponent<Animator> ();
		timer = 0;
	}
	
	// Update is called once per frame
	void Update () {
		//animateLine.positionCount = linePoints;
		if (plantScript.audioSource.isPlaying) {
			animatePlant.SetBool ("Stopped", false);
			animatePlant.SetBool ("Playing", true);
			target.GetComponent<Rigidbody>().AddForce(new Vector3(0, 5000, 0));
			if (!parts.GetComponent<ParticleSystem> ().isPlaying) {
				parts.GetComponent<ParticleSystem> ().Play ();
			}

		} else {
			animatePlant.SetBool ("Stopped", true);
			animatePlant.SetBool ("Playing", false);

		}

		if (Input.GetKeyDown (KeyCode.Space)) {
			animatePlant.SetBool ("Closing", true);
			animatePlant.SetBool ("Opening", false);
		}
		if (Input.GetKeyDown (KeyCode.W)) {
			animatePlant.SetBool ("Opening", true);
			animatePlant.SetBool ("Closing", false);
		}

		timer += Time.deltaTime;

		if(timer >= 0.05f) {
			parts.transform.localPosition = new Vector3 (-1.8f, 0, -2);
			timer = 0;
		} else {
			parts.transform.localPosition = new Vector3 (1.8f, 0, -2);

		}

		animateLine.SetPosition (0, point1.transform.position);
		animateLine.SetPosition (animateLine.positionCount/2, target.transform.position);
		animateLine.SetPosition (animateLine.positionCount - 1, point2.transform.position);
	}
}
