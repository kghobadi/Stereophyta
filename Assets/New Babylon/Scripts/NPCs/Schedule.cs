using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC {

	using TimeOfDay = Sun.TimeState;
	using MovementType = Movement.NPCMovementTypes;

	public class Schedule : MonoBehaviour {


		Movement m_movement = null;
		public Movement movement { 
			get{ 
				if(m_movement == null) 
					m_movement = GetComponent<Movement>();

				return m_movement;
			}
		}
		

		#region Internal classes

		// 0-100:0

		[System.Serializable]
		public class Period {
			public int start = 1;
			public int end = 1;
			public TimeOfDay timeOfDay = TimeOfDay.MORNING;

			public Period(){}
			public Period(int start, int end, TimeOfDay timeOfDay){
				if(start > end)
					end = start;

				this.start = start;
				this.end = end;
				this.timeOfDay = timeOfDay;
			}
		}

		[System.Serializable]
		public class Event {
			public Period period;

			public Task task = null;
			public MovementType movementType = MovementType.IDLE;

			public Event(){}
		}

		#endregion

		// movement patterns, monologues, player tasks

		[SerializeField] Event[] events = new Event[]{};


		void OnEnable(){
			Sun.UpdatedTimeState += onSunEnterTimeOfDay;
		}

		void OnDisable(){
			Sun.UpdatedTimeState -= onSunEnterTimeOfDay;
		}


		void onSunEnterTimeOfDay(TimeOfDay timeOfDay){

		}

		void onSunEnterDay(int day){

		}
	}

}
