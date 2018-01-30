using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;
public class Bed : Interactable
{
    public bool dayPassed;
    private Transform windZone;
    bool setDayPassed;
    float sleepCounter;
    public float sleepLength;
    float alphaVal;
    
    public Image sleepBlack;

    camMouseLook cml;

    GameObject sun;

	//AudioHelm.AudioHelmClock clock;
	bool mixersTransitioned;

	public int windDir = 0;
	ParticleSystem wond;
	ParticleSystem windBlast;
    Sun sunScript;
	public AudioMixerSnapshot bedSnap, bedSnap1, regular, regular2;


    Vector3 sunStartPos;

    float originalPSpeed;

    public float minBpm, maxBpm;
    public float minSimSpeed, blastMinSpeed;

    public int dayCounter;

    public float speedMultiplier;

    //cellManager cellMan;
    Rain rainSystem;
    spin windMill;

    public override void Start()
	{
        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        windMill = GameObject.FindGameObjectWithTag("WindMill").GetComponent<spin>();
        //cellMan = GameObject.Find("cellManager").GetComponent<cellManager>();
        //clock = GameObject.Find ("clock").GetComponent<AudioHelm.AudioHelmClock> ();
        windZone = GameObject.Find ("WindZone").GetComponent<Transform>();
        base.Start();
        fpc = _player.GetComponent<FirstPersonController>();
        cml = Camera.main.GetComponent<camMouseLook>();
        fpc.isAwake = true;
        interactable = true;
        sleepCounter = sleepLength;
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        sunStartPos = sun.transform.position;
		wond = GameObject.Find ("windParticles").GetComponent<ParticleSystem> ();
		windBlast = GameObject.Find ("windBlast").GetComponent<ParticleSystem> ();
        originalPSpeed = fpc.speed;
        dayCounter = 1;
        speedMultiplier = 1;
        rainSystem = GameObject.FindGameObjectWithTag("Rain").GetComponent<Rain>();
    }

    void Update()
    {
        if (!fpc.isAwake)
        {
            alphaVal += 0.6f * Time.deltaTime;
            interactable = false;
            fpc.speed = 0;
            cml.enabled = false;

            if (!setDayPassed)
            {
                dayPassed = true;
                setDayPassed = true;
            }
            else
            {
                dayPassed = false;
            }

            sleepCounter -= 1 * Time.deltaTime;
            if (sleepCounter < 0)
            {
                fpc.isAwake = true;
                cml.enabled = true;
                sleepCounter = sleepLength;
                sun.transform.position = sunStartPos;
                fpc.isHoldingSeed = false;
            }

        }
        else
        {
			if (!mixersTransitioned) {
				regular.TransitionTo (1f);
				regular2.TransitionTo (1f);
				mixersTransitioned = true;
			}
            alphaVal -= 0.6f * Time.deltaTime;
            interactable = true;
            fpc.speed = originalPSpeed;
            setDayPassed = false;
        }

        sleepBlack.color = new Color(0f, 0f, 0f, alphaVal);

        alphaVal = Mathf.Clamp01(alphaVal);

    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        if (fpc.isAwake)
        {
            fpc.isAwake = false;
			setDayPassed = false;
			mixersTransitioned = false;
			bedSnap.TransitionTo (0.01f);
			bedSnap1.TransitionTo (0.01f);
            dayCounter++;
            Random.InitState(System.DateTime.Now.Millisecond);
            //clock.bpm = Random.Range(minBpm, maxBpm);
            //speedMultiplier = clock.bpm / minBpm;
            ParticleSystem.MainModule wondModule = wond.main;
            wondModule.simulationSpeed = minSimSpeed * speedMultiplier;
            ParticleSystem.MainModule windBlastModule = windBlast.main;
            windBlastModule.simulationSpeed = blastMinSpeed * speedMultiplier;
            ParticleSystem.VelocityOverLifetimeModule rainVelocity = rainSystem.rainEffect.velocityOverLifetime;
			//regular.TransitionTo (3f);
			//regular2.TransitionTo (3f);
            

            if (worldMan.isRaining)
            {
                worldMan.isRaining = false;
            }

            windDir = Random.Range(0, 4);
            switch (windDir) {
			case 0: //left to right
				wond.transform.eulerAngles = new Vector3 (-90, 0, -90);
                    windZone.transform.localEulerAngles = new Vector3(0, -90, 0);
                    windBlast.transform.eulerAngles = new Vector3(-90, 0, -90);
                    //windBlast.transform.position = new Vector3(7.5f - (cellMan.addToSequencer * 4), windBlast.transform.position.y, 10);
                    windBlast.GetComponent<windMove>().originalPos = windBlast.transform.position;
                    windBlast.GetComponent<windMove>().dirMultiplier = Vector3.right;
                    rainVelocity.z = 0;
                    rainVelocity.x = 20;

                    windMill.rotSpeed = -windMill.origRotSpeed * speedMultiplier;
                    //set the start of particles
                    //set their motion
                    //set simulation speed here when you've fucked w the BPM thingy
                    break;

			case 1: //bottom to top
				wond.transform.eulerAngles = new Vector3(-90, 0, 180);
                    windZone.transform.localEulerAngles = new Vector3(0, 0, 0);

                    windBlast.transform.eulerAngles = new Vector3(-90, 0, 180);
                    //windBlast.transform.position = new Vector3(15, windBlast.transform.position.y, 2.5f - (cellMan.addToSequencer * 4));
                    windBlast.GetComponent<windMove>().originalPos = windBlast.transform.position;
                    windBlast.GetComponent<windMove>().dirMultiplier = Vector3.forward;
                    rainVelocity.x = 0;
                    rainVelocity.z = 20;
                    windMill.rotSpeed = -windMill.origRotSpeed * speedMultiplier;
                    break;

			case 2: //top to bottom
				wond.transform.eulerAngles = new Vector3(-90, 0, 0);
                    windZone.transform.localEulerAngles = new Vector3(0, 180, 0);
                    windBlast.transform.eulerAngles = new Vector3(-90, 0, 0);
                    //windBlast.transform.position = new Vector3(15, windBlast.transform.position.y, 17.5f + (cellMan.addToSequencer * 4));
                    windBlast.GetComponent<windMove>().originalPos = windBlast.transform.position;
                    windBlast.GetComponent<windMove>().dirMultiplier = Vector3.back;
                    rainVelocity.x = 0;
                    rainVelocity.z = -20;
                    windMill.rotSpeed = windMill.origRotSpeed * speedMultiplier;
                    break;

			case 3: //right to left
				wond.transform.eulerAngles = new Vector3(-90, 0, 90);
                    windZone.transform.localEulerAngles = new Vector3(0, 90, 0);
                    windBlast.transform.eulerAngles = new Vector3(-90, 0, 90);
                    //windBlast.transform.position = new Vector3(22.5f + (cellMan.addToSequencer * 4), windBlast.transform.position.y, 10);
                    windBlast.GetComponent<windMove>().originalPos = windBlast.transform.position;
                    windBlast.GetComponent<windMove>().dirMultiplier = Vector3.left;
                    rainVelocity.z = 0;
                    rainVelocity.x = -20;
                    windMill.rotSpeed = windMill.origRotSpeed * speedMultiplier;
                    break;


			}
        }

    }

}
