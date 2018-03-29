using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodWindGen : GodRhythmCreator {

    public GameObject wind;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;
	
	public override void Update () {
   
            if (showRhythm)
            {
                //base.Update(); only call this if there is a sound produced when rhythm is produced
                //instantiate wind, show particles, etc.
                windClone = Instantiate(wind, transform.position, new Quaternion(0, 0, 0, 0), transform);
                showRhythm = false;
            }
        
	}
}
