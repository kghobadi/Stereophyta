using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomAnimalMove : MonoBehaviour {
	public Vector3 target;
	// Use this for initialization
	void Start () {
		target = 20 * Random.insideUnitCircle.normalized;
		target = new Vector3(target.x, 0, target.y);
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = Vector3.MoveTowards (transform.position, target, Time.deltaTime);
		transform.LookAt (target);
		if (transform.position == target) {
			target = 20 * Random.insideUnitCircle.normalized;
			target = new Vector3(target.x, 0, target.y);
		}

	}
}
