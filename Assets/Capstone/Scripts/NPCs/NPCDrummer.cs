using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class NPCDrummer : NPC {

    public AudioClip[] basicBeat;
    
    int moveCounter;

    public float scaleColliderTime;
    float collisionSpeed, particleSpeed, particleLifetime;
    public int timeScale;
    Vector3 targestDestination;

    BoxCollider drummerCollider;
    Vector3 originalColliderSize;

    bool bassOrSnare, playedAudio, playParticles;
    public AudioMixerGroup normal, silent;

    ParticleSystem beatParticles;
    DrumCollider drumCollision;
    public List<GameObject> drumSet = new List<GameObject>();
    List<Vector3> drumPositions = new List<Vector3>();

    AudioSource drumBeatSource;

    private void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
    }

    private void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    void OnThirtySecond(BeatArgs e)
    {
        switch (timeScale)
        {
            case 0:
                if (e.TickMask[TickValue.Quarter])
                {
                    playParticles = true;
                }
                break;
            case 1:
                if (e.TickMask[TickValue.Eighth])
                {
                    playParticles = true;
                }
                break;
            case 2:
                if (e.TickMask[TickValue.Sixteenth])
                {
                    playParticles = true;
                }
                break;
        }
        
    }
    public override void Start () {
        base.Start();
        moveCounter = 0;
        animator.SetBool("walking", false);
        animator.speed = 0.75f;

        beatParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        beatParticles.Stop();
        drumCollision = transform.GetChild(2).GetComponent<DrumCollider>();

        if(transform.childCount > 3)
        {
            for (int i = 3; i < (transform.childCount); i++)
            {
                drumSet.Add(transform.GetChild(i).gameObject); //Going to be adding these one at a time in GrowPlant
                drumPositions.Add(transform.GetChild(i).localPosition);
            }
        }

        drumBeatSource = GetComponent<AudioSource>();
        drumBeatSource.clip = basicBeat[timeScale]; //sets sound based on timeScale
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
            for(int i=0;i < drumSet.Count; i++)
            {
                drumSet[i].transform.localPosition = new Vector3(0, 1, -3);
                drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
            }
            //bassDrumSource.outputAudioMixerGroup = tpc.plantingGroup;
            drumCollision.gameObject.SetActive(false);
            drumBeatSource.outputAudioMixerGroup = tpc.plantingGroup;
            //drummerCollider.size = new Vector3(originalColliderSize.x * 5, originalColliderSize.y , originalColliderSize.z * 5);
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
            animator.SetBool("walking", false);
            if(Vector3.Distance(_player.transform.position, transform.position) < 100)
            {
                AudioRhythm();
                if (playParticles)
                {
                    drumCollision.StartCoroutine(drumCollision.LerpScale(collisionSpeed));
                    beatParticles.Play();
                    playParticles = false;
                }
            }
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
    
    void AudioRhythm()
    {
        if (!playedAudio)
        {
            SwitchTimeScale();
            playedAudio = true;
        }
        else
        {
            if (!drumBeatSource.isPlaying )
            {
                SwitchTimeScale();
                playedAudio = false;

            }
        }
    }

    void SwitchTimeScale()
    {
        drumBeatSource.clip = basicBeat[timeScale];
        ParticleSystem.MainModule beatParticlesModule = beatParticles.main;

        switch (timeScale)
        {
            case 0:
                drumBeatSource.PlayScheduled(SimpleClock.AtNextQuarter());
                collisionSpeed = 4f;
                particleSpeed = 7.5f;
                particleLifetime = 3f;
                break;
            case 1:
                drumBeatSource.PlayScheduled(SimpleClock.AtNextEighth());
                collisionSpeed = 2f;
                particleSpeed = 15f;
                particleLifetime = 1.5f;
                break;
            case 2:
                drumBeatSource.PlayScheduled(SimpleClock.AtNextSixteenth());
                collisionSpeed = 1f;
                particleSpeed = 30f;
                particleLifetime = 0.75f;
                break;
            //case 3:
            //    drumBeatSource.PlayScheduled(SimpleClock.AtNextQuarterTriplet());
            //    break;
        }
        beatParticlesModule.startSpeed = particleSpeed;
        beatParticlesModule.startLifetime = particleLifetime;
    }

    public override void OnMouseOver()
    {
        base.OnMouseOver();
        if (Input.GetMouseButtonDown(1) && currentState != NPCState.FOLLOWING) 
        {
            if (timeScale < 2)
            {
                timeScale++;
                animator.speed += 0.25f;
            }
            else
            {
                timeScale = 0;
                animator.speed = 0.25f;
            }
        }
    }

    void SetMove()
    {
        for (int i = 0; i < drumSet.Count; i++)
        {
            drumSet[i].transform.localPosition = drumPositions[i];
            drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
        }

        //how should we move the drummer when he needs to find rocks?
        //baseParticles.transform.localPosition = drumPosition + new Vector3(0,2,0);
        drummerCollider.size = originalColliderSize;
        drumCollision.gameObject.SetActive(true);
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
