//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//namespace AudioHelm{
//	public class passBeat : MonoBehaviour {
//		//public Sequencer seq;
//		//private GameObject affectBeat;

//	void Start(){
//		seq = GetComponentInParent<Sequencer> ();
//		seq.OnNoteOn += NoteOn;
//	}

//		void OnDestroy(){
//			seq.OnNoteOn -= NoteOn;


//		}

//		void NoteOn(Note note){
//			GetComponent<beatVisualizer>().Pulse (1.0f);
//		}
//}
//}