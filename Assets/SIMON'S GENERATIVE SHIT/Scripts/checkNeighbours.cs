using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class checkNeighbours : MonoBehaviour {

	Vector3[] neighbours;
	Vector3 topRight;
	Vector3 btmRight;
	Vector3 topLeft;
	Vector3 btmLeft;

	public GameObject[] neighbourObj;

	bool changedNotes = false;

	playSequence seq;

	Vector3 ybump;

	PlantLife life;
	bool checkedNeighbours = false;
	int j = 0;

	void Awake() {
		life = GetComponent<PlantLife> ();
		seq = GetComponent<playSequence> ();
		neighbours = life.neighbourPos;
		neighbourObj = new GameObject[6];
		ybump = new Vector3 (0, 1, 0);

	}

	// Use this for initialization
	void Start () {
		//topRight = new Vector3 (1, 0, 1);
		//btmRight = new Vector3 (1, 0, -1);
		//topLeft = new Vector3 (-1, 0, 1);
		//btmLeft = new Vector3 (-1, 0, -1);
	}
	
	// Update is called once per frame
	void Update () {
		if (!checkedNeighbours) {
			checkSphereNeighbours ();
		}

		if (j >= 2 && seq.isLeader == true) {
			if (!changedNotes) {
//				print (AudioHelm.AudioHelmClock.GetGlobalBpm ());
				//seq.isLeader = true;
				neighbourObj [0].GetComponent<playSequence> ().isLeader = false;
				neighbourObj [1].GetComponent<playSequence> ().isLeader = false;
				neighbourObj [0].GetComponent<playSequence> ().isFollower = true;
				neighbourObj [1].GetComponent<playSequence> ().isFollower = true;
				if (neighbourObj [0].GetComponent<playSequence> ().note != seq.note + 2 && neighbourObj [1].GetComponent<playSequence> ().note != seq.note + 4) {
					neighbourObj [0].GetComponent<playSequence> ().note = seq.note + 2;
					neighbourObj [0].GetComponent<playSequence> ().start = seq.start;
					print (neighbourObj [0].GetComponent<playSequence> ().note + "seqNote " + seq.note);

					neighbourObj [1].GetComponent<playSequence> ().note = seq.note + 4;
					//neighbourObj [0].GetComponent<playSequence> ().start = seq.start;
					neighbourObj [1].GetComponent<playSequence> ().start = seq.start;
					print (neighbourObj [1].GetComponent<playSequence> ().note + "seqNote " + seq.note);
					changedNotes = true;
				}
				//changedNotes = true;
			}
		}


		/*Vector3 fwd = transform.TransformDirection (Vector3.forward);
		Vector3 bck = transform.TransformDirection (Vector3.back);

		//print(life.neighbourPos[0]);
		//print (life.neighbourPos [1]);
		//print (life.neighbourPos [2]);
		//print (life.neighbourPos [3]);


		Debug.DrawRay (transform.position + ybump, (life.neighbourPos [0]) - transform.position, Color.red);



		RaycastHit top;
		RaycastHit bottom;
		RaycastHit upRight;
		RaycastHit dwnRight;
		RaycastHit upLeft;
		RaycastHit dwnLeft;

		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[0] + ybump , out top, 1f)){
		//	Debug.DrawRay (transform.position + ybump, life.neighbourPos [0], Color.red);
			print ("yo I hit a thing on top my guy");
			if (top.collider.gameObject.tag == "sequencer") {
				//GetComponent<playSequence> ().start = top.collider.GetComponent<playSequence> ().start;
				print ("topYes");
			}
		}
		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[1] + ybump, out bottom, 1f)){
		//	Debug.DrawRay (transform.position + ybump, life.neighbourPos [1], Color.red);
			print ("what's up bro, just wanted to let u know there's something on bottom here");
			if (bottom.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = bottom.collider.GetComponent<playSequence> ().start;
				print ("bottomYes");
			}
		}
		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[2] + ybump,out upRight, 1f)){
			print ("that top right sure has something there");
			if (upRight.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = upRight.collider.GetComponent<playSequence> ().start;
				print ("upRightYes");
			}
		}
		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[3] + ybump, out dwnRight, 1f)){
			print ("down right? i'm right about to get down!");
			print (dwnRight.collider);
			//if () {
			//	GetComponent<playSequence> ().start = dwnRight.collider.GetComponent<playSequence> ().start;
			//	print ("dwnRightYes");
			//}
		}
		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[4] + ybump, out upLeft, 1f)){
			print ("i'm done coming up with fun phrases for these");
			if (upLeft.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = upLeft.collider.GetComponent<playSequence> ().start;
				print ("upLeftYes");
			}
		}
		if(Physics.Raycast(transform.position + ybump, life.neighbourPos[5] + ybump, out dwnLeft, 1f)){
			print ("fuck my life");
			if (dwnLeft.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = dwnLeft.collider.GetComponent<playSequence> ().start;
				print ("dwnLeftYes");
			}
		}

		//Vector3 


		//RaycastHit rayHit;
		//if(Physics.Raycast(, out rayHit) */
	}


	void checkSphereNeighbours() {
		Collider[] hitColliders = Physics.OverlapSphere (transform.position, 3);
		//int j = 0;
		if (j < neighbours.Length) {
			for (int i = 0; i < hitColliders.Length; i++) {
				//print (i + hitColliders[i].name);
				if (hitColliders [i].tag == "sequencer" && ((neighbours [j].x - hitColliders [i].transform.position.x) < 0.15f && (neighbours [j].x - hitColliders [i].transform.position.x) > -0.15f) && ((neighbours [j].y - hitColliders [i].transform.position.y) < 0.15f && (neighbours [j].y - hitColliders [i].transform.position.y) > -0.15f) && ((neighbours [j].z - hitColliders [i].transform.position.z) < 0.15f) && (neighbours [j].z - hitColliders [i].transform.position.z) > -0.15f) {
					if (hitColliders [i].transform.position != transform.position) {
						neighbourObj [j] = hitColliders [i].gameObject;
						print (j + " " + neighbours [j] + "objPos " + neighbourObj[j].transform.position + "myPos " + transform.position);
						j++;
					}
				}
			}
		} else {
			checkedNeighbours = true;
			seq.isLeader = true;
			print ("yo i did that thing b0ss");
		}
			


	}
}
