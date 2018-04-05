using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class NPC : Interactable {
    //list to store Plant & Rock scripts
    protected List<Plant> currentPlants = new List<Plant>();
    protected List<Rock> currentRocks = new List<Rock>();
    
    //visual vars
    public Animator animator;
    TrailRenderer trailRender;

    //following in player line variables
    public float followDistance, currentFollowDistance, followTimer, followTimeMin;
    int lastLineLength, placeInLine;

    //wave animation variables
    public float wavingTime, waveRefresh, waveRefreshTotal, visionDistance, waitingTime;
    protected bool hasWavedAtPlayer;

    //home pos is starting pos and myPath will be used to find labor routes around the map
    protected Vector3 homePosition;
    protected string myPath; // will use this to find relevant transform Containers

    //navmesh ref and musician script ref
    public NavMeshAgent navMeshAgent;
    protected Musician myMusic;

    //will use these to swap out selection menu among different states (starts out as what's set directly thru Interactable)
    public Sprite laborDisplay, followingSelectionMenuDisplay, playingSelectionMenuDisplay, stopPlayingMusic, startPlayingMusic;
    public Sprite[] laborSelectionImages, followingSelectionImages, playingSelectionImages;

    //movement vars
    public int moveCounter =0;
    protected Vector3 targestDestination;

    //movement point container and list -- and home version
    public bool setInEditor;
    public Transform movementPointsContainer;
    Transform homeContainer;
    public List<Transform> movementPoints = new List<Transform>();
    List<Transform> homePoints = new List<Transform>();
    Transform chosenWaypoint; // for finding new path

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
        LABOR, MOVING, FOLLOWING, PLAYING, WAITING, WAVING
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

        //stops movement
        if(currentState == NPCState.PLAYING)
        {
            navMeshAgent.isStopped = true;
            //transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            animator.SetBool("walking", false);
        }

        //controls movement
        if (currentState == NPCState.MOVING)
        {
            //if player is nearby and we havent waved in a while, wave
            if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            {
                StartCoroutine(WaveAtPlayer());

            }
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
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            if (graphicRaycaster.hitWorld || Vector3.Distance(_player.transform.position,transform.position) > 10 || !selectionMenu.enabled)
            {
                SetMove();
            }
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
        
        //reset move points
        moveCounter = 0;
        movementPointsContainer = homeContainer;
        movementPoints.Clear();

        for(int i = 0; i < homePoints.Count; i++)
        {
            movementPoints.Add(homePoints[i]);
        }

        SetMove();
    }

    //Called when setting a follower to Labor in a new area
    protected void FindNewPath()
    {
        Debug.Log("looking for new path");
        //empty current pathing points
        //movementPointsContainer = null;
        //chosenWaypoint = null;
        movementPoints.Clear();

        //temp list for storing waypoints & distance check size
        List<GameObject> nearbyWaypoints = new List<GameObject>();
        float pathFindingDistance = 50f;
        float closestDistance = 50f;

        //Look for nearby waypoints with correct myMusic/myPath type 
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, pathFindingDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if(hitColliders[i].gameObject.tag == "Waypoint")
            {
                if(hitColliders[i].gameObject.GetComponent<Waypoint>().pathType.ToString() == myMusic.musicType.ToString())
                {
                    nearbyWaypoints.Add(hitColliders[i].gameObject);
                    Debug.Log("waypoint added");
                }
            }
            i++;
        }

        if(i >= hitColliders.Length)
        {
            //if there are waypoints, find the closest one
            if (nearbyWaypoints.Count > 0)
            {
                for (int w = 0; w < nearbyWaypoints.Count; w++)
                {
                    float currentDist = Vector3.Distance(transform.position, nearbyWaypoints[w].transform.position);
                    if (currentDist < closestDistance)
                    {
                        closestDistance = currentDist;
                        chosenWaypoint = nearbyWaypoints[w].transform;
                    }
                }

                //using the closest waypoint, reset transform container and the pathing points
                if (chosenWaypoint != null)
                {
                    movementPointsContainer = chosenWaypoint.parent;
                    //loops through children of container and adds them to list
                    for (int t = 0; t < movementPointsContainer.childCount; t++)
                    {
                        movementPoints.Add(movementPointsContainer.GetChild(t));
                    }

                    //set movecounter to the right index, set destination
                    moveCounter = 0;
                    SetMove();
                }
            }
            //if no nearby paths, continue following 
            else
            {
                Debug.Log("went back to following");
                //go back to following 
                tpc.followers.Add(gameObject);
                tpc.followerDistances.Add(followDistance);
                tpc.blubAnimator.Play("Wave", 0);
                CheckPlaceInLine();

                currentState = NPCState.FOLLOWING;
                animator.SetBool("walking", true);

            }

            //This happens no matter what when the function is over
            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
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
        currentState = NPCState.LABOR;

        for (int i = 0; i < currentPlants.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentPlants[i].Selection_Two(); //ShiftNoteUp
                currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
            }
            else
            {
                currentPlants[i].Selection_One(); //ShiftNoteDown
                currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
            }
            yield return new WaitForSeconds(waitingTime);
        }
        for (int i = 0; i < currentRocks.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (randomShift > 50)
            {
                currentRocks[i].Selection_Two(); //ShiftNoteUp
                currentRocks[i].audioSource.PlayOneShot(currentRocks[i].currentSound);
            }
            else
            {
                currentRocks[i].Selection_One(); //ShiftNoteDown
                currentRocks[i].audioSource.PlayOneShot(currentRocks[i].currentSound);
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
        lastState = currentState;
        currentState = NPCState.WAVING;
        navMeshAgent.isStopped = true;
        transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);

        if (selectionMenu.enabled && playerClicked)
        {
            currentState = NPCState.WAITING;
        }
        else if(currentState == NPCState.FOLLOWING)
        {
            navMeshAgent.isStopped = false;
        }
        else if(currentState == NPCState.PLAYING)
        {
            //nothing here
        }
        else
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
        navMeshAgent.isStopped = false;
        Debug.Log("following player");
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
        lastState = currentState;
        if(currentState != NPCState.PLAYING)
            currentState = NPCState.WAITING;
    }

    //For Selections, anything that causes the NPC to move or change state significantly should DeactivateSelectionMenu()
    //If anything moves between the primary selection states -- LABOR LOOP - FOLLOWING - PLAYING, call SwitchSelectionButtons()
    //REMEMBER -- anywhere we increase or decrease speed, we should also change animator speed
    // Find a way to tie primaryTempo to moveSpeed vars and animator speed
    public override void Selection_One()
    {
        base.Selection_One();
        //Follow Me!!!
        if (lastState != NPCState.FOLLOWING && lastState != NPCState.PLAYING && !clickedButton)
        {
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave", 0);
            CheckPlaceInLine();

            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true);

            clickedButton = true;
        }
        //if already following, this is the Play Music command. Remove follower 
        else if(lastState == NPCState.FOLLOWING && !clickedButton)
        {
            currentState = NPCState.PLAYING;
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;
            myMusic.isPlaying = true;

            clickedButton = true;
        }
        //if playing music, we can set it back to following
        else if(lastState == NPCState.PLAYING && !clickedButton)
        {
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave", 0);
            CheckPlaceInLine();

            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true);

            myMusic.isPlaying = false;
            clickedButton = true;
        }

        // all 3 possibilities require this 
        DeactivateSelectionMenu();
        SwitchSelectionButtons();
    }
    public override void Selection_Two()
    {
        base.Selection_Two();
        //Increase speed
        if (lastState != NPCState.FOLLOWING && lastState != NPCState.PLAYING && !clickedButton)
        {
            if(navMeshAgent.speed < moveSpeedMax)
                navMeshAgent.speed += moveSpeedInterval;
            SetMove();
            clickedButton = true;
        }
        //if already following, this is the Labor command. Remove follower 
        else if(lastState == NPCState.FOLLOWING && !clickedButton)
        {
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;

            FindNewPath();
           
            clickedButton = true;
        }
        //Stop playing music while PLAYING
        else if(lastState == NPCState.PLAYING && myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = false;
            clickedButton = true;
        }
        //Start playing music while PLAYING
        else if(lastState == NPCState.PLAYING && !myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = true;
            clickedButton = true;
        }
        DeactivateSelectionMenu();
        SwitchSelectionButtons();
    }
    public override void Selection_Three()
    {
        base.Selection_Three();
        //Decrease speed
        if (lastState != NPCState.FOLLOWING && lastState != NPCState.PLAYING)
        {
            if (navMeshAgent.speed < moveSpeedMax)
                navMeshAgent.speed -= moveSpeedInterval;
            SetMove();
        }
        //If following, Return Home command
        if (lastState == NPCState.FOLLOWING)
        {
            GoHome();

            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //Increase Tempo while PLAYING
        if(lastState == NPCState.PLAYING)
        {
            if(myMusic.primaryTempo < 4)
                myMusic.primaryTempo++;
        }
    }
    public override void Selection_Four()
    {
        base.Selection_Four();
        //Decrease Tempo while PLAYING
        if (lastState == NPCState.PLAYING)
        {
            if (myMusic.primaryTempo > 0)
                myMusic.primaryTempo--;
        }
    }

    //for selections with gunky bools
    public override void DeactivateSelectionMenu()
    {
        //Debug.Log("deactivated");
        base.DeactivateSelectionMenu();
        clickedButton = false;
    }

    //Switch out all the image displays for the menu based on NPC state
    public override void SwitchSelectionButtons()
    {
        //Debug.Log("switched buttons");
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
