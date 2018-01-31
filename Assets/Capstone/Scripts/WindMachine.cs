using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : Interactable {

    public GameObject wind;
    GameObject windClone;

    public float timerTotal;
    float timer;
    public float windSpeed;
    public float distanceToDestroy;

    public bool transitioned;
	
	public override void Start () {
        base.Start();
        timer = timerTotal;
        windClone = Instantiate(wind, transform.position, Quaternion.identity, transform);
        interactable = true;
    }
	
	void Update () {
        timer -= Time.deltaTime;
        if(timer < 0)
        {
            windClone = Instantiate(wind, transform.position, new Quaternion (0,0,0,0) , transform);
            timer = timerTotal;
        }

        if (transitioned)
        {
            transform.localEulerAngles += new Vector3(0, 90, 0);
            transitioned = false;
        }
	}

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        transitioned = true;
    }
}
