using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class Deer : AnimalAI
{

    //if a crab runs into another crab, should have a claw fight
    public float interruptedTimer, interruptedTimeTotal;
    Vector3 interruptedPos;
    public ParticleSystem sleepParticles;
    //crab can be knocked over by player's jump

    //crabs fall asleep at night 

    public override void Update()
    {
        base.Update();

        //activate & deactivate sleep particles 
        if(animalState == AnimalAIStates.SLEEPING)
        {
            if(sleepParticles.isPlaying == false)
            {
                sleepParticles.Play();
            }
        }
        else
        {
            if (sleepParticles.isPlaying == true)
            {
                sleepParticles.Stop();
            }
        }
    }

    //when collide with player
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == player)
        {
            
        }
    }

    //can be called from other things
    public void Interrupt()
    {
        myAudioSource.Stop();
        PlaySound(interruptSound, 1f);
    }
}
