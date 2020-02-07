using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicFader : MonoBehaviour {
    AudioSource musicSource;
    public bool fadingVolOut, fadingVolIn;
    public AudioClip musicTrack;

    public float fadeSpeed = 1f;
    public float fadeInAmount;
    public float fadeOutAmount;

    public bool switchingSound;
    
    void Awake () {
        musicSource = GetComponent<AudioSource>();
    }
	
	void Update () {
        if (fadingVolOut)
        {
            musicSource.volume -= Time.deltaTime * fadeSpeed;

            if (musicSource.volume <= 0)
            {
                fadingVolOut = false;
                //set fade in to new sound
                if (switchingSound)
                {
                    SetSound(musicTrack);
                    FadeIn(fadeInAmount);
                }
            }
        }

        if (fadingVolIn)
        {
            musicSource.volume += Time.deltaTime * fadeSpeed;

            if (musicSource.volume >= fadeInAmount)
            {
                fadingVolIn = false;
            }
        }
    }


    public void SetSound(AudioClip track)
    {
        musicSource.Stop();
        musicSource.clip = track;
        musicSource.Play();
    }

    //takes any clip we want to fade to
    public void FadeTo(AudioClip nextTrack)
    {
        musicTrack = nextTrack;
        FadeIn(fadeInAmount);
    }

    //starts fade in to specified amount  
    public void FadeIn(float fadeIn)
    {
        fadeInAmount = fadeIn;
        fadingVolIn = true;
    }

    //fades out to specified amount  
    public void FadeOut(float fadeOut)
    {
        fadeOutAmount = fadeOut;
        fadingVolOut = true;
    }
}
