// Copyright 2017 Matt Tytel

using UnityEngine;

namespace AudioHelm
{
    /// <summary>
    /// ## [Switch to Manual](../manual/class_audio_helm_1_1_audio_helm_clock.html)<br>
    /// Sets the BPM (beats per minute) of all sequencers and native Helm instances.
    /// </summary>
    [AddComponentMenu("Audio Helm/Audio Helm Clock")]
    [HelpURL("http://tytel.org/audiohelm/manual/class_audio_helm_1_1_audio_helm_clock.html")]
    public class AudioHelmClock : MonoBehaviour
    {
        static float globalBpm = 120.0f;

        [SerializeField]
        float bpm_ = 120.0f;

        /// <summary>
        /// Gets or sets the beats per minute.
        /// Audio Helm does not currently support changing BPM while playing.
        /// </summary>
        /// <value>The new or current bpm.</value>
        public float bpm
        {
            get
            {
                return bpm_;
            }
            set
            {
                bpm_ = value;
                SetGlobalBpm();
            }
        }

        void Awake()
        {
            SetGlobalBpm();
        }

        void SetGlobalBpm()
        {
            if (bpm_ > 0.0f)
            {
                Native.SetBpm(bpm_);
                globalBpm = bpm_;
            }
        }

        /// <summary>
        /// Gets or sets the beats per minute.
        /// </summary>
        /// <value>The new or current bpm.</value>
        public static float GetGlobalBpm()
        {
            return globalBpm;
        }
    }
}
