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

    public float rhythmInterval, NPCspeedInterval, animatorSpeedInterval, NPCLookInterval, windRadius;
    bool increasing;

    GameObject[] circleNPCs;

    public override void Start()
    {
        base.Start();
        interactable = true;
        windParent = transform.parent;
        windTurbine = windParent.GetComponent<CircleMill>();
        dirLever = windParent.GetChild(1).GetComponent<DirectionLever>();
        windCircles = windParent.GetChild(0).GetComponent<CircleWind>();
        circleNPCs = GameObject.FindGameObjectsWithTag("NPC");

        //set states
        leverState = 1;
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
                windCircles.windSpeed += rhythmInterval;
                windTurbine.rotationSpeed += rhythmInterval;
                lever.transform.localEulerAngles += new Vector3(30, 0, 0);

                //adjusts NPC circle men speeds
                for (int i =0;i < circleNPCs.Length; i++)
                {
                    if(Vector3.Distance(circleNPCs[i].gameObject.transform.position, transform.position) < windRadius)
                    {
                        circleNPCs[i].GetComponent<NPCcircle>().speed += NPCspeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().animator.speed += animatorSpeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().lookTimerTotal -= NPCLookInterval;
                    }
                }
            }
            else
            {
                windCircles.windSpeed -= rhythmInterval;
                windTurbine.rotationSpeed -= rhythmInterval;
                lever.transform.localEulerAngles -= new Vector3(30, 0, 0);

                //adjusts NPC circle men speeds
                for (int i = 0; i < circleNPCs.Length; i++)
                {
                    if (Vector3.Distance(circleNPCs[i].gameObject.transform.position, transform.position) < windRadius)
                    {
                        circleNPCs[i].GetComponent<NPCcircle>().speed -= NPCspeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().animator.speed -= animatorSpeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().lookTimerTotal += NPCLookInterval;
                    }
                }
            }
        }
        else
        {
            if (increasing)
            {
                windCircles.windSpeed -= rhythmInterval;
                windTurbine.rotationSpeed -= rhythmInterval;
                lever.transform.localEulerAngles += new Vector3(30, 0, 0);

                //adjusts NPC circle men speeds
                for (int i = 0; i < circleNPCs.Length; i++)
                {
                    if (Vector3.Distance(circleNPCs[i].gameObject.transform.position, transform.position) < windRadius)
                    {
                        circleNPCs[i].GetComponent<NPCcircle>().speed -= NPCspeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().animator.speed -= animatorSpeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().lookTimerTotal += NPCLookInterval;
                    }
                }
            }
            else
            {
                windCircles.windSpeed += rhythmInterval;
                windTurbine.rotationSpeed += rhythmInterval;
                lever.transform.localEulerAngles -= new Vector3(30, 0, 0);

                //adjusts NPC circle men speeds
                for (int i = 0; i < circleNPCs.Length; i++)
                {
                    if (Vector3.Distance(circleNPCs[i].gameObject.transform.position, transform.position) < windRadius)
                    {
                        circleNPCs[i].GetComponent<NPCcircle>().speed += NPCspeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().animator.speed += animatorSpeedInterval;
                        circleNPCs[i].GetComponent<NPCcircle>().lookTimerTotal -= NPCLookInterval;
                    }
                }
            }
        }
    }
}
