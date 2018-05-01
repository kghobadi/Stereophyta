using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rain : MonoBehaviour
{

    ParticleSystem rainEffect;

    BoxCollider rainTrigger;

    float timer = 0, randomRotateDirection = 1;
    public float lifeTime, moveSpeed;
    float remainder;

    Transform cloud;

    AudioSource rainSource;

    public List<ParticleCollisionEvent> collisionEvents;

    public List<GameObject> rainSplashes;

    protected bool playedAudio, showRhythm;

    public int timeScale;

    public virtual void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
    }

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

        for (int i = 1; i < 17; i++)
        {
            rainSplashes.Add(transform.GetChild(i).gameObject);
        }

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
                if (other.tag == "Ground" || other.tag == "Plant" || other.tag == "Rock")
                {
                    Vector3 pos = collisionEvents[i].intersection;
                    rainSplashes[i].transform.position = pos;
                    RainSplash thisSplash = rainSplashes[i].GetComponent<RainSplash>();
                    if (i < thisSplash.splashSounds.Length)
                        thisSplash.currentSound = i;
                    else
                    {
                        int randomSplash = Random.Range(0, thisSplash.splashSounds.Length);
                        thisSplash.currentSound = randomSplash;
                    }
                    thisSplash.StartCoroutine(thisSplash.Splash());
                }
            }
            
            i++;
        }
    }

    void Update()
    {
        RandomTravel();
        if (showRhythm)
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
