using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class GodNPC : GodInteractable {
    //list to store Plant & Rock scripts
    protected List<GodPlant> currentPlants = new List<GodPlant>();
    protected List<GodRock> currentRocks = new List<GodRock>();
    
    //visual vars
    public Animator animator;
    TrailRenderer trailRender;
    
    //wave animation variables
    public float wavingTime, waveRefresh, waveRefreshTotal, visionDistance, waitingTime;
    protected bool hasWavedAtPlayer;

    //home pos is starting pos and myPath will be used to find labor routes around the map
    protected Vector3 homePosition;
    protected string myPath; // will use this to find relevant transform Containers

    //navmesh ref and musician script ref
    public NavMeshAgent navMeshAgent;

    //movement vars
    public int moveCounter =0;
    protected Vector3 targestDestination;

    protected Musician myMusic;

    //movement point container and list -- and home version
    public bool setInEditor, isMusician;
    public Transform movementPointsContainer;
    public List<Transform> movementPoints = new List<Transform>();

    //navMeshSpeeds -- SHOULD JUST LINK THIS TO MYMUSIC.TEMPO
    public float moveSpeedInterval, moveSpeedMax; 

    //for note up or down
    bool upOrDown, hasLooked, clickedButton;

    //the state var
    public NPCState currentState;
    public NPCState lastState; // used to allow NPC to return to prior state

    // all NPC states are shared, what they do in those states can be quite different 
    public enum NPCState
    {
        LABOR, MOVING, WAITING, WAVING, PLAYING
    }

    public override void Start () {
        //should this be interactable?
        base.Start();

        navMeshAgent = GetComponent<NavMeshAgent>();
        if (isMusician)
        {
            myMusic = GetComponent<Musician>();
        }

        homePosition = transform.position;
        trailRender = GetComponent<TrailRenderer>();

        animator = GetComponentInChildren<Animator>();
        animator.SetBool("walking", true);

        interactable = true;

            //loops through children of container and adds them to list
            for (int i = 0; i < movementPointsContainer.childCount; i++)
            {
                movementPoints.Add(movementPointsContainer.GetChild(i));
            }
        
        //set target dest to first position in transform array
        targestDestination = movementPoints[moveCounter].position;
        transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));

        navMeshAgent.SetDestination(targestDestination);
        currentState = NPCState.MOVING;
    }

    //Essentially just a big state machine 
    public override void Update()
    {
        base.Update();
        
        
        //controls movement
        if (currentState == NPCState.MOVING)
        {
            //if player is nearby and we havent waved in a while, wave
            //if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            //{
            //    StartCoroutine(WaveAtPlayer());

            //}
            // for some reason must use this distance check instead of navMeshAgent.remainingDistance
            if (Vector3.Distance(transform.position, targestDestination) < 3f)
            {
                navMeshAgent.isStopped = true;
                currentState = NPCState.LABOR;
                //if (!hasLooked)
                LookForWork();
            }
        }

        //activated only while waiting for player interaction
        if(currentState == NPCState.WAITING)
        {
            navMeshAgent.isStopped = true;
            trailRender.enabled = false;
            movementPointsContainer.transform.localPosition = new Vector3(0, 0, 0);

            
            //transform.LookAt(new Vector3(mouse position));
        }
        else
        {
            trailRender.enabled = true;
        }

        if(currentState == NPCState.LABOR)
        {
            transform.Rotate(new Vector3(0, 5, 0));
        }

        //For something like NPC Circle, can inherit this Update() and say
        // if(currentState = NPCState.MOVING)
        //     IrregMovement()
        // else{ base.Update(); }
        // this means it should avoid any mix ups with the move state in this Update

        
        //refresh waving 
        if (hasWavedAtPlayer)
        {
            waveRefresh -= Time.deltaTime;
            if (waveRefresh < 0)
            {
                hasWavedAtPlayer = false;
            }
        }

    }

    //private function which is called by NPC to SetDestination in List of Transforms
    //Call this function whenever you want an NPC to enter the Labor/Movement loop
    public virtual void SetMove()
    {
        //Debug.Log("set move");
        navMeshAgent.isStopped = false;
        animator.SetBool("walking", true);
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
        //Debug.Log(targestDestination);

        //hasLooked = false;

        currentState = NPCState.MOVING;
    }

    //Called as a command to NPCs who are FOLLOWING or PLAYING
    public virtual void GoHome()
    {
        Debug.Log("going home");

        movementPointsContainer.SetParent(transform);
        navMeshAgent.isStopped = false;
        animator.SetBool("walking", true);
        
        navMeshAgent.SetDestination(homePosition);

        //if(position = home)

        //SetMove();
    }

    //Called when setting a follower to Labor in a new area
    protected void ResetPath()
    {
        Debug.Log("reset path");
        //unparent transform container
        movementPointsContainer.SetParent(null);
        SetMove();
    }

    //fills up lists of nearby plants and rocks
    public virtual void LookForWork()
    {
        //hasLooked = true;
        currentPlants.Clear();
        currentRocks.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                currentPlants.Add(hitColliders[i].gameObject.GetComponent<GodPlant>());

            }
            else if (hitColliders[i].gameObject.tag == "Rock")
            {
                currentRocks.Add(hitColliders[i].gameObject.GetComponent<GodRock>());
            }
            i++;
        }
        //if there are no nearby plants or rocks, we set move
        if (currentRocks.Count > 0 || currentPlants.Count > 0)
        {
            StartCoroutine(PerformLabor());
        }
        else
        {
            SetMove();
        }
    }

    //All NPCs perform some form of Labor. This means changing rhythm or sound producers around them
    public virtual IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(waitingTime);
        currentState = NPCState.LABOR;

        for (int i = 0; i < currentPlants.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentPlants[i].ShiftNoteUp(); //ShiftNoteUp
                currentPlants[i].PlaySound();
            }
            else
            {
                currentPlants[i].ShiftNoteDown(); //ShiftNoteDown
                currentPlants[i].PlaySound();
            }
            yield return new WaitForSeconds(waitingTime);
        }
        for (int i = 0; i < currentRocks.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentRocks[i].ShiftNoteUp(); //ShiftNoteUp
                currentPlants[i].PlaySound();
            }
            else
            {
                currentRocks[i].ShiftNoteDown(); //ShiftNoteDown
                currentPlants[i].PlaySound();
            }
            yield return new WaitForSeconds(waitingTime);
        }
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

    //this will be used to wave at NPCs of other types now 
    //public virtual IEnumerator WaveAtPlayer()
    //{
    //    lastState = currentState;
    //    currentState = NPCState.WAVING;
    //    navMeshAgent.isStopped = true;
    //    transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
    //    animator.SetBool("waving", true);
    //    animator.SetBool("walking", false);
    //    yield return new WaitForSeconds(wavingTime);

    //    if (selectionMenu.enabled && playerClicked)
    //    {
    //        currentState = NPCState.WAITING;
    //    }
    //    else if(currentState == NPCState.FOLLOWING)
    //    {
    //        navMeshAgent.isStopped = false;
    //    }
    //    else if(currentState == NPCState.PLAYING)
    //    {
    //        //nothing here
    //    }
    //    else
    //    {
    //        //starts walking again
    //        navMeshAgent.isStopped = false;
    //        currentState = NPCState.MOVING;
    //    }

    //    hasWavedAtPlayer = true;
    //    waveRefresh = waveRefreshTotal;
    //    animator.SetBool("waving", false);
    //    animator.SetBool("walking", true);
    //}

    public override void handleClickSuccess()
    {
        if (!playerHolding && interactable)
        {
            //changes mouse cursor and plays interact sound
            playerHolding = true;
            symbol.sprite = normalSprite;
            movementPointsContainer.SetParent(transform);
            currentState = NPCState.WAITING;

            for (int i = 0; i < movementPoints.Count; i++)
            {
                movementPoints[i].GetComponent<GodWaypoint>().showMesh = true;
            }
        }
       
        
    }

    //inherited from Interactable, whenever player clicks on NPC stop moving
    public override void DropObject()
    {
        base.DropObject();
        ResetPath();
        for (int i = 0; i < movementPoints.Count; i++)
        {
            movementPoints[i].GetComponent<GodWaypoint>().showMesh = false;
        }
    }
    
}
