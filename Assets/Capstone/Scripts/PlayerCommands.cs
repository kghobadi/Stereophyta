using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerCommands : MonoBehaviour {
    
    Image playerCommandMenu;
    public GameObject[] commandButtons;
    bool activated;

    public GameObject leftCover, rightCover; //images which cover buttons
    public float commandDistance;
    List<Musician> musicians = new List<Musician>();

    CanvasRaycaster mainCanvas;

    GameObject _player;
    ThirdPersonController tpc;

    void Start () {
        playerCommandMenu = GetComponent<Image>();
       

        //Add all the command buttons to our list
        for(int i = 0; i < commandButtons.Length; i++)
        {
            commandButtons[i].SetActive(false);
        }

        mainCanvas = GameObject.FindGameObjectWithTag("MainCanvas").GetComponent<CanvasRaycaster>();
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();

        playerCommandMenu.enabled = false;
        leftCover.SetActive(false);
        rightCover.SetActive(false);

    }
	
	void Update () {
        if (playerCommandMenu.enabled && !activated)
        {
            MenuOn();
        }

        if (mainCanvas.hitWorld)
        {
            MenuOff();
        }
	}

    void MenuOn()
    {
        Debug.Log("turned on");
        for (int i = 0; i < commandButtons.Length; i++)
        {
            commandButtons[i].SetActive(true);
        }
        rightCover.SetActive(true);
        activated = true;
        mainCanvas.graphicsCastingOn = true; // wait a moment to do this
        tpc.enabled = false;
    }

    void MenuOff()
    {
        musicians.Clear();
        for (int i = 0; i < commandButtons.Length; i++)
        {
            commandButtons[i].SetActive(false);
        }
        leftCover.SetActive(false);
        rightCover.SetActive(false);
        activated = false;
        mainCanvas.graphicsCastingOn = false;
        mainCanvas.hitWorld = false;
        tpc.enabled = true;
        playerCommandMenu.enabled = false;
    }

    public void InstrumentOne()
    {
        LookForMusic("GUITAR");
    }
    public void InstrumentTwo()
    {
        LookForMusic("DRUM");
    }
    public void InstrumentThree()
    {
        LookForMusic("HORN");
    }
    public void InstrumentFour()
    {
        LookForMusic("PIANO");
    }

    //Checks around player for anything of this Music Type -- should apply it to plants and rocks too at some point
    public void LookForMusic(string characterType)
    {
        //make sure this kind of thing comes from player not UI
        Collider[] hitColliders = Physics.OverlapSphere(_player.transform.position, commandDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "NPC")
            {
                if(hitColliders[i].gameObject.GetComponent<Musician>().musicType.ToString() == characterType)
                {
                    musicians.Add(hitColliders[i].gameObject.GetComponent<Musician>());
                    Debug.Log("added 1");
                }
            }
            i++;
        }

        //changes covers
        rightCover.SetActive(false);
        leftCover.SetActive(true);
    }

    public void IncreaseTempo()
    {
        for(int i=0; i < musicians.Count; i++)
        {
            if (musicians[i].primaryTempo < 4)
                musicians[i].primaryTempo++;
        }

        MenuOff();
    }

    public void LowerTempo()
    {
        for (int i = 0; i < musicians.Count; i++)
        {
            if(musicians[i].primaryTempo > 0)
                musicians[i].primaryTempo--;
        }

        MenuOff();
    }

    public void StartPlaying()
    {
        for (int i = 0; i < musicians.Count; i++)
        {
                musicians[i].isPlaying = true;
        }

        MenuOff();
    }

    public void StopPlaying()
    {
        for (int i = 0; i < musicians.Count; i++)
        {
            musicians[i].isPlaying = false;
        }

        MenuOff();
    }
}
