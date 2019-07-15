using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CircleMillControls : MonoBehaviour {
    //player ref
    GameObject player;
    ThirdPersonController tpc;

    //camera refs
    PlayerCameraController camControl;
    public float origHeight;
    public float zoomedOutHeight;

    //is the player currently operating the mill controls?
    public bool playerOperating, playerWasNear;
    private float timeUntilLeaving;
    //is the mill currently activated -- moving circle winds?
    public Vector3 operatingPos, exitPos;
    public GameObject operatingMenu;
    public GameObject cursor;

    //windTurbine and its rotation speed, lever objects 
    public GameObject windTurbine;
    public float rotationSpeed;

    //the transform parent of this object
    Transform circleMill;

    //actual wind which rotates around mill
    public Transform circleWindParent;
    public Slider windCountSlider;
    public Image windHandle;
    public int windCount = 0;
    public CircleWind[] allCircleWinds, currentCircleWinds, zeroCircleWinds, singleCircleWind, doubleCircleWind, tripleCircleWind, quadCircleWind;
    public float windSpeedMin;

    //rhythm vars
    public Slider rhythmSlider;
    public Image rhythmHandle;
    public int rhythmState;
    public float rhythmInterval, windRadius;
    
    //lowering sound
    AudioSource controlsAudio;
    public AudioClip beginOperating, gearTurn1, gearTurn2;
    public AudioClip[] selectionSounds;

    //direction lever boolean (starts as 'positive')
    public Button changeDirection;
    public bool dirClockwise = true;

    //rhythm indicator stuff
    public SpriteRenderer rhythmSR;
    Animator rhythmIndicator;
    FadeSprite rhythmFader;
    //timers for how long indicator appears
    public bool changedRhythm;
    public float disappearTimer, disappearTimerTotal = 1.5f;

    //ui refs for pickup prompt
    public Text interactText;
    public string useMessage, leaveMessage;
    public FadeUI[] interactPrompts;

    void Start()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        camControl = Camera.main.GetComponent<PlayerCameraController>();

        //rhythm indicator
        rhythmIndicator = rhythmSR.GetComponent<Animator>();
        rhythmFader = rhythmSR.GetComponent<FadeSprite>();
        rhythmSR.enabled = false;
        disappearTimer = disappearTimerTotal;
        
        //mill refs
        circleMill = transform.parent;
        controlsAudio = GetComponent<AudioSource>();
        operatingPos = transform.position + new Vector3(-1f, 1f, 0);
        exitPos = transform.position + new Vector3(-2f, 1f, 0);

        //add circle winds to the list
        currentCircleWinds = zeroCircleWinds;
        for(int i = 0; i < allCircleWinds.Length; i++)
        {
            allCircleWinds[i].DeactivateWind();
        }

        operatingMenu.SetActive(false);

        //set rhythm states
        SwitchRhythm();
    }

    void Update()
    { 
        //just for interact logic 
        if (!playerOperating)
        {
            //dist from player
            float dist = Vector3.Distance(transform.position, player.transform.position);
            //if player is close
            if (dist < 10f)
            {
                playerWasNear = true;

                //fade in those prompts
                if (interactText.color.a < 0.5f)
                    ShowInteractPrompt(useMessage);

                //pick up when player presses E
                if (Input.GetKeyDown(KeyCode.E) && !tpc.menuOpen)
                {
                    OperateControls();
                }
            }
            //player has left
            else if (dist > 11f)
            {
                //fade out prompts
                if (playerWasNear)
                {
                    DeactivatePrompt();
                    playerWasNear = false;
                }
            }
        }
        //player operating
        else
        {
            timeUntilLeaving += Time.deltaTime;

            if(timeUntilLeaving > 0.5f)
            {
                //pick up when player presses E
                if (Input.GetKeyDown(KeyCode.E) && !tpc.menuOpen)
                {
                    LeaveControls();
                }
            }
        }

        //deactivates rhythm indicator after disappearTimer
        if (rhythmSR.enabled)
        {
            disappearTimer -= Time.deltaTime;
            if (disappearTimer < 0)
            {
                rhythmSR.enabled = false;
                disappearTimer = disappearTimerTotal;
            }
        }

        //rotates the wind turbine
        windTurbine.transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }

    //called when player begins operating
    void OperateControls()
    {
        playerOperating = true;
        origHeight = camControl.heightFromPlayer;
        camControl.heightMax = zoomedOutHeight;
        camControl.heightFromPlayer = zoomedOutHeight;
        camControl.zoomSpeed = 0;
        tpc.playerCanMove = false;
        tpc.transform.position = operatingPos;
        tpc.myInventory.gameObject.SetActive(false);
        tpc.playerSource.PlayOneShot(beginOperating);
        timeUntilLeaving = 0;

        //menu on
        operatingMenu.SetActive(true);
        //cursor on
        Cursor.lockState = CursorLockMode.None;
        cursor.SetActive(true);


        ShowInteractPrompt(leaveMessage);
    }

    //called when player stops operating
    void LeaveControls()
    {
        playerOperating = false;
        camControl.heightMax = 20f;
        camControl.heightFromPlayer = origHeight;
        camControl.zoomSpeed = 500f;
        tpc.playerCanMove = true;
        tpc.transform.position = exitPos;
        tpc.myInventory.gameObject.SetActive(true);

        //menu off
        operatingMenu.SetActive(false);
        //cursor off
        Cursor.lockState = CursorLockMode.Locked;
        cursor.SetActive(false);
    }
    
    //Switch Wind Direction
    public void ChangeDirections()
    {
        if (!controlsAudio.isPlaying)
        {
            //loop thru circle winds to set neg wind speed
            for(int i = 0; i < allCircleWinds.Length; i++)
            {
                allCircleWinds[i].windSpeed *= -1;
            }

            rotationSpeed *= -1;

            //plays dif sound and moves lever correctly
            if (dirClockwise)
            {
                controlsAudio.PlayOneShot(gearTurn1, 1f);
                dirClockwise = false;
            }
            //counter clockwise
            else
            {
                controlsAudio.PlayOneShot(gearTurn2, 1f);
                dirClockwise = true;
            }
        }
    }

    //called when the player moves the rhythm switch UI
    public void SwitchRhythm()
    {
        //set rhythm state & rhythm indicator
        rhythmState = (int)rhythmSlider.value;
        rhythmIndicator.SetInteger("Level", rhythmState);
        rhythmFader.FadeIn();
        changedRhythm = true;
        disappearTimer = disappearTimerTotal;
        controlsAudio.PlayOneShot(selectionSounds[rhythmState], 1f);
        
        //loop thru wind circles and set new speeds
        for (int i = 0; i < allCircleWinds.Length; i++)
        {
            //set to min
            if(rhythmState == 0)
            {
                allCircleWinds[i].windSpeed = windSpeedMin;
            }
            //multiply by interval
            else
            {
                allCircleWinds[i].windSpeed = windSpeedMin + (rhythmState * rhythmInterval);
            }
        }

        //set rotation speed
        if(rhythmState == 0)
        {
            rotationSpeed = 25f;
        }
        else
        {
            rotationSpeed = 25f * (2 * rhythmState);
        }

        //keep them counter-clockwise if so -- negative!
        if (!dirClockwise)
        {
            //loop thru circle winds to set neg wind speed
            for (int i = 0; i < allCircleWinds.Length; i++)
            {
                allCircleWinds[i].windSpeed *= -1;
            }

            rotationSpeed *= -1;
        }
    }

    public void SetCurrentCircleWinds()
    {
        //deactivate current circle winds
        if(currentCircleWinds.Length > 0)
        {
            for (int i = 0; i < currentCircleWinds.Length; i++)
            {
                currentCircleWinds[i].DeactivateWind();
            }
        }
        //set windCount
        windCount = (int)windCountSlider.value;

        //set new circle winds
        switch (windCount)
        {
            case 0:
                currentCircleWinds = zeroCircleWinds;
                break;
            case 1:
                currentCircleWinds = singleCircleWind;
                break;
            case 2:
                currentCircleWinds = doubleCircleWind;
                break;
            case 3:
                currentCircleWinds = tripleCircleWind;
                break;
            case 4:
                currentCircleWinds = quadCircleWind;
                break;
        }

        //play sound corresponding to number 
        controlsAudio.PlayOneShot(selectionSounds[windCount], 1f);

        //if we aren't at 0
        if (currentCircleWinds.Length > 0)
        {
            //activate new winds
            for(int i = 0; i < currentCircleWinds.Length; i++)
            {
                currentCircleWinds[i].ActivateWind();
            }
        }
    }
    

    public void ShowInteractPrompt(string message)
    {
        //set text prompt
        interactText.text = message;

        //fade em in
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeIn();
        }
    }

    //turn off prompt
    public void DeactivatePrompt()
    {
        //fade em out
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeOut();
        }
    }
}
