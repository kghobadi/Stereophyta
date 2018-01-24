// Copyright 2017 Matt Tytel

using UnityEngine;
using UnityEngine.UI;

namespace AudioHelm
{
    [AddComponentMenu("")]
    public class PulseImageOnNote : MonoBehaviour
    {
        public Sequencer sequencer;
        public MaterialPulse[] images;
        public int[] scale = { 0, 2, 4, 5, 7, 9, 11 };

        void OnEnable()
        {
            sequencer.OnNoteOn += NoteOn;
        }

        int GetNoteIndex(int note)
        {
            int octave = note / Utils.kNotesPerOctave;
            int noteInOctave = note - Utils.kNotesPerOctave * octave;

            for (int scaleNote = 0; scaleNote < scale.Length; ++scaleNote)
            {
                if (scale[scaleNote] >= noteInOctave)
                    return octave * scale.Length + scaleNote;
            }
            return octave * scale.Length;
        }

        void NoteOn(Note note)
        {
            int index = GetNoteIndex(note.note) % images.Length;
            images[index].Pulse(1.0f);
        }
    }
}
