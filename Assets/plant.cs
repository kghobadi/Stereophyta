﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class plant : Interactable {
    //should always have same number of musical notes as tubules
    public AudioClip[] musicalNotes;
    public List<GameObject> branches = new List<GameObject>();
    int currentNote;
    AudioClip currentSound;
    AudioSource plantAudio;

    ParticleSystem notesPlaying;
    public AudioClip lowerSound;

	public override void Start () {
        base.Start();
        interactable = true; //when should it be interactable? after # branches > 1
        plantAudio = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(0).GetComponent<ParticleSystem>() ; //grabs particle system
        notesPlaying.Stop();

        //counts up through plant children, adding these to the list of Branches for later.
        if(transform.childCount > 1)
        {
            for (int i = 1; i < (transform.childCount); i++)
            {
                branches.Add(transform.GetChild(i).gameObject); //Going to be adding these one at a time in GrowPlant
            }
        }

        currentNote = Random.Range(0, musicalNotes.Length);
        currentSound = musicalNotes[currentNote]; //randomize note at start
        branches[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = branches[currentNote].transform.position;
    }

    public override void OnMouseOver()
    {
        if (interactable)
        {
            base.OnMouseOver();
            if (Input.GetMouseButtonDown(1))
            {
                branches[currentNote].transform.localScale *= 0.5f;

                if (currentNote > 0)
                {
                    currentNote--;
                }
                else
                {
                    currentNote = musicalNotes.Length - 1;
                }
                // chooses new note and enlarges tubule
                currentSound = musicalNotes[currentNote];
                branches[currentNote].transform.localScale *= 2;
                notesPlaying.transform.position = branches[currentNote].transform.position;
                soundBoard.PlayOneShot(lowerSound);

            }
        }
        
    }

    public override void handleClickSuccess()
    {
        if (interactable)
        {
            base.handleClickSuccess();
            //shrinks current tubule
            branches[currentNote].transform.localScale *= 0.5f;

            if (currentNote < (musicalNotes.Length - 1))
            {
                currentNote++;
            }
            else
            {
                currentNote = 0;
            }
            // chooses new note and enlarges tubule
            currentSound = musicalNotes[currentNote];
            branches[currentNote].transform.localScale *= 2;
            notesPlaying.transform.position = branches[currentNote].transform.position;
            Debug.Log(currentNote);
        }
    }

    void Update()
    {
        if (plantAudio.isPlaying)
        {
            notesPlaying.Emit(1);
        }
        if(Vector3.Distance(transform.position, _player.transform.position) > plantAudio.maxDistance + 10)
        {
            plantAudio.Stop();
        }
    }

    public void PlaySound()
    {
        if (!plantAudio.isPlaying )
            plantAudio.PlayOneShot(currentSound);
    }
}
