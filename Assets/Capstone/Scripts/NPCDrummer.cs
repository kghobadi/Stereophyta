using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class NPCDrummer : NPC {

    public AudioClip[] basicBeats, baseDrums;

    public float visionDistance, waitingTime, wavingTime, waveRefresh, waveRefreshTotal;
    int moveCounter;

    public float beatTimer, beatIncrement, beatTimerTotal, scaleColliderTime;
    public int bassPlaysAt;
    Vector3 targestDestination;
    public Vector3 drumPosition;

    BoxCollider drummerCollider;
    Vector3 originalColliderSize;

    bool bassOrSnare;

    ParticleSystem baseParticles, beatParticles;
    DrumCollider drumCollision;
    GameObject drumSet;

    AudioSource drumBeatSource, bassDrumSource;

	public override void Start () {
        base.Start();
        moveCounter = 0;
        beatIncrement = 0;
        animator.SetBool("walking", false);
        animator.speed = 1.75f;
        beatTimer = beatTimerTotal;
        baseParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        baseParticles.Stop();
        beatParticles = transform.GetChild(2).GetComponent<ParticleSystem>();
        beatParticles.Stop();
        drumCollision = transform.GetChild(3).GetComponent<DrumCollider>();
        drumSet = transform.GetChild(4).gameObject;

        drumBeatSource = drumSet.GetComponent<AudioSource>();
        bassDrumSource = GetComponent<AudioSource>();
        drummerCollider = GetComponent<BoxCollider>();
        originalColliderSize = drummerCollider.size;

        SetMove();
    }
	
	public override void Update () {
        base.Update();
        if(currentState == NPCState.SETTINGMOVE)
        {
            SetMove();
        }

        if(currentState == NPCState.FOLLOWING)
        {
            drumSet.transform.localPosition = new Vector3(0, 1, -3);
            bassDrumSource.outputAudioMixerGroup = tpc.plantingGroup;
            drumBeatSource.outputAudioMixerGroup = tpc.plantingGroup;
            drummerCollider.size = new Vector3(originalColliderSize.x * 10, originalColliderSize.y * 3, originalColliderSize.z * 10);
        }

        //not using right now
        if (currentState == NPCState.MOVING)
        {
            Movement();

            if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            {
                StartCoroutine(WaveAtPlayer());
                
            }
        }

        if(currentState == NPCState.PLAYING)
        {
            if(Vector3.Distance(_player.transform.position, transform.position) < 100)
                BeatDrums();
            //if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            //{
            //    StartCoroutine(WaveAtPlayer());

            //}
        }

        if (hasWavedAtPlayer)
        {
            waveRefresh -= Time.deltaTime;
            if (waveRefresh < 0)
            {
                hasWavedAtPlayer = false;
            }
        }
    }

    void BeatDrums()
    {
        animator.SetBool("walking", false);
        beatTimer -= Time.deltaTime;
        if (beatTimer < 0)
        {
            beatParticles.Play();
            drumCollision.StartCoroutine(drumCollision.LerpScale(scaleColliderTime));
            beatTimer = beatTimerTotal;
            beatIncrement++;
            drumBeatSource.PlayOneShot(basicBeats[0]);
        }
        if(beatIncrement == bassPlaysAt)
        {
            baseParticles.Play();
            //drumCollision.StartCoroutine(drumCollision.LerpScale(0.5f));
            if(bassOrSnare)
                bassDrumSource.PlayOneShot(baseDrums[0]);
            else
            {
                bassDrumSource.PlayOneShot(baseDrums[1]);
            }
            beatIncrement = 0;
            bassOrSnare = !bassOrSnare;
        }

    }

    void SetMove()
    {
        drumSet.transform.localPosition = drumPosition;

        //how should we move the drummer when he needs to find rocks?
        baseParticles.transform.localPosition = drumPosition + new Vector3(0,2,0);
        beatParticles.transform.localPosition = drumPosition + new Vector3(0, 2, 0);
        drumCollision.gameObject.transform.localPosition = drumPosition + new Vector3(0, 2, 0);
        drummerCollider.size = originalColliderSize;
        currentState = NPCState.PLAYING;
    }

    public IEnumerator WaveAtPlayer()
    {
        currentState = NPCState.WAVING;
        transform.LookAt(_player.transform);
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        //rotates back correctly
        if (currentState == NPCState.WAVING)
        {
            animator.SetBool("waving", false);
            animator.SetBool("walking", false);

            currentState = NPCState.PLAYING;
            //drumming true
        }
        else
        {
            animator.SetBool("waving", false);
            animator.SetBool("walking", true);
        }
        hasWavedAtPlayer = true;
        waveRefresh = waveRefreshTotal;
    }

    //not in use right now
    public void Movement()
    {
        transform.position = Vector3.MoveTowards(transform.position, targestDestination, speed * Time.deltaTime);

        if (Vector3.Distance(transform.position, targestDestination) < 0.01f)
        {
            transform.position = targestDestination;
            currentState = NPCState.LOOKING;
            LookForRocks();
        }
    }

    // may use this later, for now he will carry rock on back
    public void LookForRocks()
    {
        bool canPlayRock = false;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Rock" /*&& hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == plantType*/)
            {
                currentPlant = hitColliders[i].gameObject.GetComponent<Plant>();
                canPlayRock = true;
            }
            i++;
        }
        if (canPlayRock)
        {
            currentState = NPCState.PLAYING;
        }
        else
        {
            SetMove();
        }
    }

   
}
