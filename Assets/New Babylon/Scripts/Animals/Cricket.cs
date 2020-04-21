using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cricket : RhythmProducer {
    BoxCollider cricketCollider;
    MeshRenderer cRenderer;
    Rigidbody cBody;

    [Header("Sounds")]
    public AudioClip[] chirps;
    public AudioClip[] jumps;

    [Header("Idle values")]
    public float idleTimer;
    public float idleTimeTotal;

    [Header("Jump values")]
    public float jumpMagnitude;
    public float jumpFreq, forwardMultiplier, moveSpeed;
    public int jumpFrames, jumpFramesTotal;
    Vector3 jumpPos;

    //starting point
    public Vector3 originPoint;
    public float jumpRadius = 5f;
    public States state;
    public enum States
    {
        IDLE, JUMPING, SLEEPING,
    }

    public override void Awake()
    {
        base.Awake();
        cBody = GetComponent<Rigidbody>();
        cricketCollider = GetComponent<BoxCollider>();
        cRenderer = GetComponentInChildren<MeshRenderer>();
    }

    void Start ()
    {
        originPoint = transform.position;
        idleTimeTotal += Random.Range(-idleTimer / 2, idleTimeTotal / 2);
        idleTimer = idleTimeTotal;
        RandomizePitch(pitchRange.x, pitchRange.y);
        RandomizeSize();
        timeScale = Random.Range(0, 5);
        state = States.IDLE;
    }
	
	// my own update
	void Update ()
    {
        //always idle in update check
        if (state == States.IDLE)
        {
            Idle();
        }
        //when receive beat from clock, jump!
        if (showRhythm && state != States.JUMPING && state != States.SLEEPING)
        {
            Jump();
        }
        //sleeping check (during the day) 
        if (state == States.SLEEPING)
        {
            Sleeping();
        }
    }

    void FixedUpdate()
    {
        //jumping check 
        if (state == States.JUMPING)
        {
            Jumping();
        }
    }

    //Sitting still, playing my musak 
    void Idle()
    {
        //when it is morning
        if (sunScript.timeState == Sun.TimeState.MORNING)
        {
            //schleep
            state = States.SLEEPING;
            cRenderer.enabled = false;
        }

        //countdown for sound 
        idleTimer -= Time.deltaTime;
        if(idleTimer < 0)
        {
            //play sound, reset timer;
            PlayRandomSoundRandomPitch(chirps, myAudioSource.volume);
            idleTimer = idleTimeTotal;
        }

        cBody.AddForce(0f, -1f, 0f);

        //if close to player, jump 
        if (Vector3.Distance(transform.position, player.transform.position) < 5 )
        {
            Jump();
            Debug.Log("jumping away from player :( ");
        }
    }

    void Jumping()
    {
        jumpFrames++;
        //calculate jump pos by adding forward vector + up sin vector 
        jumpPos += (transform.forward  * forwardMultiplier) + (transform.up * Mathf.Sin(Time.time * jumpFreq) * jumpMagnitude);
        //sin wav jump
        transform.position = Vector3.MoveTowards(transform.position, jumpPos, Time.deltaTime * moveSpeed);

        //end jump -- set idle
        if (jumpFrames >= jumpFramesTotal)
        {
            //reset to idle 
            state = States.IDLE;
        }
    }

    void Sleeping()
    {
        //when it is night, wake up / return to idle 
        if (sunScript.timeState == Sun.TimeState.NIGHT)
        {
            state = States.IDLE;
            cRenderer.enabled = true;
        }
    }

    //call to jump
    void Jump()
    {
        //if we are farther than jump radius from the original point 
        if (Vector3.Distance(transform.position, originPoint) > jumpRadius)
        {
            // look at origin point 
            transform.LookAt(originPoint, Vector3.up);

            //randomly rotate on Y a bit 
            float randomRotate = Random.Range(-30f, 30f);

            transform.Rotate(0, randomRotate, 0);
        }

        state = States.JUMPING;
        jumpFrames = 0;
        jumpPos = transform.position;
        showRhythm = false;

        PlayRandomSound(jumps, myAudioSource.volume);
    }

    //randomizes animal's size at start 
    void RandomizeSize()
    {
        //animal's original size
        Vector3 origScale = transform.localScale;

        //alter the scale
        float randomScale = Random.Range(pitchRange.x, pitchRange.y);

        //multiply scale AND volume by our random vals
        transform.localScale *= randomScale;
        myAudioSource.volume *= randomScale;
        jumpMagnitude *= randomScale;
    }
}
