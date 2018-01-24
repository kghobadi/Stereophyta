using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Computer : Interactable {


    loadAudioClips recorder;
    AudioSource aSource;


    public override void Start()
    {
        base.Start();

        recorder = GameObject.Find("RecordingDevice").GetComponent<loadAudioClips>();
        aSource = GetComponent<AudioSource>();
    }

    public override void handleClickSuccess()
    {
        //Picks up seed
        if (!fpc.isHoldingSeed)
        {
            base.handleClickSuccess();
            Debug.Log("yes");

            if(recorder.recordedFiles != null){
                aSource.clip = recorder.recordedFiles;
                aSource.Play();
            }else
                Debug.Log("no recording to play");
            interactable = true;
        }
    }


    void Update()
    {
       


    }

    
}
