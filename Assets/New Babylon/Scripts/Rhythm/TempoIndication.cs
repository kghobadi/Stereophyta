using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TempoIndication : RhythmProducer {

    //tempo indicator
    public SpriteRenderer tempoSR;
    Animator tempoIndicator;
    FadeSprite tempoFader;
    //for tempo indication 
    protected float disappearTimer, disappearTimerTotal = 1f;
    //change tempo particle
    public GameObject changeTempoObj;
    ParticleSystem changeTempoFx;
    public bool changedTempo;
    //audio
    public AudioClip changeTempoSound;

    public override void Awake()
    {
        base.Awake();
        
        tempoIndicator = tempoSR.GetComponent<Animator>();
        tempoFader = tempoSR.GetComponent<FadeSprite>();
        if (changeTempoObj != null)
        {
            changeTempoFx = changeTempoObj.GetComponent<ParticleSystem>();
        }
    }

    void Update () {

        //for tempo visual
        if (changedTempo)
        {
            disappearTimer -= Time.deltaTime;

            //fade out visual
            if (disappearTimer < 0)
            {
                tempoFader.FadeOut();
                changedTempo = false;
            }
        }
    }

    //called whenever tempo is changed;
    public void SetVisualTempo(int timescale)
    {
        tempoFader.FadeIn();

        tempoIndicator.SetInteger("Level", timescale);
        //particle fx
        if(changeTempoFx)
            changeTempoFx.Play();

        changedTempo = true;
        disappearTimer = disappearTimerTotal;

        //sound to indicate dif tempo
        if(changeTempoSound != null)
            myAudioSource.PlayOneShot(changeTempoSound);
    }
}
