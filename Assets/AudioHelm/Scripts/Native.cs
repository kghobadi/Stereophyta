// Copyright 2017 Matt Tytel

using UnityEngine;
using System;
using System.Runtime.InteropServices;

namespace AudioHelm
{
    /// <summary>
    /// The native plugin interface to synthesizer and sequencer settings.
    /// If you want to control a synthesizer, a better was is through the HelmController class.
    /// If you want to modify or setup a sequencer, take a look at HelmSequencer and SampleSequencer.
    /// </summary>
    public static class Native
    {
        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmNoteOn(int channel, int note, float velocity);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmNoteOff(int channel, int note);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmAllNotesOff(int channel);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmSetPitchWheel(int channel, float value);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmSetModWheel(int channel, float value);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void HelmSetAftertouch(int channel, int note, float value);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern bool HelmSetParameterValue(int channel, int paramIndex, float newValue);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
        [DllImport("AudioPluginHelm")]
        #endif
        public static extern bool HelmSetParameterPercent(int channel, int paramIndex, float newPercent);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
        [DllImport("AudioPluginHelm")]
        #endif
        public static extern void SetBpm(float bpm);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr CreateSequencer();

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void DeleteSequencer(IntPtr sequencer);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void EnableSequencer(IntPtr sequencer, bool enable);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void ChangeSequencerLength(IntPtr sequencer, float length);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void ShiftSequencerStart(IntPtr sequencer, double time);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern bool ChangeSequencerChannel(IntPtr sequencer, int channel);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern void SyncSequencerStart(IntPtr sequencer, double waitTime);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr CreateNote(IntPtr sequencer, int note, float velocity, float start, float end);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr DeleteNote(IntPtr sequencer, IntPtr note);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr ChangeNoteStart(IntPtr sequencer, IntPtr note, float start);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr ChangeNoteEnd(IntPtr sequencer, IntPtr note, float end);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr ChangeNoteKey(IntPtr sequencer, IntPtr note, int key);

        #if UNITY_IOS
          [DllImport("__Internal")]
        #else
          [DllImport("AudioPluginHelm")]
        #endif
        public static extern IntPtr ChangeNoteVelocity(IntPtr note, float velocity);
    }
}
