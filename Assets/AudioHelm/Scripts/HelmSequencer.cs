// Copyright 2017 Matt Tytel

using UnityEngine;
using System;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace AudioHelm
{
    /// <summary>
    /// ## [Switch to Manual](../manual/class_audio_helm_1_1_helm_sequencer.html)<br>
    /// A sequencer of notes over time that will send its note on/off events to
    /// instances of a Helm native synthesizer
    /// </summary>
    [RequireComponent(typeof(HelmAudioInit))]
    [AddComponentMenu("Audio Helm/Helm Sequencer")]
    [HelpURL("http://tytel.org/audiohelm/manual/class_audio_helm_1_1_helm_sequencer.html")]
    public class HelmSequencer : Sequencer
    {
        /// <summary>
        /// Specifies which Helm instance(s) to control.
        /// Every Helm instance in any AudioMixerGroup matching this channel number is controlled by this class.
        /// </summary>
        [Tooltip("The native synth channel to send note events to." +
                 " This must match the channel set in the Helm Audio plugin.")]
        public int channel = 0;

        IntPtr reference = IntPtr.Zero;
        int currentChannel = -1;
        int currentLength = -1;

        double pauseTime = 0.0;

        void CreateNativeSequencer()
        {
            if (reference == IntPtr.Zero)
                reference = Native.CreateSequencer();
        }

        void DeleteNativeSequencer()
        {
            if (reference != IntPtr.Zero)
                Native.DeleteSequencer(reference);
            reference = IntPtr.Zero;
            currentIndex = -1;
        }

        /// <summary>
        /// Reference to the native sequencer instance memory (if any).
        /// </summary>
        /// <returns>The reference the native sequencer. IntPtr.Zero if it doesn't exist.</returns>
        public override IntPtr Reference()
        {
            return reference;
        }

        void Awake()
        {
            InitNoteRows();
            CreateNativeSequencer();
            Native.ChangeSequencerChannel(reference, channel);
            Native.ChangeSequencerLength(reference, length);

            for (int i = 0; i < allNotes.Length; ++i)
            {
                foreach (Note note in allNotes[i].notes)
                    note.TryCreate();
            }
            AllNotesOff();
            Native.SyncSequencerStart(reference, 0.0);
            syncTime = AudioSettings.dspTime;
        }

        void OnDestroy()
        {
            if (reference != IntPtr.Zero)
            {
                AllNotesOff();
                DeleteNativeSequencer();
            }
        }

        void OnEnable()
        {
            if (reference != IntPtr.Zero)
                Native.EnableSequencer(reference, true);

            #if UNITY_EDITOR
            EditorApplication.playmodeStateChanged += HandleOnPlayModeChanged;
            #endif
        }

        void OnDisable()
        {
            if (reference != IntPtr.Zero)
            {
                Native.EnableSequencer(reference, false);
                AllNotesOff();
            }

            #if UNITY_EDITOR
            EditorApplication.playmodeStateChanged -= HandleOnPlayModeChanged;
            #endif
        }

        void Pause()
        {
            pauseTime = Time.realtimeSinceStartup;
            Debug.LogWarning("Unity Native Audio does not stay in sync after pausing in Editor!");
        }

        void Unpause()
        {
            if (pauseTime == 0.0)
                return;

            AllNotesOff();
            double shiftTime = Time.realtimeSinceStartup - pauseTime;
            Native.ShiftSequencerStart(reference, shiftTime);
            pauseTime = 0.0;
        }

        void OnApplicationPause(bool pauseStatus)
        {
            if (pauseStatus)
                Pause();
            else
                Unpause();
        }

        /// <summary>
        /// Triggers note off events for all notes currently on in the referenced Helm instance(s).
        /// </summary>
        public override void AllNotesOff()
        {
            Native.HelmAllNotesOff(channel);
        }

        /// <summary>
        /// Triggers a note on event for the Helm instance(s) this points to.
        /// You must trigger a note off event later for this note by calling NoteOff.
        /// </summary>
        /// <param name="note">The MIDI keyboard note to play. [0, 127]</param>
        /// <param name="velocity">How hard you hit the key. [0.0, 1.0]</param>
        public override void NoteOn(int note, float velocity = 1.0f)
        {
            Native.HelmNoteOn(channel, note, velocity);
        }

        /// <summary>
        /// Triggers a note off event for the Helm instance(s) this points to.
        /// </summary>
        /// <param name="note">The MIDI keyboard note to turn off. [0, 127]</param>
        public override void NoteOff(int note)
        {
            Native.HelmNoteOff(channel, note);
        }

        void EnableComponent()
        {
            enabled = true;
        }

        public override void StartScheduled(double dspTime)
        {
            if (reference != IntPtr.Zero)
            {
                syncTime = dspTime;
                const float lookaheadTime = 0.5f;
                double waitTime = dspTime - AudioSettings.dspTime;
                Native.SyncSequencerStart(reference, waitTime);
                float waitToEnable = (float)(waitTime - lookaheadTime);
                Invoke("EnableComponent", waitToEnable);
            }
        }

        public override void StartOnNextCycle()
        {
            double timeSinceSync = AudioSettings.dspTime - syncTime;
            double sequenceLength = (length * GetSixteenthTime());
            int cyclesSinceSync = (int)(timeSinceSync / sequenceLength);
            StartScheduled(syncTime + (cyclesSinceSync + 1) * sequenceLength);
        }

        void Update()
        {
            UpdatePosition();

            if (length != currentLength)
            {
                if (reference != IntPtr.Zero)
                {
                    Native.HelmAllNotesOff(currentChannel);
                    Native.ChangeSequencerLength(reference, length);
                }
                currentLength = length;
            }
            if (channel != currentChannel)
            {
                if (reference != IntPtr.Zero)
                {
                    Native.HelmAllNotesOff(currentChannel);
                    Native.ChangeSequencerChannel(reference, channel);
                }
                currentChannel = channel;
            }
        }

        #if UNITY_EDITOR
        void HandleOnPlayModeChanged()
        {
            if (pauseTime == 0.0 && EditorApplication.isPaused)
                Pause();
            else if (pauseTime > 0.0 && !EditorApplication.isPaused)
                Unpause();
        }
        #endif
    }
}
