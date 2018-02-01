using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleRhythmLever : Interactable {
    
    public AudioClip selectLower;

    public GameObject lever;

    Transform windParent;

    CircleMill windTurbine;

    CircleWind windCircles;

    public int leverState;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = transform.parent;
        windTurbine = windParent.gameObject.GetComponent<CircleMill>();
        windCircles = windParent.GetChild(0).GetComponent<CircleWind>();
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
                windCircles.windSpeed = 0.2f;
                if (windTurbine.negative)
                    windTurbine.rotationSpeed = -0.2f;
                else
                {
                    windTurbine.rotationSpeed = 0.2f;
                }
                lever.transform.localEulerAngles = new Vector3(-30, 0, 0);
                break;
            case 1:
                windCircles.windSpeed = 0.4f;
                if (windTurbine.negative)
                    windTurbine.rotationSpeed = -0.4f;
                else
                {
                    windTurbine.rotationSpeed = 0.4f;
                }
                lever.transform.localEulerAngles = new Vector3(0, 0, 0);
                break;
            case 2:
                windCircles.windSpeed = 0.6f;
                if (windTurbine.negative)
                    windTurbine.rotationSpeed = -0.6f;
                else
                {
                    windTurbine.rotationSpeed = 0.6f;
                }
                lever.transform.localEulerAngles = new Vector3(30, 0, 0);
                break;
        }
    }
}
