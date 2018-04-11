using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rock : SoundProducer {
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

    //public override void OnMouseEnter()
    //{
    //    base.OnMouseEnter();
    //    //tpc.blubAnimator.Play("ListenToPlant", 0);
    //}

    //public override void OnMouseOver()
    //{
    //    if (interactable && !lerpingColor )
    //    {
    //        base.OnMouseOver();
    //        _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            
    //    }
        
    //}

    //public override void Selection_Three()
    //{
    //    base.Selection_Three();

    //}

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

    public override void OnEnable()
    {
        base.OnEnable();
        if (enabledCounter > 1)
        {
            Start();
        }
    }

}
