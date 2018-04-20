﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PianoPlant : SoundProducer {

    public GameObject fruitSeed;
    GameObject fruitSeedClone;

    public ParticleSystem poofParticles;
    
    public float waitPullFruit, pullMin, pullMax, pullDistance;
    Vector3 startingMousePos, releaseMousePos;

    public override void Start () {
        //this comes before base.Start() for sound sources 
        particleCount = 2;
        base.Start();
        poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        poofParticles.Stop();

        soundSources [currentNote].GetComponent<Animator> ().SetBool ("grown", true);
        notesPlaying.transform.position = soundSources[currentNote].transform.position;
        
    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        tpc.blubAnimator.Play("ListenToPlant", 0);
      
        
    }

    public override void OnMouseOver()
    {
        if (interactable)
        {
            base.OnMouseOver();
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            
        }
        
    }

    //Take Fruit Seed
    public override void Selection_One()
    {
        soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        soundSources[currentNote].SetActive(false);

        //instantiate seed and add it to player seed line
        fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
        fruitSeedClone.GetComponent<fruitSeedNoInv>().pickedByPlayer = true;
        fruitSeedClone.GetComponent<fruitSeedNoInv>().plantNote = musicalNotes[currentNote];

        //checks if all seeds are gone. if so, destroy, otherwise randomly shift notes
        int seedsGone = 0;
        for (int i = 0; i < soundSources.Count; i++)
        {
            if (!soundSources[i].activeSelf)
            {
                seedsGone++;
            }
        }
        if (seedsGone == soundSources.Count)
        {
            poofParticles.Play();
            DeactivateSelectionMenu();
            Destroy(gameObject);
        }
        else
        {
            //shiftnoteup or shiftnotedown
            float randomShift = Random.Range(0f, 100f);
            if (randomShift < 50f)
            {
                //down
                Selection_Two();
            }
            else
            {
                //up
                Selection_Three();
            }
        }

    }

    //shift note down
    public override void Selection_Two()
    {
            base.Selection_One();
        
    }

    //shift note up
    public override void Selection_Three()
    {
       
            base.Selection_Two();
        
    }

    public void PlaySound()
    {
        if (!audioSource.isPlaying)
        {
            audioSource.PlayOneShot(currentSound);
            soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
            if (notesPlaying != null)
                notesPlaying.Emit(10);
        }
    }

   
    
    public override void OnEnable()
    {
        base.OnEnable();
        if(enabledCounter > 1)
        {
            Start();
        }
    }
}
