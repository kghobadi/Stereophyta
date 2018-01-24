using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveLegsSmooth : MonoBehaviour {
	public string check = "";
	public Transform frontLeft, frontRight, backLeft, backRight;
	public float target;
	public AudioSource playNote;
	// Use this for initialization

	private void Awake(){
		SimpleClock.ThirtySecond += OnThirtySecond;
	}

	private void OnDestroy(){
		SimpleClock.ThirtySecond -= OnThirtySecond;
	}

	void OnThirtySecond(BeatArgs e){
		if (e.TickMask [TickValue.Quarter]) {
			target *= -1f;
			check = "WORKS";
		}
	}
	void Start () {
		

	}

	// Update is called once per frame
	void Update () {
		if (!playNote.isPlaying) {
			playNote.PlayScheduled (SimpleClock.AtNextQuarter ());
			playNote.SetScheduledEndTime (SimpleClock.AtNextHalf ());
		}
		Debug.Log(check);
		frontLeft.localEulerAngles += new Vector3 (0, 0, target);
		frontRight.localEulerAngles += new Vector3 (0, 0, -target);
		backLeft.localEulerAngles += new Vector3 (0, 0, -target);
		backRight.localEulerAngles += new Vector3 (0, 0, target);
	}
}
