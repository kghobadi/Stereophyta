using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveLegs : MonoBehaviour {
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
		frontLeft.localEulerAngles = new Vector3 (0, 0, 90 + target);
		frontRight.localEulerAngles = new Vector3 (0, 0, -90 - target);
		backLeft.localEulerAngles = new Vector3 (0, 90, 90 + target);
		backRight.localEulerAngles = new Vector3 (0, 90, -90 - target);
	}
}
