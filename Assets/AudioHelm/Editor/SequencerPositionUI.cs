// Copyright 2017 Matt Tytel

using UnityEditor;
using UnityEngine;

namespace AudioHelm
{
    public class SequencerPositionUI
    {
        float leftPadding = 0.0f;
        float rightPadding = 0.0f;
        Color tickColor = new Color(1.0f, 0.6f, 0.2f);

        public SequencerPositionUI(float left, float right)
        {
            leftPadding = left;
            rightPadding = right;
        }

        public void DrawSequencerPosition(Rect rect, Sequencer sequencer)
        {
            Rect activeArea = new Rect(rect);
            activeArea.x += leftPadding;
            activeArea.width -= leftPadding + rightPadding;

            float loopPosition = sequencer.currentIndex;
            float relativePostition = sequencer.GetDivisionLength() * loopPosition / sequencer.length;
            float positionWidth = sequencer.GetDivisionLength() * activeArea.width / sequencer.length;

            EditorGUI.DrawRect(activeArea, Color.gray);
            Rect position = new Rect(relativePostition * activeArea.width + activeArea.x, activeArea.y, positionWidth, activeArea.height);
            if (sequencer.isActiveAndEnabled && Application.isPlaying)
                EditorGUI.DrawRect(position, tickColor);
        }
    }
}
