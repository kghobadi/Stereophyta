using UnityEngine;
using System;
using UnityEngine.Audio;
using System.Collections.Generic;

public class AudioManager : MonoBehaviour {

    AudioObjectPool AOP;
    public Sound[] sounds;
    //for looking up sounds by name
    private Dictionary<string, Sound> _sounds;

    void Awake()
    {
        AOP = GameObject.FindGameObjectWithTag("AOP").GetComponent<AudioObjectPool>();

        foreach(Sound sound in sounds)
        {
            _sounds.Add(sound.name, sound);
        }
    }

    public void Play(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if(s == null)
        {
            Debug.Log("no sound ");
        }
        else
        {
            //check for source 
            if(s.source != null)
            {
                s.source.Play();
            }
            else
            {
                SetSource(AOP.GrabSource(), s);
                s.source.Play();
            }
        }
        
    }

    public void PlayOneShot(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.Log("no sound ");
        }
        else
        {
            //check for source 
            if (s.source != null)
            {
                s.source.PlayOneShot(s.clip);
            }
            else
            {
                SetSource(AOP.GrabSource(), s);
                s.source.PlayOneShot(s.clip);
            }
        }
    }

    void SetSource(AudioSource source, Sound sound)
    {
        //Take all of the values from the CoolSound and apply them to the audiosource
        source.outputAudioMixerGroup = sound.outputMixerGroup;
        source.playOnAwake = sound.playOnAwake;
        source.clip = sound.clip;
        source.volume = sound.volume;
        source.pitch = sound.pitch;
        source.loop = sound.loop;
        source.panStereo = sound.stereoPan;
        source.spatialBlend = sound.spatialBlend;
        source.rolloffMode = sound.volumeRolloff;
        source.minDistance = sound.minDistance;
        source.maxDistance = sound.maxDistance;

        //set  source position to this object's position
        source.transform.position = transform.position;
        source.transform.SetParent(transform);
        //set sound obj source to this 
        sound.source = source;
    }

    public void PlayAll()
    {
        foreach (Sound s in _sounds.Values)
            Play(s.name);
    }
    
    public void Stop(string name)
    {
        _sounds[name].source.Stop();
    }
    
    public void StopAll()
    {
        foreach (Sound s in _sounds.Values)
            Stop(s.name);
    }

    public void SetVolume(string name, float volume)
    {
        _sounds[name].source.volume = volume;
    }

    public void SetPitch(string name, float pitch)
    {
        _sounds[name].source.pitch = pitch;
    }
}
