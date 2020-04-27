using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;
using InControl;
using TMPro;

public class Menu : MonoBehaviour {
    //sun
    GameObject sun;
    Sun sunScript;
    float lastSunSpeed;
    StartView startViewer;
    //player
    GameObject player;
    ThirdPersonController tpc;
    //overall menu obj
    public GameObject menuObj;
    public Book bookScript;
    //toggle mouse controls
    [Header("Mouse -- PS4 Toggle")]
    public bool mouseOrPs4OnStart;
    public Sprite mouseControlsImg;
    public Sprite ps4ControlsImg;
    public TMP_Text interactEprompt;
    public Image interactPS4prompt;
    public PlayerCameraController camController;
    public ZoomCamInstructions zoomInstructions;
    public Slider mouseSensitivity;
    //store cam sensitivity values 
    [Header("Cam sensitivity values")]
    //use this to get the various mouse sensitivity values 
    //from the cinemachine cameras 
    //and generalize for a single slider 
    //settings volume slider
    [Header("Audio Settings")]
    public AudioMixer audMixer;
    public AudioMixerGroup[] mixerGroups;
    public Slider[] volumeSliders;
    public string[] volGroupNames;
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
        startViewer = FindObjectOfType<StartView>();

        //player
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    void Start()
    {
        //set initial values
        CheckVolumes();

        //set mouse controls 
        SetMouseControlsBool();
        
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
            else if (!menuObj.activeSelf && !startViewer.active)
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
        //menu off
        menuObj.SetActive(false);
        tpc.menuOpen = false;
        camController.enabled = true;

        //cursor off if not in boat 
        if(tpc.boatScript.inBoat == false)
        {
            Cursor.lockState = CursorLockMode.Locked;
            cursor.SetActive(false);
        }
        
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

    //assigns Slider values to actual Mixer volumes 
    public void CheckVolumes()
    {
        for (int i = 0; i < volGroupNames.Length;i++)
        {
            float val;
            audMixer.GetFloat(volGroupNames[i], out val );
            volumeSliders[i].value = val;
        }
    }

    //functions to adjust master volumes with a sliders
    public void ChangeVolume(int mixer)
    {
        string volumeVar = "";

        volumeVar = volGroupNames[mixer];

        mixerGroups[mixer].audioMixer.SetFloat(volumeVar, volumeSliders[mixer].value);
    }

    //for mouse sensitivity slider
    //sets the cam sensitivity values to their orig at start + value of the slider
    public void SetMouseSensitivity()
    {
        // Need to rework this once cinemachine cameras are properly set up
    }

    //for quit button press
    public void QuitGame()
    {
        Application.Quit();
    }

    //this toggles mouse v controller option
    public void SetMouseControlsBool()
    { 
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
        
        //CONTROLLER enabled
        if (inputDevice.DeviceClass == InputDeviceClass.Controller)
        {
            bookScript.bookPages[0] = ps4ControlsImg;
            //change prompts
            interactEprompt.enabled = false;
            interactPS4prompt.enabled = true;

            zoomInstructions.mouseOrPs4 = false;
            PlayerPrefs.SetString("mouseOrController", "controller");
        }

        //Mouse + Keyboard enabled
        else if (inputDevice.DeviceClass == InputDeviceClass.Keyboard || inputDevice.DeviceClass == InputDeviceClass.Mouse)
        {
            bookScript.bookPages[0] = mouseControlsImg;
            //change prompts
            interactEprompt.enabled = true;
            interactPS4prompt.enabled = false;

            zoomInstructions.mouseOrPs4 = true;
            PlayerPrefs.SetString("mouseOrController", "mouse");
        }

        bookScript.UpdateSprites();
    }

    IEnumerator WaitToSetControls()
    {
        yield return new WaitUntil(() => menuObj.activeSelf == true);
    }
}
