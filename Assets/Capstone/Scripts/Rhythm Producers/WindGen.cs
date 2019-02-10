using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : RhythmProducer {

    public GameObject wind;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;
	
	public override void Update () {

        if (showRhythm)
        {
            //base.Update(); only call this if there is a sound produced when rhythm is produced
            //instantiate wind, show particles, etc.
            windClone = Instantiate(wind, transform.position, Quaternion.Euler(transform.eulerAngles));
            windClone.GetComponent<MovingWind>()._windGen = this;
            showRhythm = false;
        }

    }

    public override void SwitchTimeScale()
    {
        base.SwitchTimeScale();

        switch (timeScale)
        {
            case 0:
                windSpeed = 2.5f;
                break;
            case 1:
                windSpeed = 5f;
                break;
            case 2:
                windSpeed = 10f;
                break;
            case 3:
                windSpeed = 20f;
                break;
            case 4:
                windSpeed = 40f;
                break;
        }
    }
}
