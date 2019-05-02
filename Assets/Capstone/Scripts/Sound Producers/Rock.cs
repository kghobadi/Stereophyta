﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rock : SoundProducer
{
    //not in use yet
    //public GameObject crystal;
    GameObject crystalClone;
    public bool partOfDrumSet;
    public Transform drumSetPos;
    Transform originalRockParent, originalTranParent;
    int transformIndex;
    public NPCDrummer myDrummer;

    public override void Start()
    {
        particleCount = 1;
        base.Start();


        //increase scale of soundSource
        soundSources[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = soundSources[currentNote].transform.position;


    }

    public override void Update()
    {
        base.Update();

        //stop moving rock
        if (playerHolding)
        {
            //audioSource.outputAudioMixerGroup = tpc.plantingGroup;
            //tpc.currentSpeed = 5;
            if (Input.GetMouseButtonDown(1))
            {
                DropObject();
            }
        }
    }

    public void PlaySound()
    {
        if (!audioSource.isPlaying)
        {
            audioSource.PlayOneShot(currentSound);
            //animation!
            notesPlaying.Play();
        }

    }

    public override void Selection_One()
    {
        playerHolding = true;

        //not part of drumset
        if (!partOfDrumSet)
        {
            //let player drag it 
            transform.SetParent(_player.transform);
        }
        else
        {
            //player can drag it but we also have to change position of parent transform
            originalTranParent = drumSetPos.parent;
            originalRockParent = transform.parent;
            drumSetPos.SetParent(_player.transform);
            transform.SetParent(drumSetPos);
            transform.localPosition = Vector3.zero;
            drumSetPos.localPosition = new Vector3(0, -0.5f, 2.75f);
        }

        DeactivateSelectionMenu();

        //tpc.isHoldingSomething = true;
        //tpc.canUseSeed = false;
        playerHolding = true;
        interactable = false;
    }

    //shift note up
    public override void Selection_Two()
    {
        //shift note up stored in selection one
        soundSources[currentNote].transform.localScale *= 0.5f;
        base.Selection_One();
        soundSources[currentNote].transform.localScale *= 2;
    }

    //shift note down
    public override void Selection_Three()
    {
        //shift note down stored in selection two
        soundSources[currentNote].transform.localScale *= 0.5f;
        base.Selection_Two();
        soundSources[currentNote].transform.localScale *= 2;
    }



    //Called when player is holding the windMachine and right clicks to drop
    public void DropObject()
    {
        //not part of drumset
        if (!partOfDrumSet)
        {
            //stop dragging it
            transform.SetParent(null);
        }
        else
        {
            //set parent back to drumContainer
            drumSetPos.SetParent(originalTranParent);
            transform.SetParent(originalRockParent);
            transform.Translate(0, -1, 0);
        }

        //tpc.canUseSeed = true;
        //tpc.isHoldingSomething = false;
        playerHolding = false;
        interactable = true;
    }

    public override void OnDisable()
    {
        base.OnDisable();

        //increase scale of soundSource
        soundSources[currentNote].transform.localScale *= 0.5f;
    }

}