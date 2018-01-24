using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class windMove : MonoBehaviour {
	public float moveAmount;
	private Transform position;
	Bed bed;
	public float timer, timerTotal;
	public float multiplier;
    public Vector3 dirMultiplier;
    ParticleSystem particleMove;
    public int timesMoved;
    public Vector3 originalPos;

	AudioHelm.AudioHelmClock clock;

    cellManager cellMan;

	// Use this for initialization
	void Start () {
        cellMan = GameObject.Find("cellManager").GetComponent<cellManager>();
		position = transform;
        originalPos = transform.position;
		bed = GameObject.FindGameObjectWithTag("Bed").GetComponent<Bed> ();
		clock = GameObject.Find ("clock").GetComponent<AudioHelm.AudioHelmClock> ();
		timer = timerTotal;
		multiplier = 1;
		particleMove = GetComponent<ParticleSystem>();
        timesMoved = 0;
        dirMultiplier = Vector3.left;
	}
	
    //HOW TO FIX WIND:
    //wait to start movement until sequencer begins in morning
    //after going across the grid, should wait for interval of silence which seq takes between beats 60 and 64

	void Update () {
        //multiplier = bed.speedMultiplier;
        multiplier = bed.speedMultiplier;

       
        timer -= multiplier * Time.deltaTime;
		if (timer <= 0) {
			moveWind ();
			timer = timerTotal;
		}
        if (timesMoved > (6 + cellMan.addToSequencer))
        {
            transform.position = originalPos;
            timesMoved = 0;
        }
    }
	void moveWind(){
		position.position += moveAmount * dirMultiplier;
		particleMove.Play();
        timesMoved++;


	}
}
