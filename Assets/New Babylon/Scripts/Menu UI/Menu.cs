using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;
using InControl;

public class Menu : MonoBehaviour {
    //sun
    GameObject sun;
    Sun sunScript;
    float lastSunSpeed;
    public StartView startViewer;
    //player
    GameObject player;
    ThirdPersonController tpc;
    //overall menu obj
    public GameObject menuObj;
    public Book bookScript;
    //toggle mouse controls
    [Header("Mouse -- PS4 Toggle")]
    public Sprite mouseControlsImg, ps4ControlsImg;
    public Text dockEprompt, interactEprompt;
    public Image dockPS4prompt, interactPS4prompt;
    public PlayerCameraController camController;
    public ZoomCamInstructions zoomInstructions;
    public Slider mouseSensitivity;
    //store cam sensitivity values 
    [Header("Cam sensitivity values")]
    public float omTurnSmoothLook;
        public float omTurnSmoothMove;
    public float omMovingTurnLook, omMovingTurnMove;
    public float omSmoothLookOrig, omSmoothMoveOrig;
    //settings volume slider
    [Header("Audio Settings")]
    public AudioMixerGroup[] mixerGroups;
    public Slider[] volumeSliders;
    //menu audio
    public AudioSource menuAudio;
    public AudioClip openBook, closeBook;

    //for first time opening Book
    public FadeUI[] escNotices;
    public GameObject cursor;

    void Awake()
    {
        //grab sun refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        //player
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void Start()
    {
        //set initial values
        for (int i = 0; i < volumeSliders.Length; i++)
        {
            volumeSliders[i].value = 0;
        }

        //SET original sensitivity values
        //fast
        omTurnSmoothLook = camController.mTurnSmoothLook;
        omTurnSmoothMove = camController.mTurnSmoothMove;

        //medium
        omMovingTurnLook = camController.mMovingTurnSmoothLook;
        omMovingTurnMove = camController.mMovingTurnSmoothMove;

        //original
        omSmoothLookOrig = camController.mSmoothLookOriginal;
        omSmoothMoveOrig = camController.mSmoothMoveOriginal;

        //set controls based on player pref 
        if (PlayerPrefs.HasKey("mouseOrController"))
        {
            if (PlayerPrefs.GetString("mouseOrController") == "mouse")
            {
                SetMouseControlsBool(true);
            }
            else
            {
                SetMouseControlsBool(false);
            }
        }
        else
        {
            SetMouseControlsBool(true);
        }

        //turn off
        menuObj.SetActive(false);
        cursor.SetActive(false);

        //dont bother setting controls until menu obj active 
        StartCoroutine(WaitToSetControls());
    }
	
	void Update () {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
        //only works if we have picked up the book
        if ((Input.GetKeyDown(KeyCode.Escape) || inputDevice.Command.WasPressed) && PlayerPrefs.GetString("hasBook") == "yes")
        {
            //turn off
            if (menuObj.activeSelf && !bookScript.flipping)
            {
                TurnOffMenu();
            }
            //turn on
            else if (!menuObj.activeSelf && !startViewer.startView)
            {
                TurnOnMenu();
            }
        }
	}

    public void TurnOnMenu()
    {
        //cursor on
        Cursor.lockState = CursorLockMode.None;
        cursor.SetActive(true);
        //turn off interact prompts 
        interactEprompt.transform.parent.gameObject.SetActive(false);
        dockEprompt.transform.parent.gameObject.SetActive(false);

        //menu on
        menuObj.SetActive(true);
        bookScript.UpdateSprites();
        tpc.menuOpen = true;
        camController.enabled = false;

        //pause sun
        lastSunSpeed = sunScript.rotationSpeed;
        sunScript.rotationSpeed = 0;
        menuAudio.PlayOneShot(openBook);
    }

    public void TurnOffMenu()
    {   
        //turn on interact prompts 
        interactEprompt.transform.parent.gameObject.SetActive(true);
        dockEprompt.transform.parent.gameObject.SetActive(true);
        //menu off
        menuObj.SetActive(false);
        tpc.menuOpen = false;
        camController.enabled = true;

        //cursor off
        Cursor.lockState = CursorLockMode.Locked;
        cursor.SetActive(false);

        //reset sun
        sunScript.rotationSpeed = lastSunSpeed;
        menuAudio.PlayOneShot(closeBook);

        //fade out escape notices
        if (escNotices[0].gameObject.activeSelf)
        {
            for (int i = 0; i < escNotices.Length; i++)
            {
                escNotices[i].FadeOut();
            }
        }
    }

    //functions to adjust master volumes with a sliders
    public void ChangeVolume(int mixer)
    {
        string volumeVar = "";

        switch (mixer)
        {
            case 0:
                volumeVar = "masterVol";
                break;
            case 1:
                volumeVar = "plantVol";
                break;
            case 2:
                volumeVar = "toolVol";
                break;
            case 3:
                volumeVar = "characterVol";
                break;
            case 4:
                volumeVar = "weatherVol";
                break;
        }

        mixerGroups[mixer].audioMixer.SetFloat(volumeVar, volumeSliders[mixer].value);
    }

    //for mouse sensitivity slider
    //sets the cam sensitivity values to their orig at start + value of the slider
    public void SetMouseSensitivity()
    {
        //fast
        camController.mTurnSmoothLook = omTurnSmoothLook + mouseSensitivity.value;
        camController.mTurnSmoothMove = omTurnSmoothMove + mouseSensitivity.value;

        //medium
        camController.mMovingTurnSmoothLook = omMovingTurnLook + mouseSensitivity.value;
        camController.mMovingTurnSmoothMove = omMovingTurnMove + mouseSensitivity.value;

        //original
        camController.mSmoothLookOriginal = omSmoothLookOrig + mouseSensitivity.value;
        camController.mSmoothMoveOriginal = omSmoothMoveOrig + mouseSensitivity.value;
    }

    //for quit button press
    public void QuitGame()
    {
        Application.Quit();
    }

    //toggle bool to opposite in UI 
    public void ToggleMouseControls()
    {
        bool toggle = !camController.mouseControls;

        SetMouseControlsBool(toggle);
    }

    //this toggles mouse v controller option
    public void SetMouseControlsBool(bool mouseOrController)
    {
        camController.mouseControls = mouseOrController;

        //MOUSE enabled
        if (camController.mouseControls)
        {
            
            bookScript.bookPages[0] = mouseControlsImg;
            //change prompts
            dockEprompt.enabled = true;
            interactEprompt.enabled = true;

            dockPS4prompt.enabled = false;
            interactPS4prompt.enabled = false;

            zoomInstructions.mouseOrPs4 = true;
            PlayerPrefs.SetString("mouseOrController", "mouse");
        }
        //CONTROLLER enabled
        else
        {
          
            bookScript.bookPages[0] = ps4ControlsImg;
            //change prompts
            dockEprompt.enabled = false;
            interactEprompt.enabled = false;

            dockPS4prompt.enabled = true;
            interactPS4prompt.enabled = true;

            zoomInstructions.mouseOrPs4 = false;
            PlayerPrefs.SetString("mouseOrController", "controller");
        }

        bookScript.UpdateSprites();
    }

    IEnumerator WaitToSetControls()
    {
        yield return new WaitUntil(() => menuObj.activeSelf == true);

        
    }
}
