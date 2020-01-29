using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TreeAudio : MonoBehaviour {
    //player ref
    GameObject player;
    //aud source ref
    [HideInInspector]
    public AudioSource treeAudio;

    [Header("Stored Audio")]
    public AudioClip[] treeSounds;
    public AudioMixerGroup treeMixerGroup;

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

	void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        treeAudio = GetComponent<AudioSource>();
      
	}

    void Start()
    {
        int randomSound = Random.Range(0, treeSounds.Length);
        treeAudio.clip = treeSounds[randomSound];
        treeAudio.outputAudioMixerGroup = treeMixerGroup;
        treeNoteTimer = Random.Range(0.5f, randomTimeMax);
    }

    void Update () {
        //check distance from player
		if(Vector3.Distance(transform.position, player.transform.position) < (treeAudio.maxDistance))
        {
            treeNoteTimer -= Time.deltaTime;

            //time to make a sound -- also not already playing 
            if (treeNoteTimer < 0 && !treeAudio.isPlaying)
            {
                //play sound
                PlayRandomSound();

                //reset sound timer 
                treeNoteTimer = treeNoteTimerTotal + Random.Range(randomTimeMin, randomTimeMax);
            }
        }
        //stop audio when out of range
        else
        {
            if (treeAudio.isPlaying)
                treeAudio.Stop();
        }

        CheckRibbons();
	}

    //plays ribbon particles 
    void CheckRibbons()
    {
        //tree particles
        if (treeAudio.isPlaying)
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

    public void PlayRandomSound()
    {
        //select random sound 
        int randomNote = Random.Range(0, treeSounds.Length);
        treeAudio.PlayOneShot(treeSounds[randomNote]);
    }
}
