using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : RhythmProducer {

    Vector3 origPos;

    public ObjectPooler windPooler;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;

    public WindDirection windDir;
    public enum WindDirection
    {
        NORTH, EAST, SOUTH, WEST,
    }

    void Start()
    {
        origPos = transform.position;
    }

    public override void Update () {

        if (showRhythm)
        {
            SpawnWind();
        }

    }

    public void SpawnWind()
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

    public override void SwitchTimeScale()
    {
        base.SwitchTimeScale();

        CheckDirRandomPos();

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

    void CheckDirRandomPos()
    {
        if(windDir == WindDirection.NORTH)
        {
            transform.position = new Vector3(Random.Range(-15, 15), 0, 0) + origPos;
        }
        if (windDir == WindDirection.EAST)
        {
            transform.position = new Vector3(0, 0, Random.Range(-15, 15)) + origPos;
        }
        if (windDir == WindDirection.SOUTH)
        {
            transform.position = new Vector3(Random.Range(-15, 15), 0, 0) + origPos;
        }
        if (windDir == WindDirection.WEST)
        {
            transform.position = new Vector3(0, 0, Random.Range(-15, 15)) + origPos;
        }
    }
}
