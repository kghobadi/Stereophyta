using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleRhythmLever : Interactable {
    
    public AudioClip selectLower;

    public GameObject lever;

    Transform windParent;

    DirectionLever dirLever;

    CircleMill windTurbine;

    CircleWind windCircles;

    public int leverState, leverStateMax;

    bool increasing;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = transform.parent;
        windTurbine = windParent.GetComponent<CircleMill>();
        dirLever = windParent.GetChild(1).GetComponent<DirectionLever>();
        windCircles = windParent.GetChild(0).GetComponent<CircleWind>();

        //set states
        leverState = 1;
        windCircles.windSpeed = 0.4f;
        windTurbine.rotationSpeed = 0.4f;
        lever.transform.localEulerAngles = new Vector3(0, 0, 0);
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
        if (!tpc.isHoldingSomething && interactable)
        {
            //base.handleClickSuccess();

            if (increasing)
            {
                if (leverState < leverStateMax)
                {
                    leverState++;
                    LeverStateSwitch();
                    if (!soundBoard.isPlaying)
                        soundBoard.PlayOneShot(InteractSound);
                }
                else
                {
                    increasing = false;
                    leverState--;
                    LeverStateSwitch();
                    if (!soundBoard.isPlaying)
                        soundBoard.PlayOneShot(selectLower);
                }
            }
            else
            {
                if (leverState > 0)
                {
                    leverState--;
                    LeverStateSwitch();
                    if (!soundBoard.isPlaying)
                        soundBoard.PlayOneShot(selectLower);
                }
                else
                {
                    increasing = true;
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
        if (dirLever.dirPositive)
        {
            if (increasing)
            {
                windCircles.windSpeed += 0.2f;
                windTurbine.rotationSpeed += 0.2f;
                lever.transform.localEulerAngles += new Vector3(30, 0, 0);
            }
            else
            {
                windCircles.windSpeed -= 0.2f;
                windTurbine.rotationSpeed -= 0.2f;
                lever.transform.localEulerAngles -= new Vector3(30, 0, 0);
            }
        }
        else
        {
            if (increasing)
            {
                windCircles.windSpeed -= 0.2f;
                windTurbine.rotationSpeed -= 0.2f;
                lever.transform.localEulerAngles += new Vector3(30, 0, 0);
            }
            else
            {
                windCircles.windSpeed += 0.2f;
                windTurbine.rotationSpeed += 0.2f;
                lever.transform.localEulerAngles -= new Vector3(30, 0, 0);
            }
        }
    }
}
