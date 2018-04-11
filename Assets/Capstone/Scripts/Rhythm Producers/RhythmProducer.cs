using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class RhythmProducer : Interactable {
    public AudioClip[] basicBeats;
    protected AudioSource beatSource;

    protected bool playedAudio, showRhythm;

    public int timeScale;

    public virtual void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;

        //interact sprites
        for (int i = 1; i < 4; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/machine " + i));
        }
    }

    public virtual void OnDestroy()
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
    // Update is called once per frame
    public override void Update () {
        base.Update();
        //may need to qualify this with and if statement in override
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
        switch (timeScale)
        {
            case 0:
                beatSource.PlayScheduled(SimpleClock.AtNextMeasure());
                break;
            case 1:
                beatSource.PlayScheduled(SimpleClock.AtNextQuarter());
                break;
            case 2:
                beatSource.PlayScheduled(SimpleClock.AtNextEighth());
                break;
            case 3:
                beatSource.PlayScheduled(SimpleClock.AtNextSixteenth());
                break;
            case 4:
                beatSource.PlayScheduled(SimpleClock.AtNextThirtySecond());
                break;
        }
    }
}
