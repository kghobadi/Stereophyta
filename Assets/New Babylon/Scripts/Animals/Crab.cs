using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class Crab : AnimalAI {

    //if a crab runs into another crab, should have a claw fight
    public float interruptedTimer, interruptedTimeTotal ;
    Vector3 interruptedPos;
    //crab can be knocked over by player's jump

    //crabs fall asleep at night 

    public override void Update()
    {
        base.Update();

        //resets to idle after interrupted 
        if(animalState == AnimalAIStates.INTERRUPTED)
        {
            transform.position = interruptedPos;
            interruptedTimer -= Time.deltaTime;
            if(interruptedTimer < 0)
            {
                SetIdle();
            }
        }
        
    }

    //when collide with player
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == player)
        {
            //only interrupt if the crab is not sleeping 
            if (animalState != AnimalAIStates.SLEEPING)
            {
                Interrupt();   
            }
        }
    }

    //can be called from other things
    public void Interrupt()
    {
        animalState = AnimalAIStates.INTERRUPTED;
        animator.SetTrigger("fall");
        myAudioSource.Stop();
        interruptedPos = transform.position;
        origPosition = interruptedPos;
        PlaySound(interruptSound, 1f);
        myNavMesh.isStopped = true;
        myNavMesh.velocity = Vector3.zero;
        interruptedTimer = interruptedTimeTotal;
       
    }
}
