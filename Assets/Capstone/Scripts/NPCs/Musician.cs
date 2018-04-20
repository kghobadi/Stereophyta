using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Musician : MonoBehaviour {
    //sound clip arrays 
    public AudioClip[] primarySounds, secondarySounds, tertiarySounds;
    //audio sources
    public AudioSource primarySource, secondarySource, tertiarySource;
    //determines tempo for note groups
    public int primaryTempo/*, secondaryTempo, tertiaryTempo*/;
    //current clips
    public int currentPrimaryClip, currentSecondaryClip, currentTertiaryClip;

    //used to switch out clips every so often
    public int noteChangeFrequency, noteChangeCounter;

    //bool states 
    public bool isPlaying, hasSecondary, hasTertiary, playedAudio, showRhythm;

    GameObject _player;
    ThirdPersonController tpc;

    int enabledCounter = 0; // used to count # of enables

    public MusicType musicType;

    //for seed container and whatnot
    public Transform seedPack;
    public List<Transform> seedSpots = new List<Transform>();

    public enum MusicType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    public void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();

        //randomize clips at start
        currentPrimaryClip = Random.Range(0, primarySounds.Length);
        primarySource.clip = primarySounds[currentPrimaryClip];

        if (hasSecondary)
        {
            currentSecondaryClip = Random.Range(0, secondarySounds.Length);
            secondarySource.clip = secondarySounds[currentSecondaryClip];
        }

        if (hasTertiary)
        {
            currentTertiaryClip = Random.Range(0, tertiarySounds.Length);
            tertiarySource.clip = tertiarySounds[currentTertiaryClip];
        }

        //set up seed pack
        for (int i = 0; i < seedPack.childCount; i++)
        {
            seedSpots.Add(seedPack.GetChild(i));
        }

        //start tempo at random interval
        primaryTempo = Random.Range(0, 5);
        noteChangeCounter = 0;
    }

    public void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public void OnThirtySecond(BeatArgs e)
    {
        switch (primaryTempo)
        {
            case 0:
                if (e.TickMask[TickValue.Half])
                {
                    noteChangeCounter++;
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 1:
                if (e.TickMask[TickValue.Quarter])
                {
                    noteChangeCounter++;
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 2:
                if (e.TickMask[TickValue.Eighth])
                {
                    noteChangeCounter++;
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 3:
                if (e.TickMask[TickValue.Sixteenth])
                {
                    noteChangeCounter++;
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 4:
                if (e.TickMask[TickValue.ThirtySecond])
                {
                    noteChangeCounter++;
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
        }

    }
    
    void Update()
    {
        if (isPlaying && Vector3.Distance(transform.position, _player.transform.position) < 100)
        {
            primarySource.outputAudioMixerGroup = tpc.plantingGroup;
            if (hasSecondary)
                secondarySource.outputAudioMixerGroup = tpc.plantingGroup;
            if (hasTertiary)
                tertiarySource.outputAudioMixerGroup = tpc.plantingGroup;

            PlayInstrument();
        }


    }

    public void PlayInstrument()
    {
        if (!playedAudio)
        {
            PlayNote();
            playedAudio = true;
        }
        else
        {
            if (!primarySource.isPlaying)
            {
                if (noteChangeCounter >= noteChangeFrequency)
                {
                    StartCoroutine(ChangeNotes());
                }
                PlayNote();
                playedAudio = false;

            }
        }
    }

    public void PlayNote()
    {
        switch (primaryTempo)
        {
            case 0:
                primarySource.PlayScheduled(SimpleClock.AtNextHalf());
                if(hasSecondary)
                    secondarySource.PlayScheduled(SimpleClock.AtNextMeasure());
                break;
            case 1:
                primarySource.PlayScheduled(SimpleClock.AtNextQuarter());
                if (hasSecondary)
                    secondarySource.PlayScheduled(SimpleClock.AtNextHalf());
                if(hasTertiary)
                    tertiarySource.PlayScheduled(SimpleClock.AtNextQuarterTriplet());
                break;
            case 2:
                primarySource.PlayScheduled(SimpleClock.AtNextEighth());
                if (hasSecondary)
                    secondarySource.PlayScheduled(SimpleClock.AtNextQuarter());
                if (hasTertiary)
                    tertiarySource.PlayScheduled(SimpleClock.AtNextEighthTriplet());
                break;
            case 3:
                primarySource.PlayScheduled(SimpleClock.AtNextSixteenth());
                if (hasSecondary)
                    secondarySource.PlayScheduled(SimpleClock.AtNextEighth());
                if (hasTertiary)
                    tertiarySource.PlayScheduled(SimpleClock.AtNextSixteenthTriplet());
                break;
            case 4:
                primarySource.PlayScheduled(SimpleClock.AtNextThirtySecond());
                if (hasSecondary)
                    secondarySource.PlayScheduled(SimpleClock.AtNextEighth());
                break;
        }
    }

    //could easily make this a player command as well
    public IEnumerator ChangeNotes()
    {
            noteChangeCounter = 0;

           
                //either go up the scale or down
                float randomChance = Random.Range(0f, 100f);
                if(randomChance < 50f)
                {
                    //descend scale if we can, otherwise jump to the top
                    if(currentPrimaryClip > 0)
                        currentPrimaryClip--;
                    else
                    {
                        currentPrimaryClip = primarySounds.Length - 1;
                    }
            if (hasSecondary)
            {
                if (currentSecondaryClip > 0)
                    currentSecondaryClip--;
                else
                {
                    currentSecondaryClip = secondarySounds.Length - 1;
                }
            }  
            if (hasTertiary)
            {
                if (currentTertiaryClip > 0)
                    currentTertiaryClip--;
                else
                {
                    currentTertiaryClip = tertiarySounds.Length - 1;
                }
            }
               
        }
        primarySource.clip = primarySounds[currentPrimaryClip];
        if (hasSecondary)
        {
            if (!secondarySource.isPlaying)
            {
                secondarySource.clip = secondarySounds[currentSecondaryClip];
            }
            else
            {
                yield return new WaitUntil(() => secondarySource.isPlaying == false);
                secondarySource.clip = secondarySounds[currentSecondaryClip];
            }
        }
        if (hasTertiary)
        {
            if (!tertiarySource.isPlaying)
            {
                tertiarySource.clip = tertiarySounds[currentTertiaryClip];
            }
            else
            {
                yield return new WaitUntil(() => tertiarySource.isPlaying == false);
                tertiarySource.clip = tertiarySounds[currentTertiaryClip];
            }
        }
    }

    public void OnEnable()
    {
        enabledCounter++;
        if (enabledCounter > 1)
        {
            Awake();
        }
        //specify this in whichever objects need it
    }

}
