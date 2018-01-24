// Copyright 2017 Matt Tytel

using UnityEditor;
using UnityEngine;

namespace AudioHelm
{
    [CustomEditor(typeof(HelmController))]
    class HelmControllerUI : Editor
    {
        private SerializedObject serialized;
        KeyboardUI keyboard = new KeyboardUI();
        SerializedProperty channel;

        void OnEnable()
        {
            serialized = new SerializedObject(target);
            channel = serialized.FindProperty("channel");
        }

        public override void OnInspectorGUI()
        {
            serialized.Update();
            Color prev_color = GUI.backgroundColor;
            GUILayout.Space(5f);
            Rect rect = GUILayoutUtility.GetRect(200, 60, GUILayout.ExpandWidth(true));
            HelmController controller = target as HelmController;

            if (keyboard.DoKeyboardEvents(rect, controller))
                Repaint();

            keyboard.DrawKeyboard(rect, controller.GetPressedNotes());
            GUILayout.Space(5f);
            GUI.backgroundColor = prev_color;

            EditorGUILayout.IntSlider(channel, 0, Utils.kMaxChannels - 1);
            serialized.ApplyModifiedProperties();
        }
    }
}
