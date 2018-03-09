using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RhythmLever : Interactable {

    public AudioClip selectLower;

    public GameObject lever;

    WindMachine windParent;

    public int leverState, leverStateMax;

    bool increasing;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = GetComponentInParent<WindMachine>();
        leverState = 2;

        //set states
        windParent.windSpeed = 5;
        windParent.timeScale = 2;
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

    public override void OnMouseOver()
    {
       
    }

    public void LeverStateSwitch()
    {
            if (increasing)
            {
            windParent.windSpeed += 2;
            windParent.timeScale += 1;
            lever.transform.localEulerAngles += new Vector3(30, 0, 0);
            }
            else
        {
            windParent.windSpeed -= 2;
            windParent.timeScale -= 1;
            lever.transform.localEulerAngles -= new Vector3(30, 0, 0);
        }


  
        }
} 
