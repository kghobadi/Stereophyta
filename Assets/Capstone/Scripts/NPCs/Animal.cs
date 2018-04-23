using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class Animal : Interactable {
    //visual vars
    public Animator animator;
    TrailRenderer trailRender;

    //list of plants I can eat
    protected List<HornPlant> currentPlants = new List<HornPlant>();
    //max # of plants at waypoint
    public int plantMaximum;

    //following in player line variables
    public float followDistance, currentFollowDistance, followTimer, followTimeMin;
    int lastLineLength, placeInLine;

    //wave animation variables
    public float greetingTime, greetRefresh, greetRefreshTotal, visionDistance, waitingTime;
    protected bool hasGreetedPlayer;

    //home pos is starting pos and myPath will be used to find labor routes around the map
    protected Vector3 homePosition, homeRotation;
    protected string myPath; // will use this to find relevant transform Containers

    //navmesh ref and musician, language script ref
    public NavMeshAgent navMeshAgent;

    //movement vars
    public int moveCounter =0;
    public float moveSpeedOriginal;
    protected Vector3 targestDestination;

    //movement point container and list -- and home version
    public Transform movementPointsContainer;
    public List<Transform> movementPoints = new List<Transform>();
    Transform chosenWaypoint; // for finding new path

    public float holdTimer = 0, holdTimerWait = 0.25f;

    //for note up or down
    bool clickedButton;

    AudioSource myVoice;

    //the state var
    public NPCState currentState;
    public NPCState lastState; // used to allow NPC to return to prior state
    
    // all NPC states are shared, what they do in those states can be quite different 
    public enum NPCState
    {
        EATING, MOVING, FOLLOWING, GREETING, DISABLED,
    }

    public override void Start () {
        //should this be interactable?
        base.Start();
        
        //interact sprites -- change this to feeding sprites
        for (int i = 1; i < 4; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/talk " + i));
        }

        navMeshAgent = GetComponent<NavMeshAgent>();

        trailRender = GetComponent<TrailRenderer>();

        animator = GetComponentInChildren<Animator>();
        animator.SetBool("walking", true);

        //interactable = true;
        followTimer = 0;

       //loops through children of container and adds them to list
       for (int i = 0; i < movementPointsContainer.childCount; i++)
            {
                movementPoints.Add(movementPointsContainer.GetChild(i));
            }
       
        homePosition = movementPointsContainer.position;
        homeRotation = movementPointsContainer.localEulerAngles;

        //set target dest to first position in transform array
        targestDestination = movementPoints[moveCounter].position;
        transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));

        myVoice = GetComponent<AudioSource>();

        navMeshAgent.SetDestination(targestDestination);
        currentState = NPCState.MOVING;
    }

    //Essentially just a big state machine 
    public override void Update()
    {
        base.Update();

        //what happens if following and else
        if (currentState == NPCState.FOLLOWING)
        {
            followTimer += Time.deltaTime;
            if (followTimer < followTimeMin)
            {
                trailRender.enabled = false;
                canSeeDistance = 50;
                canClickDistance = 30;
                FollowPlayer();
            }
            else
            {
                GoHome();
            }
            
        }
        else
        {
            trailRender.enabled = true;
            canSeeDistance = 15;
            canClickDistance = 10;
        }
        
        //controls movement
        if (currentState == NPCState.MOVING)
        {
            animator.SetBool("walking", true);
            transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));
            //if player is nearby and we havent waved in a while, wave
            if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasGreetedPlayer)
            {
                StartCoroutine(GreetPlayer());

            }
            // for some reason must use this distance check instead of navMeshAgent.remainingDistance
            if (Vector3.Distance(transform.position, targestDestination) < 3f)
            {
                navMeshAgent.isStopped = true;
                currentState = NPCState.EATING;
                LookForFood();
            }
        }

        //when an NPC is disabled so we dont mess with anything
        if(currentState == NPCState.DISABLED)
        {
            //nothing
        }

        //refresh waving 
        if (hasGreetedPlayer)
        {
            greetRefresh -= Time.deltaTime;
            if (greetRefresh < 0)
            {
                hasGreetedPlayer = false;
            }
        }

    }

    //private function which is called by NPC to SetDestination in List of Transforms
    //Call this function whenever you want an NPC to enter the Labor/Movement loop
    public virtual void SetMove()
    {
            navMeshAgent.isStopped = false;
            animator.SetBool("walking", true);
        animator.SetBool("idle", false);
        if (moveCounter < (movementPoints.Count - 1))
            {
                moveCounter += 1;
            }
            else
            {
                moveCounter = 0;
            }
            targestDestination = movementPoints[moveCounter].position;

            navMeshAgent.SetDestination(targestDestination);

            currentState = NPCState.MOVING;
        
        
    }

    //Called as a command to NPCs who are FOLLOWING or PLAYING
    public virtual void GoHome()
    {
        Debug.Log("going home");
        
        //reset move points
        moveCounter = 0;
        movementPointsContainer.SetParent(null);
        movementPointsContainer.position = homePosition;
        movementPointsContainer.localEulerAngles = homeRotation;
        currentState = NPCState.MOVING;
        StartCoroutine(GreetPlayer());
    }

    //fills up lists of nearby plants and rocks
    public virtual void LookForFood()
    {
        currentPlants.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                string plantType = hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString();

                if (plantType == "HORN")
                {
                    currentPlants.Add(hitColliders[i].gameObject.GetComponent<HornPlant>());
                }
            }
            i++;
        }
        //if there are no nearby plants or rocks, we set move
        if ( currentPlants.Count > 0)
        {
            StartCoroutine(Eat());
        }
        else
        {
            SetMove();
        }
    }

    //All NPCs perform some form of Labor. This means changing rhythm or sound producers around them
    public virtual IEnumerator Eat()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        animator.SetBool("eating", true);
        yield return new WaitForSeconds(waitingTime);
        currentState = NPCState.EATING;

        //for the number of plants exceeding the max
        for (int p = 0; p < (currentPlants.Count - plantMaximum); p++)
        {
            //if plant exists    
            if (currentPlants[p] != null)
            {
                //look at plant pos
                Vector3 plantPos = new Vector3(currentPlants[p].transform.position.x, transform.position.y, currentPlants[p].transform.position.z);
                transform.LookAt(plantPos);

                //if this plant is fully grown

                transform.LookAt(plantPos);
                //loop through plant branches
                for (int i = 0; i < currentPlants[p].soundSources.Count; i++)
                {
                    //check if plant is still there and if sound source is active
                    if (currentPlants[p] != null && currentPlants[p].soundSources[i].activeSelf)
                    {
                        Vector3 sourcePos = new Vector3(currentPlants[p].soundSources[i].transform.position.x, transform.position.y, currentPlants[p].soundSources[i].transform.position.z);
                        transform.LookAt(sourcePos);

                        //turn off fruit
                        currentPlants[p].soundSources[i].transform.localScale *= 0.5f;
                        currentPlants[p].soundSources[i].SetActive(false);

                        //shift note up
                        currentPlants[p].Selection_Two();

                        //play seed removal sound !!!

                        yield return new WaitForSeconds(waitingTime);

                        //play the note I just ate!!!
                        int randomBlow = Random.Range(0, 100);
                        if(randomBlow > 75)
                        {
                            animator.SetTrigger("blow horn");
                            myVoice.PlayOneShot(currentPlants[p].musicalNotes[i]);
                            yield return new WaitForSeconds(2);
                        }
                    }
                }

                //play poof
                if (currentPlants[p] != null)
                {
                    currentPlants[p].poofParticles.Play();
                    //wait until note stops playing
                    yield return new WaitUntil(() => currentPlants[p].audioSource.isPlaying == false);
                    //play poof
                    if (currentPlants[p] != null)
                    {
                        //destroy plant if all seeds are gone 
                        Destroy(currentPlants[p].gameObject);
                        currentPlants.Remove(currentPlants[p]);
                        p--; //account for change in list size
                    }
                }
            }
        }

        //set new move pos
        animator.SetBool("eating", false);
        SetMove();
    }

    //controls all the animation states necessary for waving
    public virtual IEnumerator GreetPlayer()
    {
        lastState = currentState;
        currentState = NPCState.GREETING;
        navMeshAgent.isStopped = true;
        transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
        animator.SetTrigger("blow horn");
        myVoice.PlayOneShot(myVoice.clip);
        yield return new WaitForSeconds(greetingTime);
        
        if(currentState == NPCState.FOLLOWING)
        {
            navMeshAgent.isStopped = false;
        }
        else
        {
            //starts walking again
            navMeshAgent.isStopped = false;
            currentState = NPCState.MOVING;
        }

        hasGreetedPlayer = true;
        greetRefresh = greetRefreshTotal;
    }

    public IEnumerator EatPlayerSeed()
    {
        currentState = NPCState.EATING;

        navMeshAgent.isStopped = true;

        transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));

        myVoice.clip = tpc.seedLine[0].GetComponent<fruitSeedNoInv>().plantNote;

        Destroy(tpc.seedLine[0]);

        tpc.seedLine.Remove(tpc.seedLine[0]);

        animator.SetTrigger("eat");

        yield return new WaitForSeconds(1);

        myVoice.PlayOneShot(myVoice.clip);

        animator.SetBool("eating", false);
        animator.SetBool("idle", false);
        animator.SetTrigger("blow horn");

        transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));

        currentState = NPCState.FOLLOWING;
    }

    //The follow ability all NPCs have. Checks place in line, then moves towards it on NavMesh
    public virtual void FollowPlayer()
    {
        navMeshAgent.isStopped = false;
        //check place in line
        int currentLineLength = tpc.followers.Count;
        if (currentLineLength != lastLineLength)
        {
            CheckPlaceInLine();
        }

        Vector3 spotInLine = new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z - currentFollowDistance);
        
        if (Vector3.Distance(transform.position, spotInLine) > 25f)
        {
            animator.SetBool("walking", true);
            animator.SetBool("idle", false);
            navMeshAgent.SetDestination(spotInLine);
            navMeshAgent.speed = tpc.currentSpeed + 3;
            transform.LookAt(spotInLine);
        }
        else if (Vector3.Distance(transform.position, spotInLine) > 5f && Vector3.Distance(transform.position, spotInLine) < 25f)
        {
            animator.SetBool("walking", true);
            animator.SetBool("idle", false);
            navMeshAgent.speed = moveSpeedOriginal;
            navMeshAgent.SetDestination(spotInLine);
            transform.LookAt(spotInLine);
        }
        else
        {
            animator.SetBool("idle", true);
            animator.SetBool("walking", false);
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
        }

        lastLineLength = tpc.followers.Count;
    }

    //private function for checking NPC follower line spot 
    void CheckPlaceInLine()
    {
        placeInLine = tpc.followers.IndexOf(gameObject);
        currentFollowDistance = 0;

        for (int i = 0; i <= placeInLine; i++)
        {
            currentFollowDistance += tpc.followerDistances[i];
        }

    }

    //inherited from Interactable, whenever player clicks on NPC stop moving
    public override void handleClickSuccess()
    {
        //if player has a seed
        if (currentState != NPCState.FOLLOWING && tpc.seedLine.Count > 0)
        {
            //always activate Language first, then from there we bring up selection menu
            if (currentState != NPCState.GREETING && currentState != NPCState.EATING)
                lastState = currentState;
        
            //eat my seed
            StopAllCoroutines();

            StartCoroutine(EatPlayerSeed());
        }
        else if(currentState == NPCState.FOLLOWING && tpc.seedLine.Count > 0)
        {
            followTimer = 0;

            StartCoroutine(EatPlayerSeed());
        }

        //shake head no!!!
        else 
        {
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            myVoice.PlayOneShot(tpc.noNo[0]);
            animator.SetTrigger("no");
        }
        
    }

    public override void OnDisable()
    {
        base.OnDisable();
        lastState = currentState;
        currentState = NPCState.DISABLED;
    }

    public override void OnEnable()
    {
        base.OnEnable();
        if(enabledCounter > 1)
        {
           
            SetMove();
           
        }
    }
}
