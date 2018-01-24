// Copyright 2017 Matt Tytel

using UnityEngine;

namespace AudioHelm
{
    /// <summary>
    /// ## [Switch to Manual](../manual/class_audio_helm_1_1_helm_audio_init.html)<br>
    /// Ensures AudioSource and global AudioSettings are setup correctly for Helm native synthesizer usage.
    /// </summary>
    [ExecuteInEditMode]
    [RequireComponent(typeof(AudioSource))]
    [AddComponentMenu("Audio Helm/Helm Audio Init")]
    [HelpURL("http://tytel.org/audiohelm/manual/class_audio_helm_1_1_helm_audio_init.html")]
    public class HelmAudioInit : MonoBehaviour
    {
        bool warnedNoAudioGroup = false;

        void Awake()
        {
            Utils.InitAudioSource(GetComponent<AudioSource>());

            // Make sure AudioSettings are setup correctly.
        #if (!UNITY_ANDROID && !UNITY_IOS)
            if (!Application.runInBackground) {
                Debug.LogWarning("Setting application to run in background to keep audio in sync!");
                Application.runInBackground = true;
            }
        #endif
        }

        void Update()
        {
            AudioSource audioComponent = GetComponent<AudioSource>();

            // Make sure AudioSource is setup correctly.
            if (Application.isPlaying && audioComponent.clip == null)
            {
                if (!warnedNoAudioGroup)
                {
                    Debug.LogWarning("AudioSource output needs an AudioMixerGroup with a Helm Instance.");
                    warnedNoAudioGroup = true;
                }
            }
            else
                warnedNoAudioGroup = false;

            audioComponent.pitch = 1.0f;
        }
    }
}
