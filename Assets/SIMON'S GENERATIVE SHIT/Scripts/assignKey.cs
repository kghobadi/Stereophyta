using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class assignKey : MonoBehaviour {


	int first,second,third,fourth,fifth,sixth,seventh;
	public List<int> C, G, D, A, E, B, Gb, Db, Ab, Eb, Bb, F;
	public List<int> cPent, gPent, dPent, aPent, ePent, bPent, gbPent, dbPent, abPent, ebPent, bbPent, fPent;
	public List<int> currentList;

	public bool isMinor = false;

	public bool switched = true;

	private GameObject bed;
	Bed bedScript;

	public int octave = 2;



	void Start() {
		currentList = cPent;
		//switched = true;
		bed = GameObject.FindGameObjectWithTag("Bed");
		bedScript = bed.GetComponent<Bed> ();


	}

	void Update() {

	/*	if (bedScript.dayPassed == true) {
			int num = Random.Range (0, 11);
			switch (num) {
			case 0:
				currentList = C;
				break;
			case 1:
				currentList = G;
				break;
			case 2:
				currentList = D;
				break;
			case 3:
				currentList = A;
				break;
			case 4:
				currentList = E;
				break;
			case 5:
				currentList = B;
				break;
			case 6:
				currentList = Gb;
				break;
			case 7:
				currentList = Db;
				break;
			case 8:
				currentList = Ab;
				break;
			case 9:
				currentList = Eb;
				break;
			case 10:
				currentList = Bb;
				break;
			case 11:
				currentList = F;
				break;

			} 
				//currentList.Clear ();
				
				//switched = true;

		
		} */
	}




	//List<int> CMaj {
		/*first = 0;
		second = 2; 
		third = 4;
		fourth = 5;
		fifth = 7;
		sixth = 9;
		seventh = 11; 
	}

	List<int> Cmin {
		first = 0;
		second = 2;
		third = 3;
		fourth = 5;
		fifth = 7;
		sixth = 8;
		seventh = 10;
	} 
	*/

}
