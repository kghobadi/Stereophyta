using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class NPC : Interactable {
    //can use to denote plantType from home area, or store a Plant script
    public string plantType;
    protected List<Plant> currentPlants = new List<Plant>();
    protected List<Rock> currentRocks = new List<Rock>();
    
    //visual vars
    public Animator animator;
    TrailRenderer trailRender;

    //following in player line variables
    public float followDistance, currentFollowDistance, followTimer, followTimeMin, heightAdjustment;
    public int lastLineLength, placeInLine;

    //wave animation variables
    public float wavingTime, waveRefresh, waveRefreshTotal, visionDistance, waitingTime;
    protected bool hasWavedAtPlayer;

    //home pos is starting pos and myPath will be used to find labor routes around the map
    protected Vector3 homePosition;
    protected string myPath; // will use this to find relevant transform Containers

    //navmesh ref and musician script ref
    protected NavMeshAgent navMeshAgent;
    protected Musician myMusic;

    //will use these to swap out selection menu among different states (starts out as what's set directly thru Interactable)
    public Sprite laborDisplay, followingSelectionMenuDisplay, playingSelectionMenuDisplay, stopPlayingMusic, startPlayingMusic;
    public Sprite[] laborSelectionImages, followingSelectionImages, playingSelectionImages;

    //movement vars
    public int moveCounter;
    Vector3 targestDestination;

    //movement point container and list -- and home version
    public bool setInEditor;
    public Transform movementPointsContainer;
    Transform homeContainer;
    public List<Transform> movementPoints = new List<Transform>();
    List<Transform> homePoints = new List<Transform>();

    //navMeshSpeeds -- SHOULD JUST LINK THIS TO MYMUSIC.TEMPO
    public float moveSpeedInterval, moveSpeedMax; 

    //for note up or down
    bool upOrDown, hasLooked, clickedButton;

    //the state var
    public NPCState currentState;

    // all NPC states are shared, what they do in those states can be quite different 
    public enum NPCState
    {
        LABOR, MOVING, FOLLOWING, WAVING, PLAYING
    }

    public override void Start () {
        //should this be interactable?
        base.Start();

        navMeshAgent = GetComponent<NavMeshAgent>();

        homePosition = transform.position;
        trailRender = GetComponent<TrailRenderer>();

        myMusic = GetComponent<Musician>();
        myPath = myMusic.musicType.ToString();

        animator = GetComponentInChildren<Animator>();
        animator.SetBool("walking", true);

        interactable = true;
        followTimer = 0;

        if (!setInEditor)
        {
            //loops through children of container and adds them to list
            for (int i = 0; i < movementPointsContainer.childCount; i++)
            {
                movementPoints.Add(movementPointsContainer.GetChild(i));
                homePoints.Add(movementPointsContainer.GetChild(i));
            }
        }
        else
        {
            //if we do set publicly, still add the points to the homeList
            for (int i = 0; i < movementPoints.Count; i++)
            {
                homePoints.Add(movementPoints[i]);
            }
        }

        homeContainer = movementPointsContainer;

        //set target dest to first position in transform array
        moveCounter = 0;
        targestDestination = movementPoints[moveCounter].position;
        transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));

        navMeshAgent.SetDestination(targestDestination);
        currentState = NPCState.MOVING;

        laborSelectionImages = selectionImages;
        laborDisplay = selectionMenuDisplay;
    }

    //Essentially just a big state machine 
    public override void Update()
    {
        base.Update();

        //what happens if following and else
        if (currentState == NPCState.FOLLOWING)
        {
            followTimer += Time.deltaTime;
            trailRender.enabled = false;
            withinDistance = 50;
            withinDistanceActive = 30;
            FollowPlayer();
        }
        else
        {
            trailRender.enabled = true;
            withinDistance = 15;
            withinDistanceActive = 10;
        }

        //enables musician script and stops movement
        if(currentState == NPCState.PLAYING)
        {
            myMusic.enabled = true;
            navMeshAgent.isStopped = true;
        }
        else
        {
            myMusic.enabled = false;
        }

        //controls movement
        if (currentState == NPCState.MOVING)
        {
            // for some reason must use this distance check instead of navMeshAgent.remainingDistance
            if (Vector3.Distance(transform.position, targestDestination) < 3f)
            {
                navMeshAgent.isStopped = true;
                currentState = NPCState.LABOR;
                if (!hasLooked)
                    LookForWork();
            }
        }

        //For something like NPC Circle, can inherit this Update() and say
        // if(currentState = NPCState.MOVING)
        //     IrregMovement()
        // else{ base.Update(); }
        // this means it should avoid any mix ups with the move state in this Update

        //if player is nearby and we havent waved in a while, wave
        if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
        {
            StartCoroutine(WaveAtPlayer());

        }
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
    void SetMove()
    {
        Debug.Log("set move");
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
        Debug.Log(targestDestination);

        hasLooked = false;

        currentState = NPCState.MOVING;
    }

    //Called as a command to NPCs who are FOLLOWING or PLAYING
    void GoHome()
    {
        navMeshAgent.isStopped = false;
        animator.SetBool("walking", true);

        navMeshAgent.SetDestination(homePosition);
        //reset move points
        moveCounter = 0;
        movementPointsContainer = homeContainer;
        movementPoints = homePoints;
        currentState = NPCState.MOVING;
    }

    //Called when setting a follower to Labor in a new area
    void FindNewPath()
    {
        //look at nearby area
        //go to nearest path of My Music type
        // from nearest movement point, get parent waypoint container
        // movementPointContainer = WaypointContainer;
        // movementPoints for loop to get container children
        SetMove();
    }

    //fills up lists of nearby plants and rocks
    public virtual void LookForWork()
    {
        hasLooked = true;
        currentPlants.Clear();
        currentRocks.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                currentPlants.Add(hitColliders[i].gameObject.GetComponent<Plant>());

            }
            else if (hitColliders[i].gameObject.tag == "Rock")
            {
                currentRocks.Add(hitColliders[i].gameObject.GetComponent<Rock>());
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
        //randomly changes note up or down for each plant or rock in list
        int randomNum = Random.Range(0, 100);
        for (int i = 0; i < currentPlants.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentPlants[i].Selection_Two(); //ShiftNoteUp
            }
            else
            {
                currentPlants[i].Selection_One(); //ShiftNoteDown
            }
            yield return new WaitForSeconds(waitingTime);
        }
        for (int i = 0; i < currentRocks.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentRocks[i].Selection_Two(); //ShiftNoteUp
            }
            else
            {
                currentRocks[i].Selection_One(); //ShiftNoteDown
            }
            yield return new WaitForSeconds(waitingTime);
        }
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

    //controls all the animation states necessary for waving
    public virtual IEnumerator WaveAtPlayer()
    {
        currentState = NPCState.WAVING;
        navMeshAgent.isStopped = true;
        transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        
        //check to see if it is still waving, otherwise it may have been set to a task by player
        if (currentState == NPCState.WAVING)
        {
            //starts walking again
            navMeshAgent.isStopped = false;
            currentState = NPCState.MOVING;
        }
        hasWavedAtPlayer = true;
        waveRefresh = waveRefreshTotal;
        animator.SetBool("waving", false);
        animator.SetBool("walking", true);
    }

    //The follow ability all NPCs have. Checks place in line, then moves towards it on NavMesh
    public virtual void FollowPlayer()
    {
        //check place in line
        int currentLineLength = tpc.followers.Count;
        if (currentLineLength != lastLineLength)
        {
            CheckPlaceInLine();
        }

        Vector3 spotInLine = new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z - currentFollowDistance);

        if (Vector3.Distance(transform.position, spotInLine) > 3f)
        {
            navMeshAgent.SetDestination(spotInLine);
            transform.LookAt(spotInLine);
        }
        else
        {
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
        base.handleClickSuccess();
        navMeshAgent.isStopped = true;
    }

    //For Selections, anything that causes the NPC to move or change state significantly should DeactivateSelectionMenu()
    //If anything moves between the primary selection states -- LABOR LOOP - FOLLOWING - PLAYING, call SwitchSelectionButtons()
    //REMEMBER -- anywhere we increase or decrease speed, we should also change animator speed
    // Find a way to tie primaryTempo to moveSpeed vars and animator speed
    public override void Selection_One()
    {
        base.Selection_One();
        //Follow Me!!!
        if (currentState != NPCState.FOLLOWING && currentState != NPCState.PLAYING)
        {
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave", 0);
            CheckPlaceInLine();

            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true);

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //if already following, this is the Play Music command. Remove follower 
        else if(currentState == NPCState.FOLLOWING)
        {
            currentState = NPCState.PLAYING;
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //if playing music, we can set it back to following
        else if(currentState == NPCState.PLAYING)
        {
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave", 0);
            CheckPlaceInLine();

            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true);

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
    }
    public override void Selection_Two()
    {
        base.Selection_Two();
        //Increase speed
        if (currentState != NPCState.FOLLOWING && currentState != NPCState.PLAYING)
        {
            if(navMeshAgent.speed < moveSpeedMax)
                navMeshAgent.speed += moveSpeedInterval;
            SetMove();
        }
        //if already following, this is the Labor command. Remove follower 
        else if (currentState == NPCState.FOLLOWING)
        {
            FindNewPath();

            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //Stop playing music while PLAYING
        else if(currentState == NPCState.PLAYING && myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = false;
            clickedButton = true;

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //Start playing music while PLAYING
        else if (currentState == NPCState.PLAYING && !myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = true;
            clickedButton = true;

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        clickedButton = false;
    }
    public override void Selection_Three()
    {
        base.Selection_Three();
        //Decrease speed
        if (currentState != NPCState.FOLLOWING && currentState != NPCState.PLAYING)
        {
            if (navMeshAgent.speed < moveSpeedMax)
                navMeshAgent.speed -= moveSpeedInterval;
            SetMove();
        }
        //If following, Return Home command
        if (currentState == NPCState.FOLLOWING)
        {
            GoHome();

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //Increase Tempo while PLAYING
        if(currentState == NPCState.PLAYING)
        {
            if(myMusic.primaryTempo < 4)
                myMusic.primaryTempo++;
        }
    }
    public override void Selection_Four()
    {
        base.Selection_Four();
        //Decrease Tempo while PLAYING
        if (currentState == NPCState.PLAYING)
        {
            if (myMusic.primaryTempo > 0)
                myMusic.primaryTempo--;
        }
    }

    //for selections with gunky bools
    public override void DeactivateSelectionMenu()
    {
        base.DeactivateSelectionMenu();
        clickedButton = false;
    }

    //Switch out all the image displays for the menu based on NPC state
    public override void SwitchSelectionButtons()
    {
        if(currentState!= NPCState.FOLLOWING && currentState != NPCState.PLAYING)
        {
            selectionImages = laborSelectionImages;
            selectionMenuDisplay = laborDisplay;
            selectionCounter = 3;
        }
        else if(currentState == NPCState.FOLLOWING)
        {
            selectionImages = followingSelectionImages;
            selectionMenuDisplay = followingSelectionMenuDisplay;
            selectionCounter = 3;
        }
        else if(currentState == NPCState.PLAYING && myMusic.isPlaying)
        {
            selectionImages = playingSelectionImages;
            selectionImages[1] = stopPlayingMusic;
            selectionMenuDisplay = playingSelectionMenuDisplay;
            selectionCounter = 4;
        }
        else if (currentState == NPCState.PLAYING && !myMusic.isPlaying)
        {
            selectionImages = playingSelectionImages;
            selectionImages[1] = startPlayingMusic;
            selectionMenuDisplay = playingSelectionMenuDisplay;
            selectionCounter = 4;
        }

        base.SwitchSelectionButtons();
    }
}
