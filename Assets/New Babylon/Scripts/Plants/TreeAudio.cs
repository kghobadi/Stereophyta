using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TreeAudio : AudioHandler {
    //player ref
    GameObject player;

    [Header("Stored Audio")]
    public AudioClip[] treeSounds;
    public AudioMixerGroup treeMixerGroup;
    public bool randomPitch;

    [Header("Audio Frequency")]
    public float treeNoteTimer;
    public float treeNoteTimerTotal, randomTimeMin, randomTimeMax;

    //just an effect to show sound is playing
    public ParticleSystem [] ribbons;

    public TreeType treeSpecie;
    public enum TreeType
    {
        SPRITE, GARANGULA, STALNIK, PALM,
    }

	public override void Awake () {
        base.Awake();
        player = GameObject.FindGameObjectWithTag("Player");
	}

    void Start()
    {
        int randomSound = Random.Range(0, treeSounds.Length);
        myAudioSource.clip = treeSounds[randomSound];
        myAudioSource.outputAudioMixerGroup = treeMixerGroup;
        treeNoteTimer = Random.Range(0.5f, randomTimeMax);
    }

    void Update () {
        //check distance from player
		if(Vector3.Distance(transform.position, player.transform.position) < (myAudioSource.maxDistance))
        {
            treeNoteTimer -= Time.deltaTime;

            //time to make a sound -- also not already playing 
            if (treeNoteTimer < 0 && !myAudioSource.isPlaying)
            {
                //play sound
                if(randomPitch)
                    PlayRandomSoundRandomPitch(treeSounds, myAudioSource.volume);
                else
                    PlayRandomSound(treeSounds, myAudioSource.volume);

                //reset sound timer 
                treeNoteTimer = treeNoteTimerTotal + Random.Range(randomTimeMin, randomTimeMax);
            }
        }
        //stop audio when out of range
        else
        {
            if (myAudioSource.isPlaying)
                myAudioSource.Stop();
        }

        CheckRibbons();
	}

    //plays ribbon particles 
    void CheckRibbons()
    {
        //tree particles
        if (myAudioSource.isPlaying)
        {
            if (ribbons.Length > 0)
            {
                if (ribbons[0].isPlaying == false)
                {
                    for (int i = 0; i < ribbons.Length; i++)
                        ribbons[i].Play();
                }
            }

        }
        //turn off particles
        else
        {
            if (ribbons.Length > 0)
            {
                if (ribbons[0].isPlaying)
                {
                    for (int i = 0; i < ribbons.Length; i++)
                        ribbons[i].Stop();
                }
            }
        }
    }
    
}
