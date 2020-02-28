using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Collections.Generic;
using TMPro;
using Cameras;
using Cinemachine;
using NPC;

public class MonologueText : MonoBehaviour
{
    //player refs
    GameObject player;
    ThirdPersonController tpc;
    PlayerCameraController playerCam;
    CameraManager camManager;
    [Tooltip("Character or creature who speaks this monologue")]
    public GameObject hostObj;
    [Tooltip("Camera to use for Monologue")]
    public GameCamera speakerCam;
    [Tooltip("Check this to start at start")]
    public bool enableAtStart;
    [Tooltip("Check this to lock your player's movement")]
    public bool lockPlayer;
    [Tooltip("Automatically sets player to this spot")]
    public Transform playerSpot;
    //Audio
    SpeakerSound speakerAudio;
    //animator
    public SpeakerAnimations speakerAnimator;
    public Movement npcMovement;

    //text component and string array of its lines
    Text theText;
    TMP_Text the_Text;
    bool usesTMP;
    [Header("Text lines")]
    [Tooltip("No need to fill this in, that will happen automatically")]
    public string[] textLines;
    [Tooltip("Fill this with all the individual monologues the character will give")]
    public List<TextAsset> allMyMonologues = new List<TextAsset>();

    //current and last lines
    public int currentLine;
    public int endAtLine;
    public bool hasFinished;
    public bool disablesAtFinish;
    public bool canSkip = true;
    public bool enablesCinematic;
    public TimelinePlaybackManager cinematic;

    //typing vars
    public bool inMonologue;
    private bool isTyping = false;
    IEnumerator currentTypingLine;
    IEnumerator waitForNextLine;

    [Header("Text Timing")]
    public float timeBetweenLetters;
    public float resetDistance = 25f;
    //check this to have wait time from trigger to enable Monologue
    public bool waitToStart;
    public float timeUntilStart;
    //wait between lines
    public float timeBetweenLines;
    [Tooltip("Check this and fill in array below so that each line of text can be assigned a different wait")]
    public bool conversational;
    public float[] waitTimes;
    bool waiting;

    [Header("Monologues To Enable")]
    public MonologueText[] monologuesToEnable;
    MonologueTrigger mTrigger;

    void Awake()
    {
        //grab refs
        player = GameObject.FindGameObjectWithTag("Player");
        if (player)
        {
            tpc = player.GetComponent<ThirdPersonController>();
            playerCam = Camera.main.GetComponent<PlayerCameraController>();
        }
       
        camManager = FindObjectOfType<CameraManager>();
        theText = GetComponent<Text>();

        if(theText == null)
        {
            usesTMP = true;
            the_Text = GetComponent<TMP_Text>();
        }

        speakerAudio = hostObj.GetComponent<SpeakerSound>();
        mTrigger = GetComponent<MonologueTrigger>();
    }

    void Start()
    {
        //set text to first string in my list of monologues 
        ResetStringText(0);
       
        if (!enableAtStart)
        {
            if (usesTMP)
                the_Text.enabled = false;
            else
                theText.enabled = false;
        }
        else
        {
            EnableMonologue();
        }
    }

    //reset trigger if you swim away during Monologue
    void Update()
    {
        //speaker is typing out message
        if (isTyping)
        {
            //player skips to the end of the line
            if (Input.GetKeyDown(KeyCode.Space) && canSkip)
            {
                if (currentTypingLine != null)
                {
                    StopCoroutine(currentTypingLine);
                }

                //set to full line
                if (isTyping)
                    CompleteTextLine(textLines[currentLine]);

                SetWaitForNextLine();
            }

        }
        //player is waiting for next message
        if (waiting)
        {
            //player skips to next line
            if (Input.GetKeyDown(KeyCode.Space) && canSkip)
            {
                if (waitForNextLine != null)
                {
                    StopCoroutine(waitForNextLine);
                }

                ProgressLine();
            }
        }
    }

    void ProgressLine()
    {
        currentLine += 1;
        waiting = false;

        //reached the  end, reset
        if (currentLine >= endAtLine)
        {
            hasFinished = true;
            ResetMonologue();
        }
        //set next typing line 
        else
        {
            SetTypingLine();
        }
    }

    //calls text scroll coroutine 
    void SetTypingLine()
    {
        if (currentTypingLine != null)
        {
            StopCoroutine(currentTypingLine);
        }
        currentTypingLine = TextScroll(textLines[currentLine]);

        StartCoroutine(currentTypingLine);
    }
    
    //Coroutine that types out each letter individually
    private IEnumerator TextScroll(string lineOfText) 
    {
        // set first letter
        int letter = 0;
        if (usesTMP)
            the_Text.text = "";
        else
            theText.text = "";

        isTyping = true;
        //set talking anim
        if (speakerAnimator)
        {
            if (speakerAnimator.talkingAnimations > 0)
                speakerAnimator.RandomTalkingAnim();
        }

        while (isTyping && (letter < lineOfText.Length - 1))
        {
            //add this letter to our text
            if (usesTMP)
                the_Text.text += lineOfText[letter];
            else
                theText.text += lineOfText[letter];
            
            //check what audio to play 
            speakerAudio.AudioCheck(lineOfText, letter);
            //next letter
            letter += 1;
            yield return new WaitForSeconds(timeBetweenLetters);
        }

        //player waited to read full line
        if (isTyping)
            CompleteTextLine(lineOfText);

        SetWaitForNextLine();
    }

    //completes current line of text
    void CompleteTextLine(string lineOfText)
    {
        if (usesTMP)
            the_Text.text = lineOfText;
        else
            theText.text = lineOfText;
        isTyping = false;
    }

    //calls wait for next line coroutine 
    void SetWaitForNextLine()
    {
        //start waiting coroutine 
        if (waitForNextLine != null)
        {
            StopCoroutine(waitForNextLine);
        }

        //check what the wait time for this line should be 
        if (conversational)
        {
            waitForNextLine = WaitToProgressLine(waitTimes[currentLine]);
        }
        else
        {
            waitForNextLine = WaitToProgressLine(timeBetweenLines);
        }

        StartCoroutine(waitForNextLine);
    }

    //start wait for next line after spacebar skip
    IEnumerator WaitToProgressLine(float time)
    {
        yield return new WaitForEndOfFrame();

        waiting = true;

        yield return new WaitForSeconds(time);

        ProgressLine();
    }

    public void ResetStringText(int stringInList)
    {
        textLines = (allMyMonologues[stringInList].text.Split('\n'));
        currentLine = 0;
        endAtLine = textLines.Length;
    }

    public void EnableMonologue()
    {
        if (waitToStart)
        {
            if (usesTMP)
                the_Text.enabled = false;
            else
                theText.enabled = false;

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
        yield return new WaitForSeconds(timeUntilStart);

        StartMonologue();
    }

    //actually starts
    void StartMonologue()
    {
        if (usesTMP)
            the_Text.enabled = true;
        else
            theText.enabled = true;

        //enable speaker cam, disable cam controller
        camManager.Set(speakerCam);
        if(playerCam)
            playerCam.enabled = false;
        //lock player movement
        if (lockPlayer)
        {
            tpc.playerCanMove = false;
        }

        //set player pos
        if (playerSpot)
        {
            tpc.playerCloak.enabled = false;

            RaycastHit hit;

            Vector3 targetPosition;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(playerSpot.position, Vector3.down, out hit, Mathf.Infinity, npcMovement.grounded))
            {
                targetPosition = hit.point + new Vector3(0, tpc.controller.height / 2, 0);

                tpc.transform.position = targetPosition;
            }

            //player look at npc 
            Vector3 lookAtPos = new Vector3(hostObj.transform.position.x, tpc.samita.transform.position.y, hostObj.transform.position.z);
            tpc.samita.transform.LookAt(lookAtPos);

            tpc.playerCloak.enabled = true;
        }

        //set player to idle anim
        if(tpc)
            tpc.samita.SetAnimator("idle");
        inMonologue = true;
        StartCoroutine(TextScroll(textLines[currentLine]));
    }
    
    public void ResetMonologue()
    {
        DisableMonologue();

        if (!disablesAtFinish)
        {
            mTrigger.WaitToReset(3f);
            currentLine = 0;
        }
    }

    public void DisableMonologue()
    {
        StopAllCoroutines();

        if (usesTMP)
            the_Text.enabled = false;
        else
            theText.enabled = false;
        
        //set speaker to idle 
        if(speakerAnimator)
            speakerAnimator.SetAnimator("idle");

        //stop that waiting!
        if (npcMovement)
        {
            npcMovement.waitingToGiveMonologue = false;
        }

        inMonologue = false;
        //disable speaker cam, enable cam controller
        if (enablesCinematic)
        {
            cinematic.PlayTimeline();
        }

        //reenable player cam
        if (playerCam)
        {
            camManager.Set(camManager.defaultCamera);
            playerCam.enabled = true;
        }
           
        //unlock player
        if (lockPlayer)
        {
            tpc.playerCanMove = true;
        }
    }
}

