using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cricket : RhythmProducer {
    Rigidbody cricketBody;
    BoxCollider cricketCollider;
    MeshRenderer cRenderer;

    [Header("Idle values")]
    public float idleTimer;
    public float idleTimeTotal;
    public AudioClip[] chirps;

    [Header("Jump values")]
    public float jumpForce;
    public float jumpFrames, jumpFramesTotal;

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
        cricketBody = GetComponent<Rigidbody>();
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
	public override void Update ()
    {
        //always idle in update check
        if (state == States.IDLE)
        {
            Idle();
        }
        //when receive beat from clock, jump!
        if (showRhythm && state != States.JUMPING)
        {
            Jump(jumpForce);
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
        //countdown for sound 
        idleTimer -= Time.deltaTime;
        if(idleTimer < 0)
        {
            //play sound, reset timer;
            PlayRandomSound(chirps, 1f);
            idleTimer = idleTimeTotal;
        }

        //if close to player, jump 
        if (Vector3.Distance(transform.position, player.transform.position) < 5 )
        {
            Jump(jumpForce);
            Debug.Log("jumping away from player :( ");
        }

        //manual limit on vel
        cricketBody.velocity = new Vector3(0, Mathf.Clamp(cricketBody.velocity.y, -5, 5), 0);
        
        //when it is morning
        //if (sunScript.timeState == Sun.TimeState.MORNING)
        //{
        //    //schleep
        //    state = States.SLEEPING;
        //    cRenderer.enabled = false;
        //}
    }

    void Jumping()
    {
        jumpFrames++;
        //first half
        if(jumpFrames <= jumpFramesTotal / 2)
        {
            //add upward force
            cricketBody.AddForce(0, jumpForce, 0);
            //add forward force 
            cricketBody.AddRelativeForce(0, 0, jumpForce * 2);
        }
        //second half
        if(jumpFrames > jumpFramesTotal / 2)
        {
            //add downward force
            cricketBody.AddForce(0, -jumpForce, 0);
            //add forward force 
            cricketBody.AddRelativeForce(0, 0, jumpForce);
        }
        
        //end jump -- set idle
        if(jumpFrames >= jumpFramesTotal)
        {
            //if we are farther than jump radius from the original point 
            if(Vector3.Distance(transform.position, originPoint) > jumpRadius)
            {
                // look at origin point 
                transform.LookAt(originPoint, Vector3.up);
            }
            cricketBody.angularVelocity = Vector3.zero;
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
    void Jump(float force)
    {
        state = States.JUMPING;
        jumpForce = force;
        jumpFrames = 0;
        showRhythm = false;
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
        jumpForce *= randomScale;
    }
}
