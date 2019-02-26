using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class Crab : AnimalAI {

    //if a crab runs into another crab, should have a claw fight
    public float desiredPitch, originalPitch =1;



    public override void Update()
    {
        base.Update();

        if(Vector3.Distance(transform.position, origPosition) > 75)
        {
            transform.position = origPosition;
            StopMoving();
        }

        //if (isRunning)
        //{
        //    animalAudio.pitch = desiredPitch;
        //}
        //else
        //{
        //    animalAudio.pitch = originalPitch;
        //}
    }
}
