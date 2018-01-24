using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class checkNeighboursNew : MonoBehaviour {

	Vector3[] neighbours;
	Vector3 topRight;
	Vector3 btmRight;
	Vector3 topLeft;
	Vector3 btmLeft;

	public GameObject[] neighbourObj;

	bool changedNotes = false;

	newSequencePlay seq;

	Vector3 ybump;

	NewPlantLife life;
	bool checkedNeighbours = false;
	int j = 0;

	void Awake() {
		life = GetComponent<NewPlantLife> ();
		seq = GetComponent<newSequencePlay> ();
		neighbours = life.neighbourPos;
		neighbourObj = new GameObject[6];
		ybump = new Vector3 (0, 1, 0);

	}
	
    //need to have an array of all cells on the grid, from cell manager. 
    //once plant is part of a combo, it remains part of it until the combo is destroyed. 
    //bool isInCombo
    //update cell manager bool list, contains TriadOfSquares, contains LineOfSquares, etc.
    //how to set priorities of combos?

	void Update () {
		if (!checkedNeighbours) {
			checkSphereNeighbours ();
		}

		if (j >= 2 && seq.isLeader == true) {
			if (!changedNotes) {
//				print (AudioHelm.AudioHelmClock.GetGlobalBpm ());
				//seq.isLeader = true;
				neighbourObj [0].GetComponent<newSequencePlay> ().isLeader = false;
				neighbourObj [1].GetComponent<newSequencePlay> ().isLeader = false;
				neighbourObj [0].GetComponent<newSequencePlay> ().isFollower = true;
				neighbourObj [1].GetComponent<newSequencePlay> ().isFollower = true;
				if (neighbourObj [0].GetComponent<newSequencePlay> ().note != seq.note + 2 && neighbourObj [1].GetComponent<newSequencePlay> ().note != seq.note + 4) {
					neighbourObj [0].GetComponent<newSequencePlay> ().note = seq.note + 2;
					neighbourObj [0].GetComponent<newSequencePlay> ().start = seq.start;
					print (neighbourObj [0].GetComponent<newSequencePlay> ().note + "seqNote " + seq.note);

					neighbourObj [1].GetComponent<newSequencePlay> ().note = seq.note + 4;
					//neighbourObj [0].GetComponent<playSequence> ().start = seq.start;
					neighbourObj [1].GetComponent<newSequencePlay> ().start = seq.start;
					print (neighbourObj [1].GetComponent<newSequencePlay> ().note + "seqNote " + seq.note);
					changedNotes = true;
				}
				//changedNotes = true;
			}
		}
	}


	void checkSphereNeighbours() {
		Collider[] hitColliders = Physics.OverlapSphere (transform.position, 3);
		//int j = 0;
		if (j < neighbours.Length) {
			for (int i = 0; i < hitColliders.Length; i++) {
				//print (i + hitColliders[i].name);
				if (hitColliders [i].tag == "sequencer" 
                    && ((neighbours [j].x - hitColliders [i].transform.position.x) < 0.15f 
                    && (neighbours [j].x - hitColliders [i].transform.position.x) > -0.15f) 
                    && ((neighbours [j].y - hitColliders [i].transform.position.y) < 0.15f 
                    && (neighbours [j].y - hitColliders [i].transform.position.y) > -0.15f) 
                    && ((neighbours [j].z - hitColliders [i].transform.position.z) < 0.15f) 
                    && (neighbours [j].z - hitColliders [i].transform.position.z) > -0.15f) {
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
