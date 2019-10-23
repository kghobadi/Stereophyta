﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class RhythmProducer : AudioHandler {
    protected Sun sunScript;
    protected GameObject player;
    protected ThirdPersonController tpc;
    
    [HideInInspector]
    public bool showRhythm;

    public int timeScale;

    protected int lastBPM;

    public override void Awake()
    {
        base.Awake();
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
    
}
