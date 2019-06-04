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

    //player
    GameObject player;
    ThirdPersonController tpc;
    //overall menu obj
    public GameObject menuObj;
    public GameObject settingsObj;
    public Book bookScript;
    //toggle mouse controls
    public Toggle mouseControlsToggle;
    public PlayerCameraController camController;
    //settings volume slider
    public AudioMixerGroup masterGroup;
    public Slider volumeSlider;
    //menu audio
    public AudioSource menuAudio;
    public AudioClip openBook, closeBook;

	void Start ()
    {
        //grab sun refs
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        //player
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //set initial values
        volumeSlider.value = 0;
        mouseControlsToggle.isOn = camController.mouseControls;

        menuObj.SetActive(false);
    }
	
	void Update () {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            //turn off
            if (menuObj.activeSelf)
            {
                //menu off
                menuObj.SetActive(false);
                tpc.menuOpen = false;

                //cursor off
                Cursor.visible = false;
                Cursor.lockState = CursorLockMode.Locked;

                //reset sun
                sunScript.rotationSpeed = lastSunSpeed;
                menuAudio.PlayOneShot(closeBook);
            }
            //turn on
            else
            {
                //cursor on
                Cursor.visible = true;
                Cursor.lockState = CursorLockMode.None;

                //menu on
                menuObj.SetActive(true);
                tpc.menuOpen = true;

                //pause sun
                lastSunSpeed = sunScript.rotationSpeed;
                sunScript.rotationSpeed = 0;
                menuAudio.PlayOneShot(openBook);
            }
        }

        //toggle settings stuff on and off depending what book page you are on
        if (menuObj.activeSelf)
        {
            if(bookScript.currentPage == 0)
            {
                settingsObj.SetActive(true);
            }
            else
            {
                settingsObj.SetActive(false);
            }
        }
	}

    //function to adjust master volume with a slider
    public void ChangeVolume()
    {
        masterGroup.audioMixer.SetFloat("masterVol", volumeSlider.value);
    }

    public void QuitGame()
    {
        Application.Quit();
    }

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
