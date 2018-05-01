using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class NPC : Interactable {
    //list to store Plant & Rock scripts
    //protected List<Plant> currentPlants = new List<Plant>();
    protected List<Rock> currentRocks = new List<Rock>();
    
    //visual vars
    public Animator animator;

    //following in player line variables
    public float followDistance, currentFollowDistance, followTimer, followTimeMin;
    protected int lastLineLength, placeInLine;

    //wave animation variables
    public float wavingTime, waveRefresh, waveRefreshTotal, visionDistance, waitingTime;
    protected bool hasWavedAtPlayer;

    //home pos is starting pos and myPath will be used to find labor routes around the map
    protected Vector3 homePosition, homeRotation;
    protected string myPath; // will use this to find relevant transform Containers

    //navmesh ref and musician, language script ref
    public NavMeshAgent navMeshAgent;
    protected Musician myMusic;
    protected Language myLanguage;
    Transform talkingPos;

    //will use these to swap out selection menu among different states (starts out as what's set directly thru Interactable)
    public Sprite[] stopPlayingMusic, startPlayingMusic;
    public ButtonImages[] laborSelectionImages, followingSelectionImages;

    //movement vars
    public int moveCounter =0;
    protected Vector3 targestDestination;

    //movement point container and list -- and home version
    public bool playerSettingMove;
    public Transform movementPointsContainer;
    Vector3 origPCscale;
    public List<Transform> movementPoints = new List<Transform>();
    Transform chosenWaypoint; // for finding new path

    //navMeshSpeeds -- SHOULD JUST LINK THIS TO MYMUSIC.TEMPO
    public float moveSpeedInterval, moveSpeedOriginal;
    public float holdTimer = 0, holdTimerWait = 0.25f;

    //for note up or down
    protected bool upOrDown, playerHasChosen, clickedButton;

    //the state var
    public NPCState currentState;
    public NPCState lastState; // used to allow NPC to return to prior state

    // all NPC states are shared, what they do in those states can be quite different 
    public enum NPCState
    {
        LABOR, MOVING, FOLLOWING, PLAYING, TALKING, WAITING, WAVING, DISABLED, LOOKING
    }

    public override void Start () {
        //should this be interactable?
        navMeshAgent = GetComponent<NavMeshAgent>();

        myMusic = GetComponent<Musician>();
        myLanguage = GetComponent<Language>();
        base.Start();
        

        //interact sprites
        for (int i = 1; i < 4; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/talk " + i));
        }

        
        myPath = myMusic.musicType.ToString();

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
        origPCscale = movementPointsContainer.localScale;

        //set target dest to first position in transform array
        targestDestination = movementPoints[moveCounter].position;
        transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));

        moveSpeedOriginal = navMeshAgent.speed;
        navMeshAgent.SetDestination(targestDestination);
        currentState = NPCState.MOVING;

        selectionImages = laborSelectionImages;
    }

    //Essentially just a big state machine 
    public override void Update()
    {
        base.Update();

        //what happens if following and else
        if (currentState == NPCState.FOLLOWING)
        {
            if (!playerSettingMove)
            {
                movementPointsContainer.SetParent(transform);
                movementPointsContainer.localPosition = Vector3.zero;
                movementPointsContainer.localScale = origPCscale;
            }
            followTimer += Time.deltaTime;
            canSeeDistance = 50;
            canClickDistance = 30;
            FollowPlayer();
        }
        else if(currentState != NPCState.FOLLOWING && myLanguage.questActive)
        {
            canSeeDistance = 15;
            canClickDistance = 10;
        }
        else if (currentState != NPCState.FOLLOWING && !myLanguage.questActive)
        {
            canSeeDistance = 45;
            canClickDistance = 30;
        }

        //stops movement
        if (currentState == NPCState.PLAYING)
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

                currentState = NPCState.LOOKING;
                //if (!hasLooked)
                LookForWork();
            }
        }

        //activated only while waiting for player interaction
        if(currentState == NPCState.WAITING)
        {
            interactable = false;
            navMeshAgent.isStopped = true;
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            if (myLanguage.waitingForPlayer && !playerHasChosen)
            {
                //change UI to be above players head
                CorrectUIPos(_player.transform, selectionMenu.GetComponent<RectTransform>(), 0, 150);
                playerHasChosen = true;
            }
            else if(!myLanguage.waitingForPlayer && !playerHasChosen)
            {
                //correct UI to be right about NPC head
                CorrectUIPos(_player.transform, selectionMenu.GetComponent<RectTransform>(), 0, 100);
                playerHasChosen = true;
            }
            
            //if player clicks off the menu, say byebye
            if (graphicRaycaster.hitWorld || Vector3.Distance(_player.transform.position,transform.position) > 10 || !selectionMenu.enabled)
            {
                
                playerHasChosen = false;
                interactable = true;
                    //tell language to cut
                    myLanguage.playerResponded = true;
                    if (lastState == NPCState.FOLLOWING)
                    {
                        //keep following
                        currentState = NPCState.FOLLOWING;
                    }
                    else if (lastState == NPCState.PLAYING)
                    {
                        currentState = NPCState.PLAYING;
                        animator.SetBool("idle", false);
                    }
                    //restart labor
                    else
                    {
                        SetMove();
                        animator.SetBool("idle", false);
                    }
                
                
            }
        }

        //while NPC is delivering first lines of language
        if(currentState == NPCState.TALKING)
        {
            navMeshAgent.isStopped = true;
            transform.position = talkingPos.position;
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            interactable = false;
            //if this is true, enable player response
            if (myLanguage.waitingForPlayer)
            {
                base.handleClickSuccess();
                currentState = NPCState.WAITING;
            }
            //if they have quest and talking is over
            if (myLanguage.questActive && !myLanguage.talking)
            {
                interactable = true;
                if(lastState == NPCState.PLAYING)
                {
                    myMusic.isPlaying = true;
                    currentState = NPCState.PLAYING;
                    animator.SetBool("idle", false);
                }
                else
                {
                    SetMove();
                    animator.SetBool("idle", false);
                }
            }
        }

        //when an NPC is disabled so we dont mess with anything
        if(currentState == NPCState.DISABLED)
        {
            //nothing
        }

        if(currentState == NPCState.LABOR)
        {
            transform.Rotate(new Vector3(0, 5, 0));
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

        //while a player is reseting waypoints
        if (playerSettingMove)
        {
            tpc.talking = true;
            interactable = false;

            holdTimer += Time.deltaTime;

            //on click call raycasts. 
            if (Input.GetMouseButtonDown(0) && holdTimer > holdTimerWait)
            {
                //check if ground is there
                int canPlaceCounter = 0;
                for (int i = 0; i < movementPoints.Count; i++)
                {
                    if (movementPoints[i].GetComponent<Waypoint>().RaycastToGround())
                    {
                        canPlaceCounter++;
                    }
                }
                //drop new waypoint path
                if(canPlaceCounter == movementPoints.Count)
                {
                    DropWaypoints();
                }
                else
                {
                    //no no sound effect
                    myMusic.primarySource.PlayOneShot(tpc.noNo[0], 1f);
                }
            }

            //make movementPointContainer follow mouse pos
            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            float cameraDif = Camera.main.transform.position.y - transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif + 15f));

            Vector3 hoverLocation = new Vector3(worldpos.x, transform.position.y, worldpos.z);

            movementPointsContainer.position = hoverLocation;
        }

    }

    //private function which is called by NPC to SetDestination in List of Transforms
    //Call this function whenever you want an NPC to enter the Labor/Movement loop
    public virtual void SetMove()
    {
        if(myLanguage.talking)
        {
            Debug.Log("talking");
            currentState = NPCState.TALKING;
        }
        else
        {
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

            currentState = NPCState.MOVING;
        }
        
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
        StartCoroutine(WaveAtPlayer());
    }

    //Called when setting a follower to Labor in a new are
    protected void DropWaypoints()
    {
        //Should play sound effect for successful path set!
        Debug.Log("set new path");
        playerSettingMove = false;
        tpc.talking = false;
        moveCounter = 0;
        movementPointsContainer.SetParent(null);
        holdTimer = 0;
        for (int i = 0; i < movementPoints.Count; i++)
        {
            movementPoints[i].GetComponent<Waypoint>().playerSetting = false;
        }

        SetMove();
    }

    //fills up lists of nearby plants and rocks
    public virtual void LookForWork()
    {
        //hasLooked = true;
        currentRocks.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            //if (hitColliders[i].gameObject.tag == "Plant")
            //{
            //    currentPlants.Add(hitColliders[i].gameObject.GetComponent<Plant>());

            //}
            if (hitColliders[i].gameObject.tag == "Rock")
            {
                currentRocks.Add(hitColliders[i].gameObject.GetComponent<Rock>());
            }
            i++;
        }
        //if there are no nearby plants or rocks, we set move
        if (currentRocks.Count > 0 /*|| currentPlants.Count > 0*/)
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

        //for (int i = 0; i < currentPlants.Count; i++)
        //{
        //    int randomShift = Random.Range(0, 100);
        //    if (randomShift > 50)
        //    {
        //        currentPlants[i].Selection_Two(); //ShiftNoteUp
        //        currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
        //    }
        //    else
        //    {
        //        currentPlants[i].Selection_One(); //ShiftNoteDown
        //        currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
        //    }
        //    yield return new WaitForSeconds(waitingTime);
        //}
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
        
        if (myLanguage.talking)
        {
            currentState = NPCState.TALKING;
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
            navMeshAgent.speed = tpc.currentSpeed + 5;
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
    public virtual void CheckPlaceInLine()
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
        if (interactable)
        {
            if (myLanguage.questActive)
            {
                //always activate Language first, then from there we bring up selection menu
                if (currentState != NPCState.WAVING && currentState != NPCState.LABOR)
                    lastState = currentState;
                if (currentState == NPCState.PLAYING)
                {
                    myMusic.isPlaying = false;
                }
                //start talkin'
                StopAllCoroutines();
                animator.SetBool("idle", true);
                animator.SetBool("walking", false);
                animator.SetBool("waving", false);
                talkingPos = transform;
                currentState = NPCState.TALKING;
                myLanguage.StartCoroutine(myLanguage.Speak());
            }
            else
            {
                lastState = currentState;
                currentState = NPCState.WAITING;
                base.handleClickSuccess();
            }
            
        }
        
    }

    //For Selections, anything that causes the NPC to move or change state significantly should DeactivateSelectionMenu()
    //If anything moves between the primary selection states -- LABOR LOOP - FOLLOWING - PLAYING, call SwitchSelectionButtons()
    //REMEMBER -- anywhere we increase or decrease speed, we should also change animator speed
    // Find a way to tie primaryTempo to moveSpeed vars and animator speed
    public override void Selection_One()
    {
        base.Selection_One();
        //Follow Me!!!
        if (lastState != NPCState.FOLLOWING  && !clickedButton)
        {
            myLanguage.playerResponded = true;
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave", 0);
            CheckPlaceInLine();

            moveSpeedOriginal = navMeshAgent.speed;
            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true);
            

            clickedButton = true;
        }
        //if already following, this is the Play Music command. Remove follower 
        else if(lastState == NPCState.FOLLOWING && !clickedButton)
        {
            myLanguage.playerResponded = true;
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;

            playerSettingMove = true;

            for (int i = 0; i < movementPoints.Count; i++)
            {
                movementPoints[i].GetComponent<Waypoint>().playerSetting = true;
            }

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
        if (lastState != NPCState.FOLLOWING && !clickedButton)
        {
            myLanguage.playerResponded = true;
            if (myMusic.primaryTempo < 4)
            {
                myMusic.primaryTempo++;
                navMeshAgent.speed += moveSpeedInterval;
            }
               
            SetMove();
            clickedButton = true;
        }
        //if already following, this is the Labor command. Remove follower 
        else if(lastState == NPCState.FOLLOWING && !clickedButton)
        {
            myLanguage.playerResponded = true;
            GoHome();
        }

        DeactivateSelectionMenu();
        SwitchSelectionButtons();
    }
    public override void Selection_Three()
    {
        base.Selection_Three();
        //Decrease speed
        if (lastState != NPCState.FOLLOWING )
        {
            myLanguage.playerResponded = true;
            //Decrease Tempo while PLAYING
          
            if (myMusic.primaryTempo > 0)
            {
                myMusic.primaryTempo--;
                navMeshAgent.speed -= moveSpeedInterval;
            }
            SetMove();
        }
        DeactivateSelectionMenu();
        SwitchSelectionButtons();
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
        if(lastState!= NPCState.FOLLOWING )
        {
            selectionImages = laborSelectionImages;
            selectionCounter = 3;
        }
        else if(lastState == NPCState.FOLLOWING)
        {
            selectionImages = followingSelectionImages;
            selectionCounter = 2;
        }

        base.SwitchSelectionButtons();
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
            if(lastState == NPCState.PLAYING)
            {
                currentState = NPCState.PLAYING;
            }
            else
            {
                SetMove();
            }
        }
    }
}
