// Copyright 2017 Matt Tytel

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace AudioHelm
{
    /// <summary>
    /// ## [Switch to Manual](../manual/class_audio_helm_1_1_helm_controller.html)<br>
    /// An interface to a Helm native synthesizer instance(s).
    /// All native synth settings can be changed through this class.
    /// </summary>
    [RequireComponent(typeof(HelmAudioInit))]
    [AddComponentMenu("Audio Helm/Helm Controller")]
    [HelpURL("http://tytel.org/audiohelm/manual/class_audio_helm_1_1_helm_controller.html")]
    public class HelmController : MonoBehaviour, NoteHandler
    {
        /// <summary>
        /// Specifies which Helm instance(s) to control.
        /// Every Helm instance in any AudioMixerGroup matching this channel number is controlled by this class.
        /// </summary>
        [Tooltip("The native synth channel to send note events to." +
                 " This must match the channel set in the Helm Audio plugin.")]
        public int channel = 0;

        Dictionary<int, int> pressedNotes = new Dictionary<int, int>();

        void OnDestroy()
        {
            AllNotesOff();
        }

        void Awake()
        {
            AllNotesOff();
        }

        void Start()
        {
            Utils.InitAudioSource(GetComponent<AudioSource>());
        }

        /// <summary>
        /// Changes a Helm synthesizer parameter value.
        /// e.g. Lower the pitch of the oscillator by setting the transpose to -12 semitones.
        /// </summary>
        /// <param name="parameter">The parameter to be changed.</param>
        /// <param name="newValue">The value to change the parameter to.</param>
        public void SetParameterValue(Param parameter, float newValue)
        {
            Native.HelmSetParameterValue(channel, (int)parameter, newValue);
        }

        /// <summary>
        /// Changes a Helm synthesizer parameter value.
        /// e.g. Lower the pitch of the oscillator by setting the transpose to -12 semitones.
        /// </summary>
        /// <param name="parameter">The parameter to be changed.</param>
        /// <param name="newValue">The value to change the parameter to.</param>
        public void SetParameterValue(CommonParam parameter, float newValue)
        {
            Native.HelmSetParameterValue(channel, (int)parameter, newValue);
        }

        /// <summary>
        /// Changes a Helm synthesizer parameter by percent of the valid range.
        /// e.g. Set the volume to the highest setting by setting the Volume to 1.0.
        /// </summary>
        /// <param name="parameter">The parameter to be changed.</param>
        /// <param name="newPercent">The percent of range of values to use. 0.0 for lowest, 1.0 for highest.</param>
        public void SetParameterPercent(Param parameter, float newPercent)
        {
            Native.HelmSetParameterPercent(channel, (int)parameter, newPercent);
        }

        /// <summary>
        /// Changes a Helm synthesizer parameter by percent of the valid range.
        /// e.g. Set the volume to the highest setting by setting the Volume to 1.0.
        /// </summary>
        /// <param name="parameter">The parameter to be changed.</param>
        /// <param name="newPercent">The percent of range of values to use. 0.0 for lowest, 1.0 for highest.</param>
        public void SetParameterPercent(CommonParam parameter, float newPercent)
        {
            Native.HelmSetParameterPercent(channel, (int)parameter, newPercent);
        }

        /// <summary>
        /// Triggers note off events for all notes currently on in the referenced Helm instance(s).
        /// </summary>
        public void AllNotesOff()
        {
            Native.HelmAllNotesOff(channel);
            pressedNotes.Clear();
        }

        /// <summary>
        /// Checks if a note is currently on.
        /// </summary>
        /// <returns><c>true</c>, if note is currently on (held down), <c>false</c> otherwise.</returns>
        /// <param name="note">Note.</param>
        public bool IsNoteOn(int note)
        {
            return pressedNotes.ContainsKey(note);
        }

        /// <summary>
        /// Gets a Dictionary of all the currently pressed notes.
        /// </summary>
        /// <returns>The pressed notes where the key is the MIDI number and the value is the number of active note on events.</returns>
        public Dictionary<int, int> GetPressedNotes()
        {
            return pressedNotes;
        }

        /// <summary>
        /// Triggers a note on event for the Helm instance(s) this points to.
        /// After length amount of seconds, will automatically trigger a note off event.
        /// </summary>
        /// <param name="note">The MIDI keyboard note to play. [0, 127]</param>
        /// <param name="velocity">How hard you hit the key. [0.0, 1.0]</param>
        /// <param name="length">The time in seconds the note should play for.</param>
        public void NoteOn(int note, float velocity, float length)
        {
            NoteOn(note, velocity);
            StartCoroutine(WaitNoteOff(note, length));
        }

        IEnumerator WaitNoteOff(int note, float length)
        {
            yield return new WaitForSeconds(length);
            NoteOff(note);
        }

		/// <summary>
		/// Triggers a note on event for the Helm instance(s) this points to.
        /// You must trigger a note off event later for this note by calling NoteOff.
		/// </summary>
		/// <param name="note">The MIDI keyboard note to play. [0, 127]</param>
		/// <param name="velocity">How hard you hit the key. [0.0, 1.0]</param>
		public void NoteOn(int note, float velocity = 1.0f)
        {
            int number = 0;
            pressedNotes.TryGetValue(note, out number);
            pressedNotes[note] = number + 1;
            Native.HelmNoteOn(channel, note, velocity);
        }

        /// <summary>
        /// Triggers a note off event for the Helm instance(s) this points to.
        /// </summary>
        /// <param name="note">The MIDI keyboard note to turn off. [0, 127]</param>
        public void NoteOff(int note)
        {
            int number = 0;
            pressedNotes.TryGetValue(note, out number);
            if (number <= 1)
            {
                pressedNotes.Remove(note);
                Native.HelmNoteOff(channel, note);
            }
            else
                pressedNotes[note] = number - 1;
        }

        /// <summary>
        /// Sets the pitch wheel value for the synth. The pitch wheel bends the pitch of the synthesizer up or down.
        /// </summary>
        /// <param name="wheelValue">The new wheel value. [-1.0, 1.0]</param>
        public void SetPitchWheel(float wheelValue)
        {
            Native.HelmSetPitchWheel(channel, wheelValue);
        }


        /// <summary>
        /// Sets the modulation wheel value for the synth. The modulation wheel may change how the synth sounds depending on the patch.
        /// </summary>
        /// <param name="wheelValue">The new wheel value. [0.0, 1.0]</param>
        public void SetModWheel(float wheelValue)
        {
            Native.HelmSetModWheel(channel, wheelValue);
        }

		/// <summary>
		/// Sets the aftertouch for a given note. The aftertouch may change how the given note sounds depending on the patch.
		/// </summary>
		/// <param name="note">The note to change the aftertouch value on.</param>
		/// <param name="aftertouchValue">The new aftertouch value.</param>
		public void SetAftertouch(int note, float aftertouchValue)
        {
            Native.HelmSetAftertouch(channel, note, aftertouchValue);
        }
    }
}
