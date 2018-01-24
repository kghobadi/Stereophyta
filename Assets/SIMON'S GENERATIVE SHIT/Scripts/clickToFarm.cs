using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clickToFarm : MonoBehaviour {

	public GameObject hoedTile;

	public bool isNight = false;

	public int octave = 0;

	public int numRows = 4;
	public int numColumns = 4;

	// Use this for initialization
	void Start () {
		for(int j = 0; j < numColumns; j++){
		for (int i = 0; i < numRows; i++) {
				Instantiate (hoedTile, new Vector3 ((i * 5), 0, j * 5), Quaternion.identity);
		}
	}
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKeyDown (KeyCode.Space)) {
			isNight = true;
			//GetComponent<assignKey> ().switched = false;
			print ("yeah");
		} else { 
			isNight = false;
		}
/*		Ray ray = Camera.main.ScreenPoeintToRay (Input.mousePosition);

		RaycastHit rayHit = new RaycastHit ();

		if (Physics.Raycast (ray, out rayHit) && Input.GetMouseButtonDown (0)) {
			Debug.DrawRay (Camera.main.transform.position, rayHit.point);
			//rayHit.collider.gameObject.GetComponent<growPlants> ().growthNumber++;
			if (rayHit.collider.gameObject.GetComponent<growPlants> ().toGrow == false && rayHit.collider.gameObject.GetComponent<growPlants> ().growthNumber == 0) {
				//rayHit.collider.gameObject.GetComponent<playAudio> ().playedAudio = false;
				//rayHit.collider.gameObject.GetComponent<playSequence> ().changedSequence = false;
				rayHit.collider.gameObject.GetComponent<growPlants> ().toGrow = true;
			}

		} else if (Physics.Raycast (ray, out rayHit) && Input.GetMouseButtonDown (1)) {
			Debug.DrawRay (Camera.main.transform.position, rayHit.point);
			rayHit.collider.gameObject.GetComponent<growPlants> ().growthNumber = 0;
			//rayHit.collider.gameObject.GetComponent<playAudio> ().playedAudio = false;
			//rayHit.collider.gameObject.GetComponent<playAudio> ().clipsSwitched = false;

		} */
	}
}
