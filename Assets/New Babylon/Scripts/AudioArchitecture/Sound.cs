using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class Sound : ScriptableObject
{
    [Header("Name")]
    public new string name;

    [Header("Audio Clips")]
    public AudioClip clip;
    public AudioClip[] alts;

    [Header("Audio Settings")]

    public AudioMixerGroup outputMixerGroup;

    [Range(0.0f, 1.0f)]
    public float volume = 1;

    [Range(0.1f, 3f)]
    public float pitch = 1;

    [Range(-1.0f, 1.0f)]
    public float stereoPan = 0;

    [Range(0.0f, 1.0f)]
    [Tooltip("0 is fully 2D, 1 is fully 3D")]
    public float spatialBlend = 1;

    [Header("3D Sound Settings")]
    public AudioRolloffMode volumeRolloff = AudioRolloffMode.Linear;
    public float minDistance = 1, maxDistance = 50;

    [Header("Playback Settings")]
    public bool loop;

    //True if the audio will always be playing (even if it will sometimes be muted)
    public bool playOnAwake;

    [Header("Audio Source")]
    [HideInInspector]
    public AudioSource source;

}
