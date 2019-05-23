using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloudGenerator : RhythmProducer
{

    public GameObject cloud;
    GameObject cloudClone;

    public float cloudSpeed;
    public float distanceToDestroy;

    public int cloudCounter = 0;

    public override void Awake()
    {
        base.Awake();

        SwitchTimeScale(); 
    }

    public override void Update()
    {
        //rhythm true from clock
        if (showRhythm)
        {
            //to help trim down cloud count
            if(cloudCounter < 4)
            {
                cloudCounter++;
            }
            else
            {
                cloudCounter = 0;

                cloudClone = Instantiate(cloud, transform.position, Quaternion.Euler(transform.eulerAngles));
                cloudClone.GetComponent<RainCloud>()._cloudGen = this;
                cloudClone.GetComponent<RainCloud>().timeScale = timeScale;
            }
           
            showRhythm = false;
        }

    }

    public override void SwitchTimeScale()
    {
        base.SwitchTimeScale();

        switch (timeScale)
        {
            case 0:
                cloudSpeed = 2.5f;
                break;
            case 1:
                cloudSpeed = 5f;
                break;
            case 2:
                cloudSpeed = 10f;
                break;
            case 3:
                cloudSpeed = 20f;
                break;
            case 4:
                cloudSpeed = 40f;
                break;
        }
    }
}
