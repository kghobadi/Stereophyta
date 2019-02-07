using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AncientTree : MonoBehaviour {

    AudioSource treeHum;
    public AudioClip[] ambiences;

    public void Start()
    {
        treeHum = GetComponent<AudioSource>();
    }

    public void PlaySound()
    {
        if (!treeHum.isPlaying)
        {
            int randomAmbience = Random.Range(0, ambiences.Length);
            treeHum.PlayOneShot(ambiences[randomAmbience]);
        }
    }
}
