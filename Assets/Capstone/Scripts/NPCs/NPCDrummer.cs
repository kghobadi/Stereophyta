using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class NPCDrummer : NPC
{
    public float scaleColliderTime;
    float collisionSpeed, particleSpeed, particleLifetime;

    //so we can set the interactable body collider
    BoxCollider drummerCollider;
    Vector3 originalColliderSize;
    Vector3 originalColliderPos;

    ParticleSystem beatParticles;
    DrumCollider drumCollision;
    public Transform drumBackpack, drumPosContainer;
    public int backpackMax;
    public List<GameObject> drumSet = new List<GameObject>();
    public List<Transform> drumPositions = new List<Transform>();
    public GameObject setUpSpot;
    //set publicly to tell this script what raycasts can and can't go thru
    public LayerMask mask;

    public Animation rhythmIndicator;
    public AnimationClip[] indicatorAnimations;

    bool startSounds, setDrumPosition; // use this in update

    public override void Start()
    {
        lastState = NPCState.PLAYING;
        base.Start();
        homePosition = transform.position;
        setUpSpot.SetActive(false);
        moveCounter = 0;
        animator.SetBool("walking", false);
        animator.speed = 0.75f;

        beatParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        beatParticles.Stop();
        drumCollision = transform.GetChild(2).GetComponent<DrumCollider>();


        if(enabledCounter <= 1)
        {
            // list of positions for deploying rock drums
            for (int t = 0; t < drumPosContainer.childCount; t++)
            {
                drumPositions.Add(drumPosContainer.GetChild(t));
            }

            backpackMax = drumPositions.Count;

            // if there are rocks in the drummers pack, add them to the list
            if (drumBackpack.childCount > 0)
            {
                for (int i = 0; i < drumBackpack.childCount; i++)
                {
                    drumSet.Add(drumBackpack.GetChild(i).gameObject);
                    drumSet[i].transform.localPosition = drumPositions[i].localPosition;
                    drumSet[i].GetComponent<Rock>().partOfDrumSet = true;
                    drumSet[i].GetComponent<Rock>().drumSetPos = drumPositions[i];
                    drumSet[i].GetComponent<Rock>().myDrummer = this;
                }
            }
        }
        
        
        //set body collider stuff
        drummerCollider = GetComponent<BoxCollider>();
        originalColliderSize = drummerCollider.size;
        originalColliderPos = drummerCollider.center;

        startSounds = true;
        currentState = NPCState.PLAYING;
        myMusic.isPlaying = true;


    }

    public override void Update()
    {
        if (playerSettingMove)
        {
            setUpSpot.SetActive(true);
            tpc.talking = true;
            interactable = false;

            holdTimer += Time.deltaTime;

            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100, mask))
            {
                setUpSpot.transform.position = hit.point;

                //on click call raycasts. 
                if (Input.GetMouseButtonDown(0) && holdTimer > holdTimerWait)
                {
                    //if we hit the ground & height is in range, move the character to that position
                    if (hit.transform.gameObject.tag == "Ground")
                    {
                        targestDestination = new Vector3(hit.point.x, transform.position.y, hit.point.z);
                        navMeshAgent.SetDestination(targestDestination);

                        playerSettingMove = false;
                        holdTimer = 0;
                        setUpSpot.SetActive(false);

                        currentState = NPCState.MOVING;

                        StartCoroutine(WaveAtPlayer());

                        tpc.talking = false;
                    }

                }
            }
            
        }
        else if (currentState == NPCState.MOVING)
        {
            interactable = false;
            navMeshAgent.isStopped = false;
            animator.SetBool("walking", true);
            animator.SetBool("idle", false);
            // for some reason must use this distance check instead of navMeshAgent.remainingDistance
            if (Vector3.Distance(transform.position, targestDestination) < 3f)
                {
                interactable = true;
                    navMeshAgent.isStopped = true;
                myMusic.isPlaying = true;
                currentState = NPCState.PLAYING;
                }
            
        }
        else
        {
            base.Update();
        }
        

        if (currentState == NPCState.FOLLOWING)
        {
            //set rock drum positions
            for (int i = 0; i < drumSet.Count; i++)
            {
                drumSet[i].transform.localPosition = drumBackpack.localPosition;
                drumSet[i].transform.localEulerAngles = new Vector3(-90, 0, 0);
                drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
            }
            //no drum beat colliding
            drumCollision.gameObject.SetActive(false);
            //readjust body collider
            drummerCollider.size = new Vector3(4f, 2.25f, 10f);
            drummerCollider.center = new Vector3(0, .38f, -2.5f);
        }

        if (currentState == NPCState.PLAYING)
        {
            animator.SetBool("walking", false);
            //turn on drum beat
            drumCollision.gameObject.SetActive(true);
            //readjust body collider
            drummerCollider.size = originalColliderSize;
            drummerCollider.center = originalColliderPos;

            for (int i = 0; i < drumSet.Count; i++)
            {
                if (!drumSet[i].GetComponent<Rock>().playerHolding)
                {
                    drumSet[i].transform.localPosition = new Vector3(drumPositions[i].localPosition.x, -2, drumPositions[i].localPosition.z);
                    drumSet[i].transform.localEulerAngles = new Vector3(0, 0, 0);
                }
                if (!startSounds)
                    drumSet[i].GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
            }

            if (myMusic.showRhythm && myMusic.isPlaying)
                {
                    SwitchTempoVisuals();
                    drumCollision.StartCoroutine(drumCollision.LerpScale(collisionSpeed));
                    
                    beatParticles.Play();
                    myMusic.showRhythm = false;
                }

            GameObject[] rainObjects = GameObject.FindGameObjectsWithTag("Rain");
            if(rainObjects.Length > 0)
            {
                bool nearRain = false;
                for(int i = 0; i < rainObjects.Length; i++)
                {
                    if(Vector3.Distance(transform.position, rainObjects[i].transform.position) < 150)
                    {
                        myMusic.isPlaying = false;
                        clickedButton = true;
                        selectionImages[1].buttonImages = startPlayingMusic;
                        SwitchSelectionButtons();
                        nearRain = true;
                    }
                }
                if (!nearRain)
                {
                    myMusic.isPlaying = true;
                    clickedButton = true;
                    selectionImages[1].buttonImages = stopPlayingMusic;
                    SwitchSelectionButtons();
                }
            }
            
        }
    }

   

public override void OnMouseOver()
{
    base.OnMouseOver();
    rhythmIndicator.gameObject.SetActive(true);
}

public override void OnMouseExit()
{
    base.OnMouseExit();
    rhythmIndicator.gameObject.SetActive(false);
}

//Called as a command to NPCs who are FOLLOWING or PLAYING
public override void GoHome()
    {
        Debug.Log("going home");

        targestDestination = new Vector3(homePosition.x, transform.position.y, homePosition.z);
        navMeshAgent.SetDestination(targestDestination);

        currentState = NPCState.MOVING;
        StartCoroutine(WaveAtPlayer());
    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        startSounds = false;
    }

    void SwitchTempoVisuals()
    {
        ParticleSystem.MainModule beatParticlesModule = beatParticles.main;

        switch (myMusic.primaryTempo)
        {
            case 0:
                collisionSpeed = 16;
                particleSpeed = 1.875f;
                particleLifetime = 12f;
                break;
            case 1:
                collisionSpeed = 8f;
                particleSpeed = 3.75f;
                particleLifetime = 6f;
                break;
            case 2:
                collisionSpeed = 4f;
                particleSpeed = 7.5f;
                particleLifetime = 3f;
                break;
            case 3:
                collisionSpeed = 2f;
                particleSpeed = 15f;
                particleLifetime = 1.5f;
                break;
            case 4:
                collisionSpeed = 1f;
                particleSpeed = 30f;
                particleLifetime = 0.75f;
                break;
        }
        beatParticlesModule.startSpeed = particleSpeed;
        beatParticlesModule.startLifetime = particleLifetime;
    }

    //For Selections, anything that causes the NPC to move or change state significantly should DeactivateSelectionMenu()
    //If anything moves between the primary selection states -- LABOR LOOP - FOLLOWING - PLAYING, call SwitchSelectionButtons()
    //REMEMBER -- anywhere we increase or decrease speed, we should also change animator speed
    // Find a way to tie primaryTempo to moveSpeed vars and animator speed
    public override void Selection_One()
    {
        menuScript.clickTimer = 0f;
        //Follow Me!!!
        if (lastState != NPCState.FOLLOWING && !clickedButton)
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
        else if (lastState == NPCState.FOLLOWING && !clickedButton)
        {
            myLanguage.playerResponded = true;
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;

            playerSettingMove = true;
            clickedButton = true;
        }

        // all 3 possibilities require this 
        DeactivateSelectionMenu();
        SwitchSelectionButtons();
    }
    public override void Selection_Two()
    {
        menuScript.clickTimer = 0f;
        //if already following, this is the Labor command. Remove follower 
        if (lastState == NPCState.FOLLOWING && !clickedButton)
        {
            myLanguage.playerResponded = true;
            GoHome();
            DeactivateSelectionMenu();
            SwitchSelectionButtons();
        }
        //Stop playing music while PLAYING
        else if (lastState == NPCState.PLAYING && myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = false;
            clickedButton = true;
            selectionImages[1].buttonImages = startPlayingMusic;
            SwitchSelectionButtons();
        }
        //Start playing music while PLAYING
        else if (lastState == NPCState.PLAYING && !myMusic.isPlaying && !clickedButton)
        {
            myMusic.isPlaying = true;
            clickedButton = true;
            selectionImages[1].buttonImages = stopPlayingMusic;
            SwitchSelectionButtons();
        }
    }

    //Increase Tempo while PLAYING
    public override void Selection_Three()
    {
        menuScript.clickTimer = 0f;
        
            if (myMusic.primaryTempo < 4)
            {
                myMusic.primaryTempo++;
                navMeshAgent.speed += moveSpeedInterval;
            }
        else
        {
            myLanguage.voice.PlayOneShot(tpc.noNo[0]);
        }

            //if(rhythmIndicator!= null)
            //    rhythmIndicator.clip = indicatorAnimations[myMusic.primaryTempo];
    }

    //Decrease Tempo while PLAYING
    public override void Selection_Four()
    {
        menuScript.clickTimer = 0f;
        
            if (myMusic.primaryTempo > 0)
        {
            myMusic.primaryTempo--;
            navMeshAgent.speed -= moveSpeedInterval;
        }
        else
        {
            myLanguage.voice.PlayOneShot(tpc.noNo[0]);
        }


        //rhythmIndicator.clip = indicatorAnimations[myMusic.primaryTempo];
    }


    //Switch out all the image displays for the menu based on NPC state
    public override void SwitchSelectionButtons()
    {
        if (lastState == NPCState.FOLLOWING)
        {
            selectionImages = followingSelectionImages;
            selectionCounter = 2;
        }
        else if (lastState != NPCState.FOLLOWING && myMusic.isPlaying)
        {
            selectionImages = laborSelectionImages;
            selectionImages[1].buttonImages = stopPlayingMusic;
            selectionCounter = 4;
        }
        else if (lastState != NPCState.FOLLOWING && !myMusic.isPlaying)
        {
            selectionImages = laborSelectionImages;
            selectionImages[1].buttonImages = startPlayingMusic;
            selectionCounter = 4;
        }

        selectionButtons.Clear();

        switch (selectionCounter)
        {
            case 2:
                selectionButtons.Add(selectionMenu.transform.GetChild(0).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(1).gameObject);
                break;
            case 3:
                selectionButtons.Add(selectionMenu.transform.GetChild(2).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(3).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(4).gameObject);
                break;
            case 4:
                selectionButtons.Add(selectionMenu.transform.GetChild(5).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(6).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(7).gameObject);
                selectionButtons.Add(selectionMenu.transform.GetChild(8).gameObject);
                break;
        }
    }

}
