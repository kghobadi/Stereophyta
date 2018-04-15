using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : RhythmProducer {

    //WindMachine itself -- pick up and wind gen
    public GameObject wind;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;

    public AudioClip selectLower;
    Transform windMachineModel;

    int originalLayer;

    //Rotation var -- not being used currently
    public bool rotating;

    //Rhythm lever vars
    public int timeScaleMax;

    bool increasing;

    public override void Start () {
        base.Start();

        interactable = true;
        windMachineModel = transform.GetChild(0);

        originalLayer = gameObject.layer;
        windClone = Instantiate(wind, transform.position, Quaternion.Euler(windMachineModel.eulerAngles + new Vector3(0, 90, 0)), windMachineModel);

        //rhythm lever state -- timeScale should never exceed timeScaleMax 
        timeScale = 2;
        windSpeed = 5;

    }
	
	public override void Update () {
        base.Update();

        //wind machine drop while holding
        if (playerHolding)
        {
            if (Input.GetMouseButtonDown(1))
            {
                DropObject();
            }
        }

        //if player is nearby, generate wind rhythm at timeInterval (look in Rhythm Producer)
        if (Vector3.Distance(_player.transform.position, transform.position) < 100)
        {
            if (showRhythm)
            {
                //instantiate wind, show particles, etc.
                windClone = Instantiate(wind, transform.position, Quaternion.Euler(windMachineModel.eulerAngles + new Vector3(0, 90, 0)), windMachineModel);
                showRhythm = false;
            }
        }

        //Rotation state
        //if (rotating)
        //{
        //   use this once you can hold down selection menu buttons for continuous actions
        //}
    }

    public override void AudioRhythm()
    {
        // nothing here, no sound on rhythm
    }

    public override void SwitchTimeScale()
    {
        // nothing here, we don't want sound to play
    }

    public override void handleClickSuccess()
    {
        //player cannot click on this if they are holding it already
        if(interactable && !playerHolding)
        {
            base.handleClickSuccess();
        }
    }

    //Pick Up the WindMachine
    public override void Selection_One()
    {
        base.Selection_One();
        DeactivateSelectionMenu();
        transform.SetParent(rightArmObj.transform);

        transform.localPosition = Vector3.zero;
        transform.localEulerAngles = Vector3.zero;
        gameObject.layer = originalLayer;

        tpc.isHoldingSomething = true;
        playerHolding = true;
        interactable = false;
        
    }

    //Rotate WindMachine 90
    public override void Selection_Two()
    {
        base.Selection_Two();

        //rotating = true;
        windMachineModel.transform.localEulerAngles -= new Vector3(0, 90, 0);

        if (!soundBoard.isPlaying)
            soundBoard.PlayOneShot(InteractSound);
    }

    //Increase rhythm
    public override void Selection_Three()
    {
        base.Selection_Three();
        if(timeScale < timeScaleMax)
        {
            windSpeed += 2;
            timeScale += 1;
            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(InteractSound);
        }
    }

    //Decrease Rhythm
    public override void Selection_Four()
    {
        base.Selection_Four();
        if (timeScale > 0)
        {
            windSpeed -= 2;
            timeScale -= 1;
            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(selectLower);
        }
    }

    //Called when player is holding the windMachine and right clicks to drop
    public void DropObject()
    {
        transform.localPosition -= new Vector3(0, 2, 0);
        transform.SetParent(null);

        tpc.isHoldingSomething = false;
        playerHolding = false;
        interactable = true;
    }
}
