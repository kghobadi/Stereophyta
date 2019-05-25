using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : RhythmProducer {

    public ObjectPooler windPooler;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;
	
	public override void Update () {

        if (showRhythm)
        {
            //instantiate wind, show particles, etc.
            //grab obj from pool and set pos
            windClone = windPooler.GrabObject();
            windClone.transform.SetParent(transform);
            windClone.transform.position = transform.position;
            windClone.transform.rotation = Quaternion.Euler(transform.eulerAngles);
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
