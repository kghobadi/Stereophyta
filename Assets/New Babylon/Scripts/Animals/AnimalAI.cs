using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

//Generic Animal script from which all animals inherit base movement and audio controls

public abstract class AnimalAI : AudioHandler {
    //player reference
    protected GameObject player;
    protected Sun sunScript;

    //privately referenced usable components of this game object
    protected Animator animator;

    [Header("Animal Type & AI State")]
    public AnimalType animalType;
    public enum AnimalType
    {
        CRAB, DEER,
    }
    public AnimalAIStates animalState;
    public enum AnimalAIStates
    {
        IDLE, MOVING, RUNNING, SLEEPING, INTERRUPTED,
    }

    //audio clip arrays for different audio stages
    //these get pulled from to play out sounds based on frequency
    [Header("Audio")]
    public AudioClip[] idle;
    public AudioClip[] walking, running, sleeping;
    public AudioClip interruptSound;
    //frequency timers for all the various sounds to play out
    public float nextNoteIn = 0.25f, soundTimerTotal = 0.25f, walkTimerTotal = 0.5f, runTimerTotal = 0.15f, sleepTimerTotal = 0.5f;

    
    //radius within which crab can move, and movement speeds
    [Header("AI Movement")]
    public float movementRadius = 25f;
    public float walkSpeed, runSpeed = 10f;
    //for targeting new positions with the nav mesh
    protected Vector3 targetPosition, origPosition, returnPos;
    //use this to set how often they change positions
    protected float moveTimer = 5;
    public float moveTimerTotal = 5f;
    //are you close enough to spook' em??? -- distance when animal decides it has reached dest
    public float  spookDistance = 15, stopMovingDistance = 5;
    protected NavMeshAgent myNavMesh;
    public float randomScaleMin = 0.5f, randomScaleMax = 2;

    //for color lerping animal's materials
    [Header("Material Settings")]
    public SkinnedMeshRenderer myMR;
    public Color idleSilent, idleAudible, walkingSilent, walkingAudible, runningSilent, runningAudible, sleepingSilent, sleepingAudible;
    //lerps colors
    public float lerpSpeed;
    public LayerMask grounded;

	public override void Awake () {
        base.Awake();
        //hail the sun
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        //find our player!
        player = GameObject.FindGameObjectWithTag("Player");

        //get our various components
        animator = GetComponent<Animator>();
        myNavMesh = GetComponent<NavMeshAgent>();
        myMR = GetComponentInChildren<SkinnedMeshRenderer>();
    }

    public virtual void Start()
    {
        //set position and speed for navmesh movement!
        origPosition = transform.position;
        animator.speed = 1f;
        myNavMesh.speed = walkSpeed;

        RandomizeSize();

        //random start state
        float randomStartMove = Random.Range(0, 100);
        if (randomStartMove > 50)
        {
            animalState = AnimalAIStates.MOVING;
        }
        else
        {
            animalState = AnimalAIStates.IDLE;
        }
    }

    public virtual void Update () {
        //IDLE state
        //timers tick for both next move and for idle sounds
        if (animalState == AnimalAIStates.IDLE)
        {
            animator.SetBool("idle", true);
            moveTimer -= Time.deltaTime;

            if (moveTimer < 0)
            {
                SetDestination(true);
                moveTimer = moveTimerTotal ;
            }

            SoundCountdown(idle);
            SetLerpColor(idleAudible, idleSilent);
        }

        //MOVING State
        //Includes timers for walking sounds
        if(animalState == AnimalAIStates.MOVING)
        {
            //animal looks at the point it will be running to
            //How would we make it dynamically look forward rather than always face its final destination?
            transform.LookAt(new Vector3(targetPosition.x, transform.position.y, targetPosition.z));
            SetLerpColor(walkingAudible, walkingSilent);
            SoundCountdown(walking);

            //stop running after we are close to position
            if(Vector3.Distance(transform.position, targetPosition) < stopMovingDistance)
            {
                StopMoving();
            }
        }

        //RUNNING state
        if (animalState == AnimalAIStates.RUNNING)
        {
            //animal looks at the point it will be running to
            transform.LookAt(new Vector3(targetPosition.x, transform.position.y, targetPosition.z));
            SetLerpColor(runningAudible, runningSilent);
            SoundCountdown(running);

            //stop running after we are close to position
            if (Vector3.Distance(transform.position, targetPosition) < stopMovingDistance)
            {
                StopMoving();
            }
        }

        //getting spooked check -- only RunAway if not already running / sleeping 
        if (Vector3.Distance(transform.position, player.transform.position) < spookDistance 
            && animalState != AnimalAIStates.RUNNING && animalState != AnimalAIStates.SLEEPING && animalState != AnimalAIStates.INTERRUPTED)
        {
            RunAway();
        }

        //animals sleep at night right?
        if (sunScript.timeState == Sun.TimeState.NIGHT && animalState != AnimalAIStates.SLEEPING)
        {
            animalState = AnimalAIStates.SLEEPING;
            soundTimerTotal = sleepTimerTotal;
            SetAnimator("sleeping");
        }

        //what the animal does while sleeping
        if(animalState == AnimalAIStates.SLEEPING)
        {
            SoundCountdown(sleeping);
            SetLerpColor(sleepingAudible, sleepingSilent);

            //once it's morning, return to idle
            if(sunScript.timeState == Sun.TimeState.MORNING)
            {
                StopMoving();
            }
        }
        
        //looks like its time to reset this feller 
        if (Vector3.Distance(transform.position, origPosition) > 75)
        {
            transform.position = origPosition;
            StopMoving();
        }

    }

    //countsdown for next sound to play, uses sound array to play it 
    public virtual void SoundCountdown(AudioClip[] sounds)
    {
        nextNoteIn -= Time.deltaTime;

        if (nextNoteIn < 0)
        {
            PlayRandomSound(sounds, 1f);

            nextNoteIn = soundTimerTotal;
        }
    }

    //lerps the animals colors 
    public virtual void SetLerpColor(Color audible, Color silent)
    {
        if (myAudioSource.isPlaying)
        {
            myMR.material.color = Color.Lerp(myMR.material.color, audible, Time.deltaTime * lerpSpeed);
        }
        else
        {
            myMR.material.color = Color.Lerp(myMR.material.color, silent, Time.deltaTime * lerpSpeed);
        }
    }

    //called to set running away from player state
    public virtual void RunAway()
    {
        soundTimerTotal = runTimerTotal;
        myNavMesh.speed = runSpeed;
        returnPos = transform.position;
        SetDestination(false);
    }

    //stops movement
    public virtual void StopMoving()
    {
        myNavMesh.speed = walkSpeed;
        myNavMesh.isStopped = true;
        soundTimerTotal = walkTimerTotal;
        SetAnimator("idle");
        animalState = AnimalAIStates.IDLE;
    }

    //this function sets a random point as the nav mesh destination
    //checks if the animal can walk there before setting it
    //sets animator correctly
    //TRUE for WALKING -- FALSE for RUNNING
    public virtual void SetDestination(bool walkingOrRunning)
    {
        Vector2 xz = Random.insideUnitCircle * movementRadius;

        Vector3 pointToCastFrom = new Vector3(xz.x + origPosition.x, transform.position.y + 10, xz.y + origPosition.z);

        RaycastHit hit;
        // Does the ray intersect any objects excluding the player layer
        if (Physics.Raycast(pointToCastFrom, Vector3.down, out hit, Mathf.Infinity, grounded))
        {
            targetPosition = hit.point;
        }

        myNavMesh.SetDestination(targetPosition);

        myNavMesh.isStopped = false;

        //walking
        if (walkingOrRunning)
        {
            animalState = AnimalAIStates.MOVING;
            SetAnimator("walking");
        }
        //running
        else
        {
            animalState = AnimalAIStates.RUNNING;
            SetAnimator("running");
        }
    }

    //basic set animator function 
    public virtual void SetAnimator(string nextState)
    {
        animator.SetBool("idle", false);
        animator.SetBool("walking", false);
        animator.SetBool("running", false);
        animator.SetBool("sleeping", false);

        animator.SetBool(nextState, true);
    }

    //randomizes animal's size at start 
    public virtual void RandomizeSize()
    {
        //animal's original size
        Vector3 origScale = transform.localScale;

        //alter the scale
        float randomScale = Random.Range(randomScaleMin, randomScaleMax);

        //multiply scale AND volume by our random vals
        transform.localScale *= randomScale;
        myAudioSource.volume *= randomScale;
    }
    
}
