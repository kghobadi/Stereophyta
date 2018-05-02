using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rain : MonoBehaviour
{
    GameObject _player;

    ParticleSystem rainEffect;

    BoxCollider rainTrigger;

    float timer = 0, randomRotateDirection = 1;
    public float lifeTime, moveSpeed;
    float remainder;

    Transform cloud;

    AudioSource rainSource;

    public List<ParticleCollisionEvent> collisionEvents;

    public List<GameObject> rainSplashes;

    protected bool playedAudio, showRhythm, onClock;

    public int timeScale;

    public virtual void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public virtual void OnThirtySecond(BeatArgs e)
    {
        switch (timeScale)
        {
            case 0:
                if (e.TickMask[TickValue.Measure])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 1:
                if (e.TickMask[TickValue.Quarter])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 2:
                if (e.TickMask[TickValue.Eighth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 3:
                if (e.TickMask[TickValue.Sixteenth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 4:
                if (e.TickMask[TickValue.ThirtySecond])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
        }

    }

    void Start()
    {
        timeScale = Random.Range(0, 5);
        
        _player = GameObject.FindGameObjectWithTag("Player");

        for (int i = 1; i < 17; i++)
        {
            rainSplashes.Add(transform.GetChild(i).gameObject);
        }

        SwitchTimeScale();
        rainEffect = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();

        lifeTime = Random.Range(40, 100);
        moveSpeed = Random.Range(2.5f, 6.0f);

        rainTrigger = GetComponent<BoxCollider>();

        cloud = transform.GetChild(0);
        cloud.eulerAngles = new Vector3(0, Random.Range(0, 360), 0);

        rainSource = GetComponent<AudioSource>();
    }
    

    void OnParticleCollision(GameObject other)
    {
        int numCollisionEvents = rainEffect.GetCollisionEvents(other, collisionEvents);
        
        int i = 0;

        while (i < numCollisionEvents)
        {
            if(i < 16)
            {
                if (other.tag == "Ground")
                {
                    Vector3 pos = collisionEvents[i].intersection;
                    rainSplashes[i].transform.position = pos;
                    RainSplash thisSplash = rainSplashes[i].GetComponent<RainSplash>();
                    thisSplash.StartCoroutine(thisSplash.Splash());
                }
            }
            
            i++;
        }
    }

    void Update()
    {
        RandomTravel();
        if(Vector3.Distance(transform.position, _player.transform.position) < 150 && !onClock)
        {
            SimpleClock.ThirtySecond += OnThirtySecond;
            onClock = true;
        }
        else if(Vector3.Distance(transform.position, _player.transform.position) > 155 && onClock)
        {
            SimpleClock.ThirtySecond -= OnThirtySecond;
            onClock = false;
        }
        if (showRhythm )
        {
            rainEffect.Play();
            showRhythm = false;
        }
    }

    void SwitchTimeScale()
    {
        switch (timeScale)
        {
            //can mess with speeds here to vary it up even more!
            case 0:
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().oneNotes;
                }
                break;
            case 1:
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().twoNotes;
                }
                break;
            case 2:
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().threeNotes;
                }
                break;
            case 3:
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().fourNotes;
                }
                break;
            case 4:
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().fiveNotes;
                }
                break;
        }
    }

    void RandomTravel()
    {
        timer += Time.deltaTime;

        if (timer > lifeTime)
            Destroy(this.gameObject);

        transform.Translate(Vector3.forward * Time.deltaTime * moveSpeed);

        remainder = timer % 8;
        if (remainder < 0.2f)
        {
            float randy = Random.Range(0, 100);
            if (randy > 50)
                randomRotateDirection = Random.Range(0, 1.0f);
            else
                randomRotateDirection = Random.Range(-1.0f, 0);


        }

        transform.Rotate(Vector3.up * Time.deltaTime * moveSpeed * 0.3f * randomRotateDirection);

        if ((randomRotateDirection > 0 && transform.localScale.x < 2) || (randomRotateDirection < 0 && transform.localScale.x > 0.4f))
            transform.localScale += Vector3.one * Time.deltaTime * moveSpeed * 0.0025f * randomRotateDirection;
    }

}
