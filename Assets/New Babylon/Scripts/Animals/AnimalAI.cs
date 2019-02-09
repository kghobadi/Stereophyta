using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

//Generic Animal script from which all animals inherit base movement and audio controls

public abstract class AnimalAI : MonoBehaviour {
    //player reference
    protected GameObject player;

    //privately referenced usable components of this game object
    public AudioSource animalAudio;
    protected Animator animator;

    //audio clip arrays for different audio stages
    //these get pulled from to play out sounds based on frequency
    public AudioClip[] walking, idle, running;

    //for targeting new positions with the nav mesh
    protected Vector3 targetPosition, origPosition, returnPos;

    //radius within which crab can move, and movement speeds
    public float movementRadius = 25f, walkSpeed, runSpeed = 10f;

    //use this to set how often they change positions
    protected float moveTimer = 5; 
    public float moveTimerTotal = 5f;

    //is it moving or running???
    public bool isMoving, isRunning;

    //frequency timers for all the various sounds to play out
    public float nextNoteIn = 0.25f, soundTimerTotal = 0.25f, walkTimerTotal = 0.5f, runTimerTotal=0.15f;

    //are you close enough to spook' em??? -- distance when animal decides it has reached dest
    public float  spookDistance = 15, stopMovingDistance = 5;
    NavMeshAgent myNavMesh;

    public float randomScaleMin = 0.5f, randomScaleMax = 2;

    //for color lerping animal's materials
    public SkinnedMeshRenderer myMR;
    public Color idleSilent, idleAudible, walkingSilent, walkingAudible, runningSilent, runningAudible;

    //lerps colors
    public float lerpSpeed;
    public LayerMask grounded;

	public virtual void Start () {
        //find our player!
        player = GameObject.FindGameObjectWithTag("Player");

        //get our various components
        animalAudio = GetComponent<AudioSource>();
        animator = GetComponent<Animator>();
        myNavMesh = GetComponent<NavMeshAgent>();

        //set position and speed for navmesh movement!
        origPosition = transform.position;
        animator.speed = 1f;
        myNavMesh.speed = walkSpeed;

        RandomizeSize();

        float randomStartMove = Random.Range(0, 100);
        if(randomStartMove > 50)
        {
            isMoving = true;
        }

        myMR = GetComponentInChildren<SkinnedMeshRenderer>();
    }

    public virtual void Update () {
        //IDLE state
        //timers tick for both next move and for idle sounds
        if (!isMoving)
        {
            animator.SetBool("idle", true);
            moveTimer -= Time.deltaTime;

            if (moveTimer < 0)
            {
                SetDestination();
                moveTimer = moveTimerTotal /*+ crabAudio.clip.length*/;
            }

            nextNoteIn -= Time.deltaTime;

            if (nextNoteIn < 0)
            {
                PlaySound(idle);
                nextNoteIn = soundTimerTotal /*+ crabAudio.clip.length*/;
            }
        }

        //MOVING State
        //Includes timers for both running and walking sounds
        else
        {
            //animal looks at the point it will be running to
            //How would we make it dynamically look forward rather than always face its final destination?
            transform.LookAt(new Vector3(targetPosition.x, transform.position.y, targetPosition.z));

            nextNoteIn -= Time.deltaTime;

            if(nextNoteIn < 0)
            {
                if (isRunning)
                {
                    PlaySound(running);
                }
                else
                {
                    PlaySound(walking);
                }
                nextNoteIn = soundTimerTotal /*+ crabAudio.clip.length*/;
            }

            //stop running after we are close to position
            if(Vector3.Distance(transform.position, targetPosition) < stopMovingDistance)
            {
                Debug.Log("stopped moving");

                StopMoving();
            }
        }

        //getting spooked check
        if(Vector3.Distance(transform.position, player.transform.position) < spookDistance && !isRunning)
        {
            RunAway();
        }

        //color lerping in relation to audio

        //while walking
        if (isMoving && !isRunning)
        {
            if (animalAudio.isPlaying)
            {
                myMR.material.color = Color.Lerp(myMR.material.color, walkingAudible, Time.deltaTime * lerpSpeed);
            }
            else
            {
                myMR.material.color = Color.Lerp(myMR.material.color, walkingSilent, Time.deltaTime * lerpSpeed);
            }
        }

        //while running
        if (isRunning)
        {
            if (animalAudio.isPlaying)
            {
                myMR.material.color = Color.Lerp(myMR.material.color, runningAudible, Time.deltaTime * lerpSpeed);
            }
            else
            {
                myMR.material.color = Color.Lerp(myMR.material.color, runningSilent, Time.deltaTime * lerpSpeed);
            }
        }

        //while idle
        if(!isMoving && !isRunning)
        {
            if (animalAudio.isPlaying)
            {
                myMR.material.color = Color.Lerp(myMR.material.color, idleAudible, Time.deltaTime * lerpSpeed);
            }
            else
            {
                myMR.material.color = Color.Lerp(myMR.material.color, idleSilent, Time.deltaTime * lerpSpeed);
            }
        }
	}

    //called to set running away from player state
    public virtual void RunAway()
    {
        isRunning = true;
        soundTimerTotal = runTimerTotal;
        myNavMesh.speed = runSpeed;
        animator.SetBool("walking", false);
        animator.SetBool("running", true);
        animator.SetBool("idle", false);
        returnPos = transform.position;
        SetDestination();
    }

    //stops movement
    public virtual void StopMoving()
    {
        isMoving = false;
        isRunning = false;
        myNavMesh.speed = walkSpeed;
        myNavMesh.isStopped = true;
        soundTimerTotal = walkTimerTotal;
        animator.SetBool("running", false);
        animator.SetBool("walking", false);
        animator.SetBool("idle", true);
    }

    //this function sets a random point as the nav mesh destination
    //checks if the animal can walk there before setting it
    //sets animator correctly
    public virtual void SetDestination()
    {
        Vector2 xz = Random.insideUnitCircle * movementRadius;

        Vector3 pointToCastFrom = new Vector3(xz.x + origPosition.x, transform.position.y + 10, xz.y + origPosition.z);

        RaycastHit hit;
        // Does the ray intersect any objects excluding the player layer
        if (Physics.Raycast(pointToCastFrom, Vector3.down, out hit, Mathf.Infinity, grounded))
        {
            targetPosition = hit.point;
        }

        //Collider[] collisions = Physics.OverlapSphere(targetPosition, 7);

        //int colCounter = 0;

        //for(int i = 0; i < collisions.Length; i++)
        //{
        //    if(collisions[i].gameObject.tag == "Plant" || collisions[i].gameObject.tag == "House" )
        //    {
        //        colCounter++;
        //    }
        //}
        ////call function again
        //if(colCounter > 0)
        //{
        //    SetDestination();
        //}
        //else
        //{
            myNavMesh.SetDestination(targetPosition);

            isMoving = true;

            myNavMesh.isStopped = false;

            animator.SetBool("idle", false);

            if (!isRunning)
            {
                animator.SetBool("walking", true);
            }
        //}
       
    }

    public virtual void RandomizeSize()
    {
        //animal's original size
        Vector3 origScale = transform.localScale;

        //alter the scale
        float randomScale = Random.Range(randomScaleMin, randomScaleMax);

        //multiply scale AND volume by our random vals
        transform.localScale *= randomScale;
        animalAudio.volume *= randomScale;
    }

    //Actually plays the animal's audio with random sound selection
    public virtual void PlaySound(AudioClip[] animalSounds)
    {
        int randomSound = Random.Range(0, animalSounds.Length);
        animalAudio.PlayOneShot(animalSounds[randomSound]);
        //animalAudio.clip = animalSounds[randomSound];
    }
}
