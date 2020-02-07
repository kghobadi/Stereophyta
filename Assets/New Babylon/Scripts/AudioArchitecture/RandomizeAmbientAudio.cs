using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//This script has a number of funtions to create dynamic changes in Ambient audio
public class RandomizeAmbientAudio : AudioHandler {

    //sun ref
    Sun sun;
    [Header("Ambient Audio")]
    public AudioClip[] ambientSounds;
    public AudioClip currentClip;
    public bool randomizeOnStart = true;

    [Tooltip("Active Times of Day")]
    public List< Sun.TimeState> activeTimeStates = new List<Sun.TimeState>();

    public override void Awake()
    {
        base.Awake();
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
    }

    void Start()
    {
        //SUN EVENT LISTENER
        sun.newDay.AddListener(DayPass);
        //random start
        if (randomizeOnStart)
        {
            RandomAmbientSound();
        }
    }

    void Update()
    {
        CheckTimeState();
    }

    void CheckTimeState()
    {
        //if the current time state is marked active 
        if (activeTimeStates.Contains(sun.timeState))
        {
            //if audio is not playing, play
            if (myAudioSource.isPlaying == false)
            {
                myAudioSource.Play();
            }
        }
        //current time state is inactive
        else
        {
            //if audio is playing, stop
            if (myAudioSource.isPlaying)
            {
                myAudioSource.Stop();
            }
        }
    }

    //called when sun invokes NewDay()
    public void DayPass()
    {
        RandomAmbientSound();
    }

    public  void RandomAmbientSound()
    {
        //set ocean source
        AudioClip randomSound = ambientSounds[Random.Range(0, ambientSounds.Length)];
        SetAmbentSound(randomSound);
    }

    public void SetAmbentSound(AudioClip clipy)
    {
        myAudioSource.Stop();
        myAudioSource.clip = clipy;
        myAudioSource.Play();
        currentClip = clipy;
    }
}
