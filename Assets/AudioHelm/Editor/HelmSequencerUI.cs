// Copyright 2017 Matt Tytel

using UnityEditor;
using UnityEngine;
using System.IO;

namespace AudioHelm
{
    [CustomEditor(typeof(HelmSequencer))]
    class HelmSequencerUI : Editor
    {
        const float keyboardWidth = 30.0f;
        const float scrollWidth = 15.0f;

        SequencerUI sequencer = new SequencerUI(keyboardWidth, scrollWidth + 1);
        SequencerPositionUI sequencerPosition = new SequencerPositionUI(keyboardWidth, scrollWidth);
        SequencerVelocityUI velocities = new SequencerVelocityUI(keyboardWidth, scrollWidth);
        SerializedProperty channel;
        SerializedProperty length;
        SerializedProperty division;
        SerializedProperty allNotes;

        float positionHeight = 10.0f;
        float velocitiesHeight = 40.0f;
        float sequencerHeight = 400.0f;
        const float minWidth = 200.0f;

        void OnEnable()
        {
            channel = serializedObject.FindProperty("channel");
            length = serializedObject.FindProperty("length");
            division = serializedObject.FindProperty("division");
            allNotes = serializedObject.FindProperty("allNotes");
        }

        public override void OnInspectorGUI()
        {
            serializedObject.Update();

            Color prev_color = GUI.backgroundColor;
            GUILayout.Space(5f);
            HelmSequencer helmSequencer = target as HelmSequencer;
            Rect sequencerPositionRect = GUILayoutUtility.GetRect(minWidth, positionHeight, GUILayout.ExpandWidth(true));
            Rect rect = GUILayoutUtility.GetRect(minWidth, sequencerHeight, GUILayout.ExpandWidth(true));
            Rect velocitiesRect = GUILayoutUtility.GetRect(minWidth, velocitiesHeight, GUILayout.ExpandWidth(true));

            if (sequencer.DoSequencerEvents(rect, helmSequencer, allNotes))
                Repaint();
            if (velocities.DoVelocityEvents(velocitiesRect, helmSequencer, allNotes))
                Repaint();

            sequencerPosition.DrawSequencerPosition(sequencerPositionRect, helmSequencer);
            velocities.DrawSequencerVelocities(velocitiesRect, helmSequencer, allNotes);

            if (rect.height == sequencerHeight)
                sequencer.DrawSequencer(rect, helmSequencer, allNotes);
            GUILayout.Space(5f);
            GUI.backgroundColor = prev_color;

            if (GUILayout.Button(new GUIContent("Clear Sequencer", "Remove all notes from the sequencer.")))
            {
                Undo.RecordObject(helmSequencer, "Clear Sequencer");
                helmSequencer.Clear();
            }

            if (GUILayout.Button(new GUIContent("Load MIDI File [BETA]", "Load a MIDI sequence into this sequencer.")))
            {
                string path = EditorUtility.OpenFilePanel("Load MIDI Sequence", "", "mid");
                if (path.Length != 0)
                {
                    Undo.RecordObject(helmSequencer, "Load MIDI File");
                    helmSequencer.ReadMidiFile(new FileStream(path, FileMode.Open, FileAccess.Read));
                }
            }

            EditorGUILayout.IntSlider(channel, 0, Utils.kMaxChannels - 1);
            EditorGUILayout.IntSlider(length, 1, Sequencer.kMaxLength);
            EditorGUILayout.PropertyField(division);
            serializedObject.ApplyModifiedProperties();
        }
    }
}
