using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

public class Sun : MonoBehaviour
{
    //player refs
    GameObject _player;
    ThirdPersonController tpc;
    //day counters
    public int yesterday, dayCounter = 0;

    //rotation speed refs
    public Transform rotation;
    public float rotationSpeed = 10, sleepRotation, normalRotation;
   
    //angle of sun's rotation
    public float angleInDegrees;
    //time state bools
    public bool isMorning, isMidday, isDusk, isNight;
    //intervals are set publicly based on info obtained from angleInDegrees
    public float rotationDiameter, morningInterval, middayInterval, duskInterval, nightInterval;

    //lighting color settings
    public Light sun;
    public Color morn, mid, dusk, night;
    public Color ambientMorn, ambientMid, ambientDusk, ambientNight;

    //wind stuff
    public int windCounter = 0;
    public GameObject[] windDirections;

    //stars
    public GameObject stars;
    //waters 
    public GameObject waterDay, waterNight;

    void Start()
    {
        //player refs
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();

        //set lighting settings to morning at start
        RenderSettings.ambientLight = ambientMorn;
		sun.color = morn;

        //find the total diameter of the suns rotation path
        rotationDiameter = Mathf.Abs(transform.position.x * 2);

        SwitchTimeState(0);

        rotationSpeed = normalRotation;

        RandomizeWinds();
    }

    void Update()
    {
        //rotates sun around zero 
        transform.RotateAround(Vector3.zero, Vector3.forward, rotationSpeed * Time.deltaTime);

        //always look at center of the map
        transform.LookAt(Vector3.zero);

        CheckSunsRotation();
    }

    void CheckSunsRotation()
    {
        //for checking angle
        Vector3 forward = transform.forward;        angleInDegrees = Mathf.Atan2(forward.y, forward.x) * Mathf.Rad2Deg;

        //is Morning 
        if (angleInDegrees > morningInterval || angleInDegrees < middayInterval)
        {
            //turn off stars
            if (stars.activeSelf)
            {
                stars.SetActive(false);
            }

            sun.color = Color.Lerp(sun.color, mid, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientMid, Time.deltaTime / 10);

            SwitchTimeState(0);

            //resets day bools and sleep stuff every morning
            NewDay();
        }
        //is Midday
        else if (angleInDegrees > middayInterval && angleInDegrees < duskInterval)
        {
            sun.color = Color.Lerp(sun.color, dusk, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientDusk, Time.deltaTime / 10);

            SwitchTimeState(1);
        }
        //is Dusk
        else if (angleInDegrees > duskInterval && angleInDegrees < nightInterval)
        {
            sun.color = Color.Lerp(sun.color, night, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientNight, Time.deltaTime / 10);

            SwitchTimeState(2);
        }
        //is Night
        else if (angleInDegrees > nightInterval && angleInDegrees < morningInterval)
        {
            SwitchTimeState(3);
            //waterDay.SetActive(false);
            //waterNight.SetActive(true);

            //when its night, yesterday catches up to dayCounter
            yesterday = dayCounter;

            //turn on stars
            if (!stars.activeSelf)
            {
                stars.SetActive(true);
            }
        }
    }

    //pass the state you want to set true
    void SwitchTimeState(int state)
    {
        switch (state)
        {
            //morning
            case 0:
                isMorning = true;
                isMidday = false;
                isDusk = false;
                isNight = false;
                break;
            //midday
            case 1:
                isMorning = false;
                isMidday = true;
                isDusk = false;
                isNight = false;
                break;
            //dusk
            case 2:
                isMorning = false;
                isMidday = false;
                isDusk = true;
                isNight = false;
                break;
            //night
            case 3:
                isMorning = false;
                isMidday = false;
                isDusk = false;
                isNight = true;
                break;
        }
    }

    //called every morning
    void NewDay()
    {
        //when its morning increase dayCounter
        if (dayCounter == yesterday)
        {
            dayCounter++;
            // randomize wind
            RandomizeWinds();

            //subtract from player's days to sleep
            if (tpc.sleeping)
            {
                tpc.daysToSleep--;
                //wake player up if its time
                if (tpc.daysToSleep <= 0)
                {
                    tpc.WakeUp();
                }
            }

            //add to players days without sleep
            else
            {
                tpc.daysWithoutSleep++;
                //player passes out from exhaustion
                if (tpc.daysWithoutSleep > tpc.noSleepMax)
                {
                    StartCoroutine(WaitForPlayerToPassOut());
                }
            }
        }
    }

    //randomizes the wind generators active, their speeds & direction
    void RandomizeWinds()
    {
        int randomWind = Random.Range(0, 4);

        for(int i = 0; i < windDirections.Length; i++)
        {
            windDirections[i].SetActive(false);
        }

        windDirections[randomWind].SetActive(true);

        //randomize time scales of winds
        for(int i = 0; i < windDirections[randomWind].transform.childCount; i++)
        {
            int randomScale = Random.Range(0, 4);
            windDirections[randomWind].transform.GetChild(i).GetComponent<WindGen>().timeScale = randomScale;
            windDirections[randomWind].transform.GetChild(i).GetComponent<WindGen>().SwitchTimeScale();
        }
    }

    //jst for sleeping 
    IEnumerator WaitForPlayerToPassOut()
    {
        yield return new WaitUntil(() => tpc.controller.isGrounded == true);

        tpc.Sleep(false);

        Debug.Log("Sun called sleep");
    }
}

