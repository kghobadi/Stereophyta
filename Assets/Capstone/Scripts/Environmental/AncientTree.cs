using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AncientTree : Interactable {

    AudioSource treeHum;
    public AudioClip[] ambiences;

    public override void Start()
    {
        base.Start();
        treeHum = GetComponent<AudioSource>();
        interactable = false;
        int randomAmbience = Random.Range(0, ambiences.Length);
        treeHum.clip = ambiences[randomAmbience];
        int randomPlay = Random.Range(0, 100);
        if(randomPlay < 25)
            treeHum.Play();
    }
}
