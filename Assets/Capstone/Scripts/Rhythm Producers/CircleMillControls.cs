﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleMillControls : Interactable {

    //windTurbine and its rotation speed, lever objects 
    public GameObject windTurbine, rhythmLever, dirLever;
    public float rotationSpeed;

    //the transform parent of this object
    Transform circleMill;

    //array of circleNPCs which fills up at start
    public HornNPC hornPlanter;

    //rhythm vars
    public int rhythmState, rhythmStateMax;
    public float rhythmInterval, turbineInterval, NPCspeedInterval, animatorSpeedInterval, NPCLookInterval, windRadius;

    //actual wind which rotates around mill
    CircleWind windCircles;

    //lowering sound
    AudioSource controlsAudio;
    public AudioClip selectLower;

    CameraController camControl;
    Vector3 zoomedOutPosO, zoomedOutRotO;

    //direction lever boolean (starts as 'positive')
    public bool dirPositive = true;

    public Animator rhythmIndicator;
    float disappearTimer, disappearTimerTotal = 1f;

    public override void Start()
    {
        base.Start();
        interactable = true;
        rhythmIndicator.gameObject.SetActive(false);
        disappearTimer = disappearTimerTotal;

        controlsAudio = GetComponent<AudioSource>();
        camControl = cammy.GetComponent<CameraController>();
        if(camControl != null)
        {
            zoomedOutPosO = camControl.zoomedOutPos;
            zoomedOutRotO = camControl.zoomedOutRot;
        }
        

        //interact sprites
        for (int i = 1; i < 4; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/machine " + i));
        }

        //mill refs
        circleMill = transform.parent;
        windCircles = circleMill.GetChild(0).GetComponent<CircleWind>();
        

        //set rhythm states
        rhythmState = 2;
        rotationSpeed = 30f;
        rhythmLever.transform.localEulerAngles = new Vector3(0, 0, 0);
        rhythmIndicator.speed = 1f;
    }

    public override void Update()
    {
        base.Update();


        if((tpc.talking || selectionMenu.enabled) && playerClicked)
        {
            if (camControl != null)
            {
                camControl.zoomedOutPos = new Vector3(-10, 30, -10);
                camControl.zoomedOutRot = new Vector3(65, 45, 0);
            }

            rhythmIndicator.gameObject.SetActive(true);
            disappearTimer = disappearTimerTotal;
        }
        else
        {
            if (camControl != null)
            {
                camControl.zoomedOutPos = zoomedOutPosO;
                camControl.zoomedOutRot = zoomedOutRotO;
            }
        }

        if (rhythmIndicator.gameObject.activeSelf)
        {
            disappearTimer -= Time.deltaTime;
            if (disappearTimer < 0)
            {
                rhythmIndicator.gameObject.SetActive(false);
                disappearTimer = disappearTimerTotal;
            }
        }

        //rotates the wind turbine
        windTurbine.transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        rhythmIndicator.gameObject.SetActive(true);
    }

    public override void OnMouseOver()
    {
        base.OnMouseOver();
        disappearTimer = disappearTimerTotal;
        rhythmIndicator.gameObject.SetActive(true);
    }

    public override void OnMouseExit()
    {
        base.OnMouseExit();
        rhythmIndicator.gameObject.SetActive(false);
    }

    //Switch Wind Direction
    public override void Selection_One()
    {
        base.Selection_One();

        windCircles.windSpeed *= -1;
        rotationSpeed *= -1;

        //plays dif sound and moves lever correctly
        if (dirPositive)
        {
            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(selectLower, 1f);
            dirLever.transform.localEulerAngles = new Vector3(0, 0, -60);
            dirPositive = false;
            //change NPC direction
                if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
                {
                    if(hornPlanter != null)
                    hornPlanter.walkingDirection = true;
                }
            
        }
        else
        {
            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(InteractSound, 1f);
            dirLever.transform.localEulerAngles = new Vector3(0, 0, 60);
            dirPositive = true;
            //change NPC direction
                if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
                {
                    if (hornPlanter != null)
                    hornPlanter.walkingDirection = false;
                  
                }
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
                PositiveRhythmIncrease();
            }
            else
            {
                NegativeRhythmIncrease();
            }


            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(InteractSound, 1f);
        }
        rhythmIndicator.speed += 0.25f;
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
                PositiveRhythmDecrease();
            }
            else
            {
                NegativeRhythmDecrease();
            }

            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(selectLower, 1f);
        }
        rhythmIndicator.speed -= 0.25f;
    }

    //These rhythm functions are stored separately because they can be called in dif. ways based on if dirPositive = true or not

    void PositiveRhythmIncrease()
    {
        windCircles.windSpeed += rhythmInterval;
        rotationSpeed += rhythmInterval;
        rhythmLever.transform.localEulerAngles -= new Vector3(0, 0, 30);

        //adjusts NPC circle men speeds
       
            if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
            {
                if (hornPlanter != null)
                {
                hornPlanter.navMeshAgent.speed += NPCspeedInterval;
                hornPlanter.animator.speed += animatorSpeedInterval;
                }
                   
            }
        
    }

    void NegativeRhythmIncrease()
    {
        windCircles.windSpeed -= rhythmInterval;
        rotationSpeed -= rhythmInterval;
        rhythmLever.transform.localEulerAngles -= new Vector3(0, 0, 30);

        if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
        {
            if (hornPlanter != null)
            {
                hornPlanter.navMeshAgent.speed += NPCspeedInterval;
                hornPlanter.animator.speed += animatorSpeedInterval;
            }

        }
    }

    void PositiveRhythmDecrease()
    {
        windCircles.windSpeed -= rhythmInterval;
        rotationSpeed -= rhythmInterval;
        rhythmLever.transform.localEulerAngles += new Vector3(0, 0, 30);

        //adjusts NPC circle men speeds
      
            if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
            {
                if (hornPlanter != null)
                {
                hornPlanter.navMeshAgent.speed -= NPCspeedInterval;
                hornPlanter.animator.speed -= animatorSpeedInterval;
                }
            }
    }

    void NegativeRhythmDecrease()
    {
        windCircles.windSpeed += rhythmInterval;
        rotationSpeed += rhythmInterval;
        rhythmLever.transform.localEulerAngles += new Vector3(0, 0, 30);

        //adjusts NPC circle men speeds

        if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
        {
            if (hornPlanter != null)
            {
                hornPlanter.navMeshAgent.speed -= NPCspeedInterval;
                hornPlanter.animator.speed -= animatorSpeedInterval;
            }
        }
    }

}
