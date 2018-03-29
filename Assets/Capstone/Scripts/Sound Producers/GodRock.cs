using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodRock : GodSoundCreator {
    //not in use yet
    //public GameObject crystal;
    GameObject crystalClone;
    
    //public float waitPullCrystal, pullMin, pullMax, pullDistance;
    Vector3 startingMousePos, releaseMousePos;

    public override void Start()
    {
        particleCount = 1;
        base.Start();

        //increase scale of soundSource
        soundSources[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = soundSources[currentNote].transform.position;
    }

    public void PlaySound()
    {
        if (/*!plantAudio.isPlaying &&*/ !scalingUp && !scalingDown)
        {
            audioSource.PlayOneShot(currentSound);
            scalingUp = true;
        }
        else
        {
            if (!audioSource.isPlaying)
            {
                audioSource.PlayOneShot(currentSound);
                notesPlaying.Play();
            }
        }
        
    }
}
