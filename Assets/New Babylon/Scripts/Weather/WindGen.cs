using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : RhythmProducer {
    Vector3 origPos;

    public ObjectPooler windPooler;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;

    //used to meter wind spawns at high clock speeds 
    int windCounter;
    public int windInterval = 0;

    public WindDirection windDir;
    public enum WindDirection
    {
        NORTH, EAST, SOUTH, WEST,
    }

    public override void Awake()
    {
        base.Awake();
        
        origPos = transform.position;
    }

    public override void Update () {
        if (showRhythm)
        {
            //to help trim down cloud count
            if (windCounter < windInterval)
            {
                windCounter++;
            }
            else
            {
                windCounter = 0;

                //only spawn wind if player is somewhat near 
                if(Vector3.Distance(player.transform.position, transform.position) < (distanceToDestroy * 2))
                {
                    SpawnWind();
                }
            }
        }

        //check if clockBPM changed 
        if(lastBPM != sunScript.clockBPM)
        {
            EvaluateRhythmInterval();
        }

       
    }

    //adjusts wind interval based on what the clock bpm is 
    void EvaluateRhythmInterval()
    {
        if(sunScript.clockBPM >= 10 && sunScript.clockBPM < 15)
        {
            windInterval = 0;
        }
        if (sunScript.clockBPM >= 15 && sunScript.clockBPM < 20)
        {
            windInterval = 1;
        }
        if (sunScript.clockBPM >= 20 && sunScript.clockBPM < 30)
        {
            windInterval = Random.Range(1, 3);
        }
        if (sunScript.clockBPM >= 30 && sunScript.clockBPM < 40)
        {
            windInterval = Random.Range(2, 5);
        }
        if (sunScript.clockBPM >= 40 && sunScript.clockBPM <= 50)
        {
            windInterval = Random.Range(3, 6);
        }

        //keep updated bpm 
        lastBPM = sunScript.clockBPM;
        Debug.Log(gameObject.name + "evaluated rhythm interval to: " + windInterval);
    }

    //unchild all the winds so they don't disappear totally when the day transitions 
    public void ReleaseWinds()
    {
        for(int i = 0; i < transform.childCount; i++)
        {
            transform.GetChild(i).SetParent(null);
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

        windSpeed = Random.Range(2.5f, 40f);

        //switch (timeScale)
        //{
        //    case 0:
        //        windSpeed = 2.5f;
        //        break;
        //    case 1:
        //        windSpeed = 5f;
        //        break;
        //    case 2:
        //        windSpeed = 10f;
        //        break;
        //    case 3:
        //        windSpeed = 20f;
        //        break;
        //    case 4:
        //        windSpeed = 40f;
        //        break;
        //}
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
