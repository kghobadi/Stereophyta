using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : MonoBehaviour {

    public GameObject wind;
    GameObject windClone;

    public float timerTotal;
    float timer;
    public float windSpeed;
    public float distanceToDestroy;
	
	void Start () {
        timer = timerTotal;
        windClone = Instantiate(wind, transform.position, Quaternion.identity, transform);
    }
	
	void Update () {
        timer -= Time.deltaTime;
        if(timer < 0)
        {
            windClone = Instantiate(wind, transform.position, Quaternion.identity, transform);
            timer = timerTotal;
        }
	}
}
