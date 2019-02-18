using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class Menu : MonoBehaviour {
    GameObject player;
    ThirdPersonController tpc;

    public GameObject menuObj;

    public Toggle mouseControlsToggle;
    public PlayerCameraController camController;

    public AudioMixerGroup masterGroup;
    public Slider volumeSlider;

	void Start ()
    {
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
                menuObj.SetActive(false);
                tpc.menuOpen = false;
                Cursor.visible = false;
            }
            //turn on
            else
            {
                Cursor.visible = true;
                menuObj.SetActive(true);
                tpc.menuOpen = true;
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
