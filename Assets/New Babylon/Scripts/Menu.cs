using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

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
    public Toggle mouseControlsToggle;
    public PlayerCameraController camController;
    //settings volume slider
    public AudioMixerGroup[] mixerGroups;
    public Slider[] volumeSliders;
    //menu audio
    public AudioSource menuAudio;
    public AudioClip openBook, closeBook;

    //for first time opening Book
    public FadeUI[] escNotices;

	void Start ()
    {
        //grab sun refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        //player
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //set initial values
        for(int i = 0; i < volumeSliders.Length; i++)
        {
            volumeSliders[i].value = 0;
        }
        mouseControlsToggle.isOn = camController.mouseControls;

        menuObj.SetActive(false);
    }
	
	void Update () {
        //only works if we have picked up the book
        if (Input.GetKeyDown(KeyCode.Escape) && PlayerPrefs.GetString("hasBook") == "yes")
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
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;

        //menu on
        menuObj.SetActive(true);
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

        //cursor off
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

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

    //for quit button press
    public void QuitGame()
    {
        Application.Quit();
    }

    //this toggles mouse v controller option
    public void SetMouseControlsBool()
    {
        camController.mouseControls = !camController.mouseControls;

        if (camController.mouseControls)
        {
            mouseControlsToggle.isOn = true;
        }
        else
        {
            mouseControlsToggle.isOn = false;
        }
    }
}
