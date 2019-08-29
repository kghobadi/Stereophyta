using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

public class Sun : MonoBehaviour
{
    //startView ref
    public StartView startViewer;

    //player refs
    PlayerCameraController cammy;
    GameObject _player;
    ThirdPersonController tpc;
    //day counters
    public int yesterday, dayCounter = 0;

    //rotation speed refs
    public Transform rotation;
    public float rotationSpeed = 10, sleepRotation, normalRotation;
   
    //angle of sun's rotation
    public float angleInDegrees;
    //time state enum
    public TimeState timeState;
    public enum TimeState
    {
        MORNING, MIDDAY, DUSK, NIGHT,
    }
    //intervals are set publicly based on info obtained from angleInDegrees
    public float rotationDiameter, morningInterval, middayInterval, duskInterval, nightInterval;

    //lighting color settings
    public Light sun;
    public Color morn, mid, dusk, night;
    public Color ambientMorn, ambientMid, ambientDusk, ambientNight;
    public Material skyMorn, skyMid, skyDusk, skyNight;

    //wind stuff
    public int windCounter = 0;
    public GameObject[] windDirections, northWinds, southWinds, eastWinds, westWinds;

    //raincloud stuff
    public int rainCounter = 0;
    public GameObject[] rainDirections;
    public GameObject[] cloudDirections;

    //stars
    public GameObject stars;
    ParticleSystem starParticles;
    //waters 
    public GameObject waterDay, waterNight;
    //save ref
    public SleepSave saveScript;

    //sun saver anim
    public FadeUI sunSaver;
    public FadeUItmp sunSavingText, sunSavingOutline;

    //ocean audio
    public AudioSource oceanSource;
    public AudioClip[] oceanSounds;

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

        //stars
        starParticles = stars.GetComponent<ParticleSystem>();
        //stars.SetActive(true);
        //starParticles.Stop();

        timeState = TimeState.MORNING;

        //set dayCounter to saved player pref
        if (PlayerPrefs.GetInt("dayCounter") > 0)
        {
            dayCounter = PlayerPrefs.GetInt("dayCounter");
        }

        //if we are in start view, set to quicker rotation
        if (startViewer.startView)
        {
            rotationSpeed = normalRotation * 2;
        }
        //start immediately, normal rotation
        else
        {
            rotationSpeed = normalRotation;
        }

        // randomize wind && rains
        RandomizeWinds();
        RandomizeRains();
    }

    void Update()
    {
        //rotates sun around zero 
        transform.RotateAround(Vector3.zero, Vector3.forward, rotationSpeed * Time.deltaTime);

        //always look at center of the map
        transform.LookAt(tpc.transform);

        CheckSunsRotation();
    }

    void CheckSunsRotation()
    {
        //for checking angle
        Vector3 forward = transform.forward;
        angleInDegrees = Mathf.Atan2(forward.y, forward.x) * Mathf.Rad2Deg;

        //is Morning 
        if (angleInDegrees > morningInterval || angleInDegrees < middayInterval)
        {
            if(timeState != TimeState.MORNING)
            {
                //time bool
                timeState = TimeState.MORNING;
                //resets day bools and sleep stuff every morning
                //when its morning increase dayCounter && not in start view
                if (dayCounter == yesterday && !startViewer.startView)
                {
                    NewDay();
                }
                //turn off stars
                stars.SetActive(false);
            }
           
            //lighting
            LerpLighting(morn, ambientMorn, skyMorn);
           
        }
        //is Midday
        else if (angleInDegrees > middayInterval && angleInDegrees < duskInterval)
        {
            //lighting
            LerpLighting(mid, ambientMid, skyMid);
            //time bool
            timeState = TimeState.MIDDAY;
        }
        //is Dusk
        else if (angleInDegrees > duskInterval && angleInDegrees < nightInterval)
        {
            //lighting
            LerpLighting(dusk, ambientDusk, skyDusk);
            //time bool
            timeState = TimeState.DUSK;
        }
        //is Night
        else if (angleInDegrees > nightInterval && angleInDegrees < morningInterval)
        {
            //lighting
            LerpLighting(night, ambientNight, skyNight);
            //time bool
            timeState = TimeState.NIGHT;

            //when its night, yesterday catches up to dayCounter
            yesterday = dayCounter;

            //turn on stars
            if (!stars.activeSelf )
            {
                stars.SetActive(true);
            }
        }
    }

    //lerps lighting color values
    void LerpLighting(Color sunC, Color ambientC, Material skyboxC)
    {
        sun.color = Color.Lerp(sun.color, sunC, Time.deltaTime / 10);
        RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientC, Time.deltaTime / 10);
        RenderSettings.skybox = skyboxC;
    }

    //called every morning
    void NewDay()
    {
        dayCounter++;
        //set day counter player pref
        PlayerPrefs.SetInt("dayCounter", dayCounter);

        // randomize wind && rains
        RandomizeWinds();
        RandomizeRains();

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

        //fade in and out sun saver IF saving enabled 
        if (saveScript.savingAndLoadingEnabled)
        {
            sunSaver.FadeIn();
            sunSavingText.FadeIn();
            sunSavingOutline.FadeIn();

            StartCoroutine(WaitToSave());
        }
    }

    //randomizes the wind generators active, their speeds & direction
    void RandomizeWinds()
    {
        windCounter = Random.Range(0, 4);
        
        SwitchWinds(windCounter);

        //set ocean source
        AudioClip randomOceanSound = oceanSounds[Random.Range(0, oceanSounds.Length)];
        oceanSource.Stop();
        oceanSource.clip = randomOceanSound;
        oceanSource.Play();

        //randomize time scales of all winds
        for(int i = 0; i < windDirections[windCounter].transform.childCount; i++)
        {
            int randomScale = Random.Range(0, 4);
            windDirections[windCounter].transform.GetChild(i).GetComponent<WindGen>().timeScale = randomScale;
            windDirections[windCounter].transform.GetChild(i).GetComponent<WindGen>().SwitchTimeScale();
        }
    }

    //sets wind direction active globally 
    public void SwitchWinds(int windDir)
    {
        //turn off all winds
        for (int i = 0; i < windDirections.Length; i++)
        {
            windDirections[i].SetActive(false);
        }

        //decide directions to activate
        switch (windDir)
        {
            //NORTH
            case 0:
                //turn on north winds
                for (int i = 0; i < northWinds.Length; i++)
                {
                    northWinds[i].SetActive(true);
                }
                break;
            //EAST
            case 1:
                //turn on east winds
                for (int i = 0; i < eastWinds.Length; i++)
                {
                    eastWinds[i].SetActive(true);
                }
                break;
            //SOUTH
            case 2:
                //turn on south winds
                for (int i = 0; i < southWinds.Length; i++)
                {
                    southWinds[i].SetActive(true);
                }
                break;
            //WEST
            case 3:
                //turn on west winds
                for (int i = 0; i < westWinds.Length; i++)
                {
                    westWinds[i].SetActive(true);
                }
                break;
        }
    }

    //randomizes the wind generators active, their speeds & direction
    void RandomizeRains()
    {
        //turn off all rain gens & cloud gens
        for (int i = 0; i < rainDirections.Length; i++)
        {
            rainDirections[i].SetActive(false);
            cloudDirections[i].SetActive(false);
        }

        float chanceToRain = Random.Range(0f, 100f);

        //still in start view, set chance to 0
        if (startViewer.startView)
        {
            chanceToRain = 100f;
        }

        //activate rain with 1 / 4 chance
        if (chanceToRain < 25f)
        {
            Debug.Log("its raining!");
            rainCounter = Random.Range(0, 4);

            rainDirections[rainCounter].SetActive(true);

            //randomize time scales of winds
            for (int i = 0; i < rainDirections[rainCounter].transform.childCount; i++)
            {
                int randomScale = Random.Range(0, 4);
                rainDirections[rainCounter].transform.GetChild(i).GetComponent<CloudGenerator>().timeScale = randomScale;
                rainDirections[rainCounter].transform.GetChild(i).GetComponent<CloudGenerator>().SwitchTimeScale();
            }
        }

        //not raining, just normal clouds!
        //Debug.Log("normal clouds...");
        rainCounter = Random.Range(0, 4);

        cloudDirections[rainCounter].SetActive(true);

        //randomize time scales of winds
        for (int i = 0; i < rainDirections[rainCounter].transform.childCount; i++)
        {
            int randomScale = Random.Range(0, 4);
            rainDirections[rainCounter].transform.GetChild(i).GetComponent<CloudGenerator>().timeScale = randomScale;
            rainDirections[rainCounter].transform.GetChild(i).GetComponent<CloudGenerator>().SwitchTimeScale();
        }

    }

    IEnumerator WaitToSave()
    {
        //so that plants can grow before the save
        yield return new WaitForSeconds(0.25f);
        //save game upon waking up
        saveScript.SaveGameData();
    }

    //jst for sleeping 
    IEnumerator WaitForPlayerToPassOut()
    {
        yield return new WaitUntil(() => tpc.controller.isGrounded == true);

        tpc.Sleep(false);

        Debug.Log("Sun called sleep");
    }
}

