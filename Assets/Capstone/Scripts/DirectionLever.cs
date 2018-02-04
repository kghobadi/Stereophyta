using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DirectionLever : Interactable
{

    public AudioClip selectLower;

    public GameObject lever;

    Transform windParent;

    CircleWind windCircles;

    CircleMill windTurbine;

    public bool dirPositive = true;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = transform.parent;
        windTurbine = windParent.gameObject.GetComponent<CircleMill>();
        windCircles = windParent.GetChild(0).GetComponent<CircleWind>();
 
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
        if (interactable)
        {
            base.handleClickSuccess();
            windCircles.windSpeed *= -1;
            windTurbine.rotationSpeed *= -1;

            if (dirPositive)
            {
                lever.transform.localEulerAngles = new Vector3(0, -30, 0);
                dirPositive = false;
            }
            else
            {
                lever.transform.localEulerAngles = new Vector3(0, 30, 0);
                dirPositive = true;
            }
        }
    }

}
