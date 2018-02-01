using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RhythmLever : Interactable {
    
    public AudioClip selectLower;

    public GameObject lever;

    WindMachine windParent;

    public int leverState;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = GetComponentInParent<WindMachine>();
        leverState = 1;
        LeverStateSwitch();
    }

    void Update()
    {
        if (tpc.isHoldingSomething)
        {
            interactable = false;
        }
        else
        {
            interactable = true;
        }
    }

    public override void handleClickSuccess()
    {
        //nothing happens
    }

    public override void OnMouseOver()
    {
        if (!tpc.isHoldingSomething && interactable)
        {
            base.OnMouseOver();
            if (Input.GetMouseButtonDown(0))
            {
                if(leverState > 0)
                {
                    leverState--;
                    LeverStateSwitch();
                    if (!soundBoard.isPlaying)
                        soundBoard.PlayOneShot(selectLower);
                }
            }
            if (Input.GetMouseButtonDown(1))
            {
                if(leverState < 2) //could change this to maxState
                {
                    leverState++;
                    LeverStateSwitch();
                    if (!soundBoard.isPlaying)
                        soundBoard.PlayOneShot(InteractSound);
                }
            }

        }
    }

    public void LeverStateSwitch()
    {
        switch (leverState)
        {
            case 0:
                windParent.windSpeed = 3;
                windParent.timerTotal = 8;
                lever.transform.localEulerAngles = new Vector3(-30, 0, 0);
                break;
            case 1:
                windParent.windSpeed = 5;
                windParent.timerTotal = 4;
                lever.transform.localEulerAngles = new Vector3(0, 0, 0);
                break;
            case 2:
                windParent.windSpeed = 7;
                windParent.timerTotal = 2;
                lever.transform.localEulerAngles = new Vector3(30, 0, 0);
                break;
        }
    }
}
