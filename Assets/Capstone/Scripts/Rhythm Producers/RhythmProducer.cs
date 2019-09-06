using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class RhythmProducer : MonoBehaviour {
    protected Sun sunScript;
    protected GameObject player;
    protected ThirdPersonController tpc;

    public AudioClip[] basicBeats;
    protected AudioSource beatSource;
    
    protected bool playedAudio, showRhythm;

    public int timeScale;

    protected float disappearTimer, disappearTimerTotal = 1f;

    protected int lastBPM;

    public virtual void Awake()
    {
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    public virtual void OnEnable()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
    }

    public virtual void OnDisable()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public virtual void OnThirtySecond(BeatArgs e)
    {
        switch (timeScale)
        {
            case 0:
                if (e.TickMask[TickValue.Measure])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 1:
                if (e.TickMask[TickValue.Quarter])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 2:
                if (e.TickMask[TickValue.Eighth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 3:
                if (e.TickMask[TickValue.Sixteenth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 4:
                if (e.TickMask[TickValue.ThirtySecond])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
        }

    }
    
    public virtual void Update () {
        AudioRhythm();
    }


    public virtual void AudioRhythm()
    {
        if (!playedAudio)
        {
            SwitchTimeScale();
            playedAudio = true;
        }
        else
        {
            if (!beatSource.isPlaying)
            {
                SwitchTimeScale();
                playedAudio = false;

            }
        }
    }

    public virtual void SwitchTimeScale()
    {
        //rhythmIndicator.SetInteger("Level", timeScale);
        //switch (timeScale)
        //{
        //    case 0:
        //        beatSource.PlayScheduled(SimpleClock.AtNextMeasure());
        //        break;
        //    case 1:
        //        beatSource.PlayScheduled(SimpleClock.AtNextQuarter());
        //        break;
        //    case 2:
        //        beatSource.PlayScheduled(SimpleClock.AtNextEighth());
        //        break;
        //    case 3:
        //        beatSource.PlayScheduled(SimpleClock.AtNextSixteenth());
        //        break;
        //    case 4:
        //        beatSource.PlayScheduled(SimpleClock.AtNextThirtySecond());
        //        break;
        //}
    }
}
