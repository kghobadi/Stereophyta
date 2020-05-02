using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GullAI : RhythmProducer
{
    Sun sun;
    GullAnimation gullAnim;
    MoveTowards mover;
    ParticleSystem soundsPlayer;
    ParticleSystem.MainModule soundsMain;

    [Header("Gull AI Settings")]
    public GullStates gullStates;
    public enum GullStates
    {
        IDLE, FLYING, DIVING, ASCENDING,
    }

    //move states 
    public float flightSpeed, diveSpeed, glideSpeed;
    float origGlideSpeed;
    public Transform[] idlePoints, divePoints, ascentPoints;
    Vector3 lookPoint;

    //IDLE 
    Vector3 glidePoint, hoverPoint;
    public bool gliding;
    public float maxDistFromGlidePoint = 3f;

    [Header("Dive Values")]
    public float diveChance = 25f;
    bool canDive = true;
    public float diveReset = 0.5f;
    float diveTimer = 0f;

    [Header("Sounds")]
    public AudioClip[] idles;
    public AudioClip[] dives;
    public AudioClip[] ascends;
    public AudioClip[] splashes;

    public override void Awake()
    {
        base.Awake();
        sun = FindObjectOfType<Sun>();
        gullAnim = GetComponent<GullAnimation>();
        mover = GetComponent<MoveTowards>();
        origGlideSpeed = glideSpeed;
        soundsPlayer = GetComponentInChildren<ParticleSystem>();
    }

    void Start()
    {
        sun.newDay.AddListener(NewDay);
        SetTimeScale();

        //select point from array 
        int index = Random.Range(0, idlePoints.Length);
        Vector3 point = idlePoints[index].position;

        transform.position = point;
        SetIdle(point);

        if (soundsPlayer)
        {
            soundsMain = soundsPlayer.main;
            soundsMain.startColor = GetComponentInChildren<SetRandomMaterial>().assignedMat.color;
        }
    }

    void NewDay()
    {
        SetTimeScale();
    }

    void Update()
    {
        
        //IDLE
        if(gullStates == GullStates.IDLE)
        {
            //dist from glide point 
            float dist = Vector3.Distance(transform.position, glidePoint);

            //look at a dive point 
            transform.LookAt(lookPoint, Vector3.up);

            //glide 
            if (gliding)
            {
                Glide(dist);
            }
            //adjust
            else
            {
                Adjust(dist);
            }
              
            //dive on space for now (will be triggered by Aud spectrum)
            if (showRhythm)
            {
                DiveCheck();
            }

            DiveReset();
        }

        //seagull sound :-)
        if (showRhythm)
        {
            PlayRandomSoundRandomPitch(idles, myAudioSource.volume);
            if (soundsPlayer)
                soundsPlayer.Play();
            showRhythm = false;
        }

        //DIVE
        if (gullStates == GullStates.DIVING)
        {
            transform.LookAt(lookPoint);

            //stopped moving, ascend
            if (mover.moving == false)
            {
                Ascend();
            }
        }

        //ASCEND
        if (gullStates == GullStates.ASCENDING)
        {
            transform.LookAt(lookPoint);

            //stopped moving, fly to idle 
            if (mover.moving == false)
            {
                FlyToIdle();
            }
        }

        //FLYING 
        if (gullStates == GullStates.FLYING)
        {
            transform.LookAt(lookPoint);

            //stopped moving, fly to idle 
            if (mover.moving == false)
            {
                SetIdle(mover.destination);
            }
        }
    }

    //called while idling to 'glide' in wind 
    void Glide(float dist)
    {
        //move towards hover point 
        if (dist <= maxDistFromGlidePoint)
            transform.position = Vector3.MoveTowards(transform.position, hoverPoint, glideSpeed * Time.deltaTime);
        else
        {
            //fly
            gullAnim.SetAnimator("flying");
            gliding = false;
        }
    }

    //moves gull towards glide point 
    void Adjust(float dist)
    {
        //move towards glid point origin 
        if (dist >= 0.5f)
        {
            transform.position = Vector3.MoveTowards(transform.position, glidePoint, glideSpeed * Time.deltaTime);
        }
        //sets glide 
        else
        {
            hoverPoint = glidePoint + (Random.insideUnitSphere * (maxDistFromGlidePoint * 5));
            gullAnim.SetAnimator("idle");
            glideSpeed = origGlideSpeed + Random.Range(-5f, 5f);
            gliding = true;
        }
    }

    //return to idling state
    void SetIdle(Vector3 point)
    {
        //set glide & hover
        glidePoint = point;
        hoverPoint = glidePoint + (Random.insideUnitSphere * maxDistFromGlidePoint * 5);

        //select look point from dives array 
        int index = Random.Range(0, divePoints.Length);
        lookPoint = divePoints[index].position;

        //set anim & state 
        gullAnim.SetAnimator("idle");
        gliding = true;
        gullStates = GullStates.IDLE;
        canDive = true;
    }

    //check if the seagull should dive 
    void DiveCheck()
    {
        //random chance to dive 
        if (canDive)
        {
            float dive = Random.Range(0f, 100f);

            if (dive < diveChance)
            {
                Dive();
            }

            diveTimer = 0;
            canDive = false;
        }
    }

    //dive ability Reset 
    void DiveReset()
    {
        if(!canDive)
        {
            diveTimer += Time.deltaTime;
            if (diveTimer > diveReset)
            {
                canDive = true;
            }
        }
    }

    //seagull dives towards a dive point 
    void Dive()
    {
        SetMove(divePoints, diveSpeed);
        gullStates = GullStates.DIVING;
        gullAnim.SetAnimator("diving");
        //PlayRandomSound(dives, myAudioSource.volume);
        showRhythm = false;
    }

    //called once gull reaches dive point 
    void Ascend()
    {
        SetMove(ascentPoints, diveSpeed);
        gullStates = GullStates.ASCENDING;
        //PlayRandomSound(ascends, myAudioSource.volume);
        gullAnim.SetAnimator("flying");
    }

    //fly from ascent point back to idle point 
    void FlyToIdle()
    {
        SetMove(idlePoints, flightSpeed);
        gullStates = GullStates.FLYING;
        //PlayRandomSound(idles, myAudioSource.volume);
        gullAnim.SetAnimator("flying");
    }

    //move gull towards a point or transform at speed 
    void SetMove(Transform[] points, float speed)
    {
        //select point from array 
        int index = Random.Range(0, points.Length);
        Vector3 point = points[index].position;
        //randomize speed
        float newSpeed = speed + Random.Range(-5f, 15f);
        //set move towards 
        mover.MoveTo(point, newSpeed);
        lookPoint = point;
    }

    //set seagull time scale
    public void SetTimeScale()
    {
        timeScale = Random.Range(0, 5);
        
        //should affect the speeds of my behaviors depending on what time scale right??
    }
}
