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
    public GameObject hornPlanter;

    //rhythm vars
    public int rhythmState, rhythmStateMax;
    public float rhythmInterval, turbineInterval, NPCspeedInterval, animatorSpeedInterval, NPCLookInterval, windRadius;

    //actual wind which rotates around mill
    CircleWind windCircles;

    //lowering sound
    AudioSource controlsAudio;
    public AudioClip selectLower;

    Vector3 zoomedOutPosO, zoomedOutRotO;

    //direction lever boolean (starts as 'positive')
    public bool dirPositive = true;

    public override void Start()
    {
        base.Start();
        interactable = true;

        controlsAudio = GetComponent<AudioSource>();
        zoomedOutPosO = cammy.GetComponent<CameraController>().zoomedOutPos;
        zoomedOutRotO = cammy.GetComponent<CameraController>().zoomedOutRot;

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
    }

    public override void Update()
    {
        base.Update();

        if(Vector3.Distance(_player.transform.position, transform.position) < 30)
        {
            cammy.GetComponent<CameraController>().zoomedOutPos = new Vector3(-10, 30, -10);
            cammy.GetComponent<CameraController>().zoomedOutRot = new Vector3(65, 45, 0);
        }
        else
        {
            cammy.GetComponent<CameraController>().zoomedOutPos = zoomedOutPosO;
            cammy.GetComponent<CameraController>().zoomedOutRot = zoomedOutRotO;
        }

        //rotates the wind turbine
        windTurbine.transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
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
                controlsAudio.PlayOneShot(selectLower);
            dirLever.transform.localEulerAngles = new Vector3(0, -30, 0);
            dirPositive = false;
            //change NPC direction
                if (Vector3.Distance(hornPlanter.transform.position, transform.position) < windRadius)
                {
                    if(hornPlanter != null)
                    hornPlanter.GetComponent<HornNPC>().walkingDirection = false;
                }
            
        }
        else
        {
            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(InteractSound);
            dirLever.transform.localEulerAngles = new Vector3(0, 30, 0);
            dirPositive = true;
            //change NPC direction
                if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
                {
                    if (hornPlanter != null)
                    hornPlanter.GetComponent<HornNPC>().walkingDirection = true;
                  
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
                controlsAudio.PlayOneShot(InteractSound);
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
                PositiveRhythmDecrease();
            }
            else
            {
                NegativeRhythmDecrease();
            }

            if (!controlsAudio.isPlaying)
                controlsAudio.PlayOneShot(selectLower);
        }
    }

    //These rhythm functions are stored separately because they can be called in dif. ways based on if dirPositive = true or not

    void PositiveRhythmIncrease()
    {
        windCircles.windSpeed += rhythmInterval;
        rotationSpeed += rhythmInterval;
        rhythmLever.transform.localEulerAngles += new Vector3(30, 0, 0);

        //adjusts NPC circle men speeds
       
            if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
            {
                if (hornPlanter != null)
                {
                hornPlanter.GetComponent<HornNPC>().navMeshAgent.speed += NPCspeedInterval;
                hornPlanter.GetComponent<HornNPC>().animator.speed += animatorSpeedInterval;
                }
                   
            }
        
    }

    void NegativeRhythmIncrease()
    {
        windCircles.windSpeed -= rhythmInterval;
        rotationSpeed -= rhythmInterval;
        rhythmLever.transform.localEulerAngles += new Vector3(30, 0, 0);

        if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
        {
            if (hornPlanter != null)
            {
                hornPlanter.GetComponent<HornNPC>().navMeshAgent.speed += NPCspeedInterval;
                hornPlanter.GetComponent<HornNPC>().animator.speed += animatorSpeedInterval;
            }

        }
    }

    void PositiveRhythmDecrease()
    {
        windCircles.windSpeed -= rhythmInterval;
        rotationSpeed -= rhythmInterval;
        rhythmLever.transform.localEulerAngles -= new Vector3(30, 0, 0);

        //adjusts NPC circle men speeds
      
            if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
            {
                if (hornPlanter != null)
                {
                hornPlanter.GetComponent<HornNPC>().navMeshAgent.speed -= NPCspeedInterval;
                hornPlanter.GetComponent<HornNPC>().animator.speed -= animatorSpeedInterval;
                }
            }
    }

    void NegativeRhythmDecrease()
    {
        windCircles.windSpeed += rhythmInterval;
        rotationSpeed += rhythmInterval;
        rhythmLever.transform.localEulerAngles -= new Vector3(30, 0, 0);

        //adjusts NPC circle men speeds

        if (Vector3.Distance(hornPlanter.gameObject.transform.position, transform.position) < windRadius)
        {
            if (hornPlanter != null)
            {
                hornPlanter.GetComponent<HornNPC>().navMeshAgent.speed -= NPCspeedInterval;
                hornPlanter.GetComponent<HornNPC>().animator.speed -= animatorSpeedInterval;
            }
        }
    }

}
