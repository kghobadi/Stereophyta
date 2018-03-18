using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleMillControls : Interactable {

    //windTurbine and its rotation speed, lever objects 
    public GameObject windTurbine, rhythmLever, dirLever;
    public float rotationSpeed;

    //the transform parent of this object
    Transform circleMill;

    //array of circleNPCs which fills up at start
    GameObject[] circleNPCs;

    //rhythm vars
    public int rhythmState, rhythmStateMax;
    public float rhythmInterval, turbineInterval, NPCspeedInterval, animatorSpeedInterval, NPCLookInterval, windRadius;

    //actual wind which rotates around mill
    CircleWind windCircles;

    //lowering sound
    public AudioClip selectLower;

    //direction lever boolean (starts as 'positive')
    public bool dirPositive = true;

    public override void Start()
    {
        base.Start();
        interactable = true;

        //mill refs
        circleMill = transform.parent;
        windCircles = circleMill.GetChild(0).GetComponent<CircleWind>();
        circleNPCs = GameObject.FindGameObjectsWithTag("NPC");

        //set rhythm states
        rhythmState = 2;
        rotationSpeed = 30f;
        rhythmLever.transform.localEulerAngles = new Vector3(0, 0, 0);
    }

    public override void Update()
    {
        base.Update();

        //rotates the wind turbine
        windTurbine.transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }

    //Switch Wind Direction
    public override void Selection_One()
    {
        base.Selection_One();

        windCircles.windSpeed *= -1;
        rotationSpeed *= -1;

        for (int i = 0; i < circleNPCs.Length; i++)
        {
            if (Vector3.Distance(circleNPCs[i].gameObject.transform.position, transform.position) < windRadius)
            {
                circleNPCs[i].GetComponent<NPCcircle>().speed *= -1;
            }
        }

        //plays dif sound and moves lever correctly
        if (dirPositive)
        {
            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(selectLower);
            dirLever.transform.localEulerAngles = new Vector3(0, -30, 0);
            dirPositive = false;
        }
        else
        {
            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(InteractSound);
            dirLever.transform.localEulerAngles = new Vector3(0, 30, 0);
            dirPositive = true;
        }
    }

    //Increase rhythm
    public override void Selection_Two()
    {
        base.Selection_Two();
        if(rhythmState < rhythmStateMax)
        {
            rhythmState++;

            if (dirPositive)
            {
                RhythmIncrease();
            }
            else
            {
                RhythmDecrease();
            }


            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(InteractSound);
        }
    }

    //Decrease Rhythm
    public override void Selection_Three()
    {
        base.Selection_Three();
        if(rhythmState > 0)
        {
            rhythmState--;
            if (dirPositive)
            {
                RhythmDecrease();
            }
            else
            {
                RhythmIncrease();
            }

            if (!soundBoard.isPlaying)
                soundBoard.PlayOneShot(selectLower);
        }
    }

    //These rhythm functions are stored separately because they can be called in dif. ways based on if dirPositive = true or not

    void RhythmIncrease()
    {
        windCircles.windSpeed += rhythmInterval;
        rotationSpeed += rhythmInterval;
        rhythmLever.transform.localEulerAngles += new Vector3(30, 0, 0);

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

    void RhythmDecrease()
    {
        windCircles.windSpeed -= rhythmInterval;
        rotationSpeed -= rhythmInterval;
        rhythmLever.transform.localEulerAngles -= new Vector3(30, 0, 0);

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
