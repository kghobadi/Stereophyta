using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class growPlants : MonoBehaviour {

	public int growthNumber = 0;

	public bool toGrow = false;

	Material growthMat;
	Material defMat;

	// Use this for initialization
	void Start () {
		defMat = GetComponent<MeshRenderer> ().material;
		growthNumber = 0;
		growthMat = new Material(defMat);
		GetComponent<MeshRenderer> ().material = growthMat;
		growthMat.color = Color.gray;
	}
	
	// Update is called once per frame
	void Update () {

		if (GameObject.Find ("farmManager").GetComponent<clickToFarm> ().isNight) {
			if (growthNumber == 0 && toGrow) {
				growthNumber++;
				toGrow = false;
			} else if (growthNumber > 0) {
				growthNumber++;
			}
			//GameObject.Find ("farmManager").GetComponent<clickToFarm> ().isNight = false;
			//GetComponent<playAudio> ().clipsSwitched = false;
			GetComponent<playSequence>().changedSequence = false;
		}

		if (growthNumber > 3) {
			growthNumber = 0;
			//growthMat.color = Color.yellow;
		}

		if (growthNumber == 0) {
			growthMat.color = Color.gray;
		}

		//if (growthNumber == 1) {
		//	growthMat.color = Color.black;
		//}

		if (growthNumber == 1) {
			growthMat.color = Color.green;
		}

		if (growthNumber == 2) {
			growthMat.color = Color.blue;
		}

		if (growthNumber == 3) {
			growthMat.color = Color.red;
		}

		if (toGrow) {
			growthMat.color = Color.cyan;
		}
	}
}
