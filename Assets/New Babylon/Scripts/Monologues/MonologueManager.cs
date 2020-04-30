using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Collections.Generic;
using TMPro;
using Cameras;
using Cinemachine;
using NPC;

public class MonologueManager : MonoBehaviour
{
    //player refs
    GameObject player;
    ThirdPersonController tpc;
    PlayerCameraController playerCam;
    //npc management refs 
    [HideInInspector]
    public WorldMonologueManager wmManager;
    CameraManager camManager;
    [HideInInspector]
    public Controller npcController;
    MonologueReader monoReader;
    
    [Tooltip("Automatically sets player to this spot")]
    public Transform playerSpot;
    [Tooltip("Npc camera")]
    public GameCamera speakerCam;
    [Tooltip("if there is a background for speaking text")]
    public FadeUI textBack;
    AnimateDialogue animateTextback;
    //text component and string array of its lines
    public int currentMonologue;
    [Tooltip("Fill this with all the individual monologues the character will give")]
    public List<Monologue> allMyMonologues = new List<Monologue>();
    
    public bool inMonologue;
    [HideInInspector]
    public MonologueTrigger mTrigger;

    //boat refs
    UseBoat useBoat;
    BoatPlayer boatPlayer;

    void Awake()
    {
        //grab refs
        player = GameObject.FindGameObjectWithTag("Player");
        if (player)
        {
            tpc = player.GetComponent<ThirdPersonController>();
            playerCam = Camera.main.GetComponent<PlayerCameraController>();
        }

        if (textBack)
            animateTextback = textBack.GetComponent<AnimateDialogue>();

        wmManager = FindObjectOfType<WorldMonologueManager>();
        camManager = FindObjectOfType<CameraManager>();
        monoReader = GetComponentInChildren<MonologueReader>();
        monoReader.hostObj = gameObject;
        monoReader.monoManager = this;

        useBoat = FindObjectOfType<UseBoat>();
        boatPlayer = FindObjectOfType<BoatPlayer>();

        //player has used boat before -- activate it 
        if (PlayerPrefs.HasKey("lastZone"))
        {
            if (PlayerPrefs.GetString("hasUsedBoat") == "yes")
            {
                useBoat.enabled = true;
                useBoat.boatAnimator.enabled = false;
                useBoat.transform.position = useBoat.dockPos.position;
                boatPlayer.enabled = true;
                boatPlayer.SetNewDockPos();

                //disable all mono triggers from intro
                for (int i = 0; i < 11; i++)
                {
                    wmManager.allMonologues[i].mTrigger.gameObject.SetActive(false);
                }
            }
        }
        
    }

    void Start()
    {
        //set text to first string in my list of monologues 
        SetMonologueSystem(0, 0);
    }

    //sets monologue system to values contained in Monologue[index]
    public void SetMonologueSystem(int index, int activationCount)
    {
        //set current monologue
        currentMonologue = index;

        //set mono reader text lines 
        //reactivating, use condensed if there is one
        if(activationCount > 0 && allMyMonologues[currentMonologue].condensedMonologue != null)
            monoReader.textLines = (allMyMonologues[currentMonologue].condensedMonologue.text.Split('\n'));
        //first activation, or no condensed available 
        else
            monoReader.textLines = (allMyMonologues[currentMonologue].monologue.text.Split('\n'));
        //set current to 0 and end to length 
        monoReader.currentLine = 0;
        monoReader.endAtLine = monoReader.textLines.Length;

        //set mono reader text speeds 
        monoReader.timeBetweenLetters = allMyMonologues[currentMonologue].timeBetweenLetters;
        monoReader.timeBetweenLines = allMyMonologues[currentMonologue].timeBetweenLines;
        monoReader.conversational = allMyMonologues[currentMonologue].conversational;
        monoReader.waitTimes = allMyMonologues[currentMonologue].waitTimes;
    }

    //has a wait for built in
    public void EnableMonologue()
    {
        //disable until its time to start 
        if (allMyMonologues[currentMonologue].waitToStart)
        {
            if (monoReader.usesTMP)
                monoReader.the_Text.enabled = false;
            else
                monoReader.theText.enabled = false;

            StartCoroutine(WaitToStart());
        }
        //starts now
        else
        {
            StartMonologue();
        }
    }

    IEnumerator WaitToStart()
    {
        yield return new WaitForSeconds(allMyMonologues[currentMonologue].timeUntilStart);

        StartMonologue();
    }

    //actually starts
    void StartMonologue()
    {
        //enable text comps 
        if (monoReader.usesTMP)
            monoReader.the_Text.enabled = true;
        else
            monoReader.theText.enabled = true;

        //textback
        if (textBack)
        {
            textBack.FadeIn();
            if (animateTextback)
                animateTextback.active = true;
        }
            
        //enable speaker cam, disable cam controller
        camManager.Set(speakerCam);
        if (playerCam)
            playerCam.enabled = false;

        //lock player movement
        if (allMyMonologues[currentMonologue].lockPlayer)
        {
            tpc.playerCanMove = false;

            //set player pos
            if (playerSpot)
            {
                tpc.playerCloak.enabled = false;

                RaycastHit hit;

                Vector3 targetPosition;
                // Does the ray intersect any objects excluding the player layer
                if (Physics.Raycast(playerSpot.position, Vector3.down, out hit, Mathf.Infinity, npcController.Movement.grounded))
                {
                    targetPosition = hit.point + new Vector3(0, tpc.controller.height / 2, 0);

                    tpc.transform.position = targetPosition;
                }

                //player look at npc 
                Vector3 lookAtPos = new Vector3(transform.position.x, tpc.samita.transform.position.y, transform.position.z);
                tpc.samita.transform.LookAt(lookAtPos);

                tpc.playerCloak.enabled = true;
            }
        }
        
        //set talking anim
        if (npcController.Animation)
        {
            npcController.Animation.SetAnimator("talking");
        }

        //set player to idle anim
        if (tpc)
            tpc.samita.SetAnimator("idle");
        inMonologue = true;

        //start the typing!
        monoReader.SetTypingLine();
    }
    
    public void DisableMonologue()
    {
        StopAllCoroutines();

        //disable text components 
        if (monoReader.usesTMP)
            monoReader.the_Text.enabled = false;
        else
            monoReader.theText.enabled = false;

        //textback
        if (textBack)
        {
            textBack.FadeOut();
            if(animateTextback)
                animateTextback.active = false;
        }

        //set speaker to idle 
        if (npcController.Animation)
            npcController.Animation.SetAnimator("idle");

        //reenable player cam
        if (playerCam)
        {
            camManager.Set(camManager.defaultCamera);
            playerCam.enabled = true;
        }

        StartCoroutine(WaitForCameraTransition());
    }

    IEnumerator WaitForCameraTransition()
    {
        yield return new WaitForSeconds(1f);

        Monologue mono = allMyMonologues[currentMonologue];

        //stop that waiting!
        if (npcController.Movement)
        {
            npcController.Movement.waitingToGiveMonologue = false;
        }

        //unlock player
        if (mono.lockPlayer)
        {
            tpc.playerCanMove = true;
        }
        //jump 
        if(!tpc.canJump)
            tpc.canJump = true;


        //check for cinematic to enable 
        if (mono.playsCinematic)
        {
            npcController.cineManager.allCinematics[mono.cinematic.cIndex].cPlaybackManager.StartTimeline();
        }
        //cinematic triggers to enable
        if (mono.enablesCinematicTriggers)
        {
            for (int i = 0; i < mono.cTriggers.Length; i++)
            {
                npcController.cineManager.allCinematics[mono.cTriggers[i].cIndex].cTrigger.gameObject.SetActive(true);
            }
        }

        //npc assigns player task(s)
        int tasksToAssign = mono.tasksToAssign.Length;
        int tasksComplete = 0;
        if (tasksToAssign > 0)
        {
            //loop through all tasks to assign 
            for (int i = 0; i < tasksToAssign; i++)
            {
                //task ref
                Task task = mono.tasksToAssign[i];

                //check that the TaskManager has not already Assigned / completed / fulfilled this task 
                if (!npcController.Tasks.activeTasks.Contains(task)
                    && !npcController.Tasks.completedTasks.Contains(task)
                    && !npcController.Tasks.fulfilledTasks.Contains(task))
                {
                    npcController.Tasks.AssignTask(task);
                }
                //Task is complete
                else if (npcController.Tasks.completedTasks.Contains(task))
                {
                    tasksComplete++;
                }
            }
        }

        //tasks to complete ?
        if (mono.tasksToFulfill.Length > 0)
        {
            //loop thru all tasks to complete 
            for (int i = 0; i < mono.tasksToFulfill.Length; i++)
            {
                Task task = mono.tasksToFulfill[i];

                //fulfill only if its in completed 
                if(npcController.Tasks.completedTasks.Contains(task))
                     npcController.Tasks.FulfillTask(task);
            }
        }

        //if this monologue repeats at finish
        if (mono.repeatsAtFinish)
        {
            //only repeat if tasks to assign is not equal to tasks complete 
            if(tasksToAssign != tasksComplete)
            {
                //reset the monologue trigger after 3 sec 
                mTrigger.WaitToReset(5f);
            }
        }
        //disable the monologue trigger, it's done 
        else
        {
            mTrigger.gameObject.SetActive(false);
        }

        //if this monologue has a new monologue to activate
        if (mono.triggersMonologues)
        {
            //enable the monologues but wait to make them usable to player 
            for(int i = 0; i< mono.monologueIndeces.Length; i++)
            {
                MonologueTrigger mTrigger = wmManager.allMonologues[mono.monologueIndeces[i]].mTrigger;
                mTrigger.gameObject.SetActive(true);
                mTrigger.hasActivated = true;
                mTrigger.WaitToReset(mono.monologueWaits[i]);
            }
        }

        //new npc movement?
        if (mono.newMovement)
        {
            npcController.Movement.ResetMovement(mono.newMovement);
        }

        //turn on the boat for player use
        if (mono.enablesBoat)
        {
            useBoat.enabled = true;
            useBoat.boatAnimator.enabled = false;
            useBoat.transform.position = useBoat.dockPos.position;
            boatPlayer.enabled = true;
            boatPlayer.SetNewDockPos();
        }

        inMonologue = false;
    }
}

