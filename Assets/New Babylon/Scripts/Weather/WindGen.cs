using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindGen : RhythmProducer {
    Vector3 origPos;
    [Header("Wind Gen")]
    public ObjectPooler windPooler;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;

    //used to meter wind spawns at high clock speeds 
    int windCounter;
    public int windInterval = 0;

    public bool randomizes = true;
    public WindDirection windDir;
    public enum WindDirection
    {
        NORTH, EAST, SOUTH, WEST,
    }
    [Header("Wind Sounds")]
    public AudioClip[] currentWindSounds;
    public AudioClip[] shortWindSounds;
    public AudioClip[] mediumWindSounds;
    public AudioClip[] longWindSounds;

    public override void Awake()
    {
        base.Awake();
        Random.InitState(System.DateTime.Now.Millisecond);
        origPos = transform.position;

        if (randomizes)
        {
            SwitchTimeScale();
        }
    }

    void Update () {
        if (showRhythm)
        {
            //to help trim down cloud count
            if (windCounter < windInterval)
            {
                windCounter++;
                showRhythm = false;
            }
            else
            {
                windCounter = 0;

                //only spawn wind if player is somewhat near 
                if(Vector3.Distance(player.transform.position, transform.position) < (distanceToDestroy * 1.5f))
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
        //10 is the standard bpm, therefore when we are near it, wind interval is 0
        float div = (sunScript.clockBPM / 10);
        //interval is always going to be BPM / 10 to the nearest int 
        if (div >= 1.5f)
        {
            windInterval = Mathf.RoundToInt(div) * 2;
        }
        //otherwise 0
        else
        {
            windInterval = 0;
        }

        //keep updated bpm 
        lastBPM = sunScript.clockBPM;
        //Debug.Log(gameObject.name + "evaluated rhythm interval to: " + windInterval);
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
        //grab obj from pool and set pos
        windClone = windPooler.GrabObject();
        //set wind script
        MovingWind movingWind = windClone.GetComponent<MovingWind>();
        movingWind._windGen = this;
        movingWind.currentSpeed = windSpeed;
        //set wind transform
        windClone.transform.SetParent(transform);
        windClone.transform.position = transform.position;
        windClone.transform.rotation = Quaternion.Euler(transform.eulerAngles);

        
        //switch (timeScale)
        //{
        //    case 0:
        //        PlayRandomSound(longWindSounds, 1f);
        //        break;
        //    case 1:
        //        PlayRandomSound(longWindSounds, 1f);
        //        break;
        //    case 2:
        //        PlayRandomSound(mediumWindSounds, 1f);
        //        break;
        //    case 3:
        //        PlayRandomSound(shortWindSounds, 1f);
        //        break;
        //    case 4:
        //        PlayRandomSound(shortWindSounds, 1f);
        //        break;
        //}
   
        showRhythm = false;
    }

    public void SwitchTimeScale()
    {
        timeScale = Random.Range(0, 5);
        CheckDirRandomPos();

        //windSpeed = Random.Range(2.5f, 40f);

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
