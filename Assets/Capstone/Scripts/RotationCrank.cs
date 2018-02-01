using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationCrank : Interactable {
    
    public bool transitioned, transitionBack;
    public AudioClip selectLower;

    public GameObject crank;

    public override void Start()
    {
        base.Start();
        interactable = true;
    }


    void Update () {
        if (tpc.isHoldingSomething)
        {
            interactable = false;
        }
        else
        {
            interactable = true;
        }

        if (transitionBack)
        {
            transform.parent.localEulerAngles += new Vector3(0, 1, 0);
            crank.transform.localEulerAngles += new Vector3(0, 0, -1);
        }
        if (transitioned)
        {
            transform.parent.localEulerAngles += new Vector3(0, -1, 0);
            crank.transform.localEulerAngles += new Vector3(0, 0, 1);
        }

        if (Input.GetMouseButtonUp(0))
        {
            transitioned = false;
        }

        if (Input.GetMouseButtonUp(1))
        {
            transitionBack = false;
        }
    }

    public override void OnMouseOver()
    {
        if (!tpc.isHoldingSomething && !playerHolding)
        {
            base.OnMouseOver();
            if (Input.GetMouseButton(0))
            {
                transitioned = true;
                if (!soundBoard.isPlaying)
                    soundBoard.PlayOneShot(InteractSound);
            }
            if (Input.GetMouseButton(1))
            {
                transitionBack = true;
                if (!soundBoard.isPlaying)
                    soundBoard.PlayOneShot(selectLower);
            }

        }
    }
}
