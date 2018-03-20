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

    public bool isPlaying;

    private bool playedAudio, showRhythm;

    GameObject _player;

    public MusicType musicType;

    public enum MusicType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    public void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
        _player = GameObject.FindGameObjectWithTag("Player");

        //randomize clips at start
        currentPrimaryClip = Random.Range(0, primarySounds.Length);
        primarySource.clip = primarySounds[currentPrimaryClip];

        currentSecondaryClip = Random.Range(0, secondarySounds.Length);
        secondarySource.clip = secondarySounds[currentSecondaryClip];

        currentTertiaryClip = Random.Range(0, tertiarySounds.Length);
        tertiarySource.clip = tertiarySounds[currentTertiaryClip];

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
                secondarySource.PlayScheduled(SimpleClock.AtNextMeasure());
                break;
            case 1:
                primarySource.PlayScheduled(SimpleClock.AtNextQuarter());
                secondarySource.PlayScheduled(SimpleClock.AtNextHalf());
                tertiarySource.PlayScheduled(SimpleClock.AtNextQuarterTriplet());
                break;
            case 2:
                primarySource.PlayScheduled(SimpleClock.AtNextEighth());
                secondarySource.PlayScheduled(SimpleClock.AtNextQuarter());
                tertiarySource.PlayScheduled(SimpleClock.AtNextEighthTriplet());
                break;
            case 3:
                primarySource.PlayScheduled(SimpleClock.AtNextSixteenth());
                secondarySource.PlayScheduled(SimpleClock.AtNextEighth());
                tertiarySource.PlayScheduled(SimpleClock.AtNextSixteenthTriplet());
                break;
            case 4:
                primarySource.PlayScheduled(SimpleClock.AtNextThirtySecond());
                secondarySource.PlayScheduled(SimpleClock.AtNextEighth());
                break;
        }
    }

    //could easily make this a player command as well
    public IEnumerator ChangeNotes()
    {
            noteChangeCounter = 0;

            float randomChange = Random.Range(0f, 100f);
            if(randomChange < 60f) //decide method of changing note
            {
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
                    if (currentSecondaryClip > 0)
                        currentSecondaryClip--;
                    else
                    {
                        currentSecondaryClip = secondarySounds.Length - 1;
                    }
                    if (currentTertiaryClip > 0)
                        currentTertiaryClip--;
                    else
                    {
                        currentTertiaryClip = tertiarySounds.Length - 1;
                    }
                }
            }
            else
            {
                //randomize clips -- this should happen less often 
                currentPrimaryClip = Random.Range(0, primarySounds.Length);
                currentSecondaryClip = Random.Range(0, secondarySounds.Length);
                currentTertiaryClip = Random.Range(0, tertiarySounds.Length);
            }

            primarySource.clip = primarySounds[currentPrimaryClip];
        if (!secondarySource.isPlaying)
        {
            secondarySource.clip = secondarySounds[currentSecondaryClip];
        }
        else
        {
            yield return new WaitUntil(() => secondarySource.isPlaying == false);
            secondarySource.clip = secondarySounds[currentSecondaryClip];
        }
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
