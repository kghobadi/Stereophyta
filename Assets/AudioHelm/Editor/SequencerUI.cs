// Copyright 2017 Matt Tytel

using UnityEditor;
using UnityEngine;
using System.Runtime.InteropServices;
using System.Collections.Generic;

namespace AudioHelm
{
    public class SequencerUI
    {
        enum Mode
        {
            kWaiting,
            kAdding,
            kDeleting,
            kKeyboarding,
            kDraggingStart,
            kDraggingEnd,
            kNumModes
        }

        public SequencerUI(float keyboard, float scroll)
        {
            keyboardWidth = keyboard;
            rightPadding = scroll;
        }

        public int minKey = 0;
        public int maxKey = Utils.kMidiSize - 1;

        const float grabResizeWidth = 5.0f;
        const float minNoteTime = 0.15f;
        const float defaultVelocity = 0.8f;
        const float dragDeltaStartRounding = 0.8f;

        float keyboardWidth = 20.0f;
        float rightPadding = 15.0f;

        Mode mode = Mode.kWaiting;
        Note activeNote = null;
        bool mouseActive = false;
        bool roundingToIndex = false;

        int pressNote = 0;
        float pressTime = 0.0f;
        float activeTime = 0.0f;
        float dragTime = 0.0f;
        int pressedKey = -1;

        Color emptyCellBlack = new Color(0.5f, 0.5f, 0.5f);
        Color emptyCellWhite = new Color(0.6f, 0.6f, 0.6f);
        Color noteDivision = new Color(0.4f, 0.4f, 0.4f);
        Color beatDivision = new Color(0.2f, 0.2f, 0.2f);
        Color fullCellFullVelocity = Color.red;
        Color fullCellZeroVelocity = new Color(1.0f, 0.8f, 0.8f);
        Color pressedCell = new Color(0.6f, 1.0f, 1.0f);
        Color deletingCell = new Color(0.7f, 1.0f, 0.7f);
        Color lightenColor = new Color(1.0f, 1.0f, 1.0f, 0.1f);
        Color darkenColor = new Color(0.0f, 0.0f, 0.0f, 0.05f);
        Color blackKey = Color.black;
        Color whiteKey = Color.white;
        Color blackKeyPressed = Color.red;
        Color whiteKeyPressed = Color.red;

        float rowHeight = 10.0f;
        const float minRowHeight = 10.0f;
        const float maxRowHeight = 35.0f;
        int numRows = Utils.kMidiSize;
        int numCols = 16;
        int notesPerBeat = 4;
        float lastHeight = 0;
        float colWidth = 30.0f;

        Vector2 scrollPosition;

        Vector2 GetSequencerPosition(Rect rect, Vector2 mousePosition, float sequencerLength)
        {
            if (!rect.Contains(mousePosition))
                return -Vector2.one;

            Vector2 localPosition = mousePosition - rect.position + scrollPosition;
            float note = minKey + numRows - Mathf.Floor((localPosition.y / rowHeight)) - 1;
            float time = sequencerLength * (localPosition.x - keyboardWidth) / (rect.width - keyboardWidth - rightPadding);
            return new Vector2(time, note);
        }

        public bool MouseActive()
        {
            return mouseActive;
        }

        void MouseDown(int note, float time, Sequencer sequencer, SerializedProperty allNotes)
        {
            float divisionLength = sequencer.GetDivisionLength();
            roundingToIndex = false;
            mouseActive = true;
            activeNote = sequencer.GetNoteInRange(note, time, time);
            dragTime = time;
            activeTime = time;
            pressTime = time;
            pressNote = note;

            if (pressedKey >= 0)
            {
                sequencer.NoteOff(pressedKey);
                pressedKey = -1;
            }
            if (time < 0.0f)
            {
                mode = Mode.kKeyboarding;
                pressedKey = note;
                sequencer.NoteOn(pressedKey, 1.0f);
                return;
            }
            else if (activeNote != null)
            {
                float startPixels = colWidth * (time - activeNote.start) / divisionLength;
                float endPixels = colWidth * (activeNote.end - time) / divisionLength;

                if (endPixels <= grabResizeWidth)
                    mode = Mode.kDraggingEnd;
                else if (startPixels <= grabResizeWidth)
                    mode = Mode.kDraggingStart;
                else
                    mode = Mode.kDeleting;
            }
            else
                mode = Mode.kAdding;
        }

        bool MouseDrag(int note, float time, Sequencer sequencer, SerializedProperty allNotes)
        {
            float divisionLength = sequencer.GetDivisionLength();
            float clampedTime = Mathf.Clamp(time, 0.0f, sequencer.length);
            float lastDragTime = dragTime;
            dragTime = clampedTime;

            float newActiveTime = dragTime;
            if (roundingToIndex)
                newActiveTime = divisionLength * Mathf.Round(dragTime / divisionLength);

            if (Mathf.Abs(dragTime - pressTime) >= dragDeltaStartRounding)
                roundingToIndex = true;

            if (mode == Mode.kKeyboarding)
            {
                if (note == pressedKey)
                    return false;

                sequencer.NoteOff(pressedKey);
                sequencer.NoteOn(note);
                pressedKey = note;
                return true;
            }
            else if (mode == Mode.kDraggingStart)
            {
                if (activeNote == null)
                    return false;

                newActiveTime = Mathf.Min(activeNote.end - minNoteTime, newActiveTime);
                bool redraw = activeTime == newActiveTime;
                activeTime = newActiveTime;
                return redraw;
            }
            else if (mode == Mode.kDraggingEnd)
            {
                if (activeNote == null)
                    return false;

                newActiveTime = Mathf.Max(activeNote.start + minNoteTime, newActiveTime);
                bool redraw = activeTime == newActiveTime;
                activeTime = newActiveTime;
                return redraw;
            }
            else if (mode == Mode.kAdding)
            {
                int lastIndex = Mathf.FloorToInt(lastDragTime / divisionLength);
                int index = Mathf.FloorToInt(time / divisionLength);

                return lastIndex != index;
            }
            return true;
        }

        void CopyNoteToSerializedProperty(Note note, SerializedProperty serializedNote)
        {
            serializedNote.FindPropertyRelative("note_").intValue = note.note;
            serializedNote.FindPropertyRelative("velocity_").floatValue = note.velocity;
            serializedNote.FindPropertyRelative("start_").floatValue = note.start;
            serializedNote.FindPropertyRelative("end_").floatValue = note.end;
            serializedNote.FindPropertyRelative("parent").objectReferenceValue = note.parent;
        }

        void CopyNoteRowToSerializedProperty(NoteRow row, SerializedProperty serializedRow)
        {
            SerializedProperty noteList = serializedRow.FindPropertyRelative("notes");
            noteList.arraySize = row.notes.Count;

            for (int i = 0; i < row.notes.Count; ++i)
            {
                Note note = row.notes[i];
                SerializedProperty serializedNote = noteList.GetArrayElementAtIndex(i);
                CopyNoteToSerializedProperty(note, serializedNote);
            }
        }

        void MouseUp(float time, Sequencer sequencer, SerializedProperty allNotes)
        {
            float divisionLength = sequencer.GetDivisionLength();
            mouseActive = false;
            if (mode == Mode.kKeyboarding)
            {
                sequencer.NoteOff(pressedKey);
                pressedKey = -1;
                return;
            }

            dragTime = Mathf.Clamp(time, 0.0f, sequencer.length);
            float startTime = Mathf.Min(pressTime, dragTime);
            float endTime = Mathf.Max(pressTime, dragTime);

            if (mode == Mode.kDraggingStart)
            {
                Undo.RecordObject(sequencer, "Move Note Start");

                if (activeNote != null)
                {
                    float newStart = Mathf.Min(activeNote.end - minNoteTime, activeTime);
                    sequencer.ClampNotesInRange(pressNote, newStart, activeNote.end, activeNote);

                    activeNote.start = newStart;
                }

                CopyNoteRowToSerializedProperty(sequencer.allNotes[pressNote],
                                                allNotes.GetArrayElementAtIndex(pressNote));
                sequencer.NoteOff(pressNote);
            }
            else if (mode == Mode.kDraggingEnd)
            {
                Undo.RecordObject(sequencer, "Move Note End");

                if (activeNote != null)
                {
                    float newEnd = Mathf.Max(activeNote.start + minNoteTime, activeTime);
                    sequencer.ClampNotesInRange(pressNote, activeNote.start, newEnd, activeNote);

                    activeNote.end = newEnd;
                }
                
                CopyNoteRowToSerializedProperty(sequencer.allNotes[pressNote],
                                                allNotes.GetArrayElementAtIndex(pressNote));
                sequencer.NoteOff(pressNote);
            }
            else if (mode == Mode.kAdding)
            {
                Undo.RecordObject(sequencer, "Add Sequencer Notes");
                int startDragIndex = Mathf.FloorToInt(startTime / divisionLength);
                int endDragIndex = Mathf.CeilToInt(endTime / divisionLength);

                sequencer.ClampNotesInRange(pressNote, startDragIndex * divisionLength, endDragIndex * divisionLength);
                for (int i = startDragIndex; i < endDragIndex; ++i)
                    sequencer.AddNote(pressNote, i * divisionLength, (i + 1) * divisionLength, defaultVelocity);

                CopyNoteRowToSerializedProperty(sequencer.allNotes[pressNote], allNotes.GetArrayElementAtIndex(pressNote));
                sequencer.NoteOff(pressNote);
            }
            else if (mode == Mode.kDeleting)
            {
                Undo.RecordObject(sequencer, "Delete Sequencer Notes");
                sequencer.RemoveNotesInRange(pressNote, startTime, endTime);
                sequencer.NoteOff(pressNote);
            }
            mode = Mode.kWaiting;
        }

        public bool DoSequencerEvents(Rect rect, Sequencer sequencer, SerializedProperty allNotes)
        {
            Event evt = Event.current;
            if (!evt.isMouse)
                return false;

            Vector2 sequencerPosition = GetSequencerPosition(rect, evt.mousePosition, sequencer.length);
            float time = sequencerPosition.x;

            if (evt.type == EventType.MouseUp && mouseActive)
            {
                MouseUp(time, sequencer, allNotes);
                return true;
            }

            int note = (int)sequencerPosition.y;
            if (note > maxKey || note < minKey)
                return false;

            Rect ignoreScrollRect = new Rect(rect);
            ignoreScrollRect.width -= rightPadding;
            if (evt.type == EventType.MouseDown && ignoreScrollRect.Contains(evt.mousePosition))
                MouseDown(note, time, sequencer, allNotes);
            else if (evt.type == EventType.MouseDrag && mouseActive)
                return MouseDrag(note, time, sequencer, allNotes);
            return true;
        }

        void DrawNoteRows(Rect rect)
        {
            GUIStyle cStyle = new GUIStyle();
            cStyle.fontSize = 8;
            cStyle.alignment = TextAnchor.MiddleRight;
            cStyle.padding = new RectOffset(0, 1, 0, 0);

            float y = 0.0f;
            for (int i = maxKey; i >= minKey; --i)
            {
                Color keyColor = whiteKey;
                Color rowColor = emptyCellWhite;

                if (Utils.IsBlackKey(i))
                {
                    if (pressedKey == i)
                        keyColor = blackKeyPressed;
                    else
                        keyColor = blackKey;
                    rowColor = emptyCellBlack;
                }
                else if (pressedKey == i)
                    keyColor = whiteKeyPressed;

                Rect key = new Rect(0.0f, y, keyboardWidth, rowHeight - 1);
                Rect row = new Rect(keyboardWidth, y, rect.width - keyboardWidth, rowHeight);
                EditorGUI.DrawRect(key, keyColor);
                EditorGUI.DrawRect(new Rect(key.x, key.yMax, key.width, 1), Color.black);
                if (i % Utils.kNotesPerOctave == 0)
                    GUI.Label(key, "C" + Utils.GetOctave(i), cStyle);

                EditorGUI.DrawRect(row, rowColor);
                EditorGUI.DrawRect(new Rect(row.x, row.yMax - 1, row.width, 1), darkenColor);
                y += rowHeight;
            }
        }

        void DrawBarHighlights(Rect rect)
        {
            float x = keyboardWidth;
            int numBars = 1 + (numCols - 1) / notesPerBeat;
            float barWidth = colWidth * notesPerBeat;
            for (int i = 0; i < numBars; ++i)
            {
                if (i % 2 != 0)
                {
                    Rect bar = new Rect(x, 0, barWidth, rect.height);
                    EditorGUI.DrawRect(bar, lightenColor);
                }
                x += barWidth;
            }
        }

        void DrawNoteDivisionLines(Rect rect)
        {
            float x = keyboardWidth;
            for (int i = 0; i <= numCols; ++i)
            {
                Rect line = new Rect(x, 0, 1.0f, rect.height);
                if (i % notesPerBeat == 0)
                    EditorGUI.DrawRect(line, beatDivision);
                else
                    EditorGUI.DrawRect(line, noteDivision);
                x += colWidth;
            }
        }

        void DrawNote(int note, float startColumn, float endColumn, Color color)
        {
            float x = startColumn * colWidth + keyboardWidth;
            float y = (numRows - (note - minKey) - 1) * rowHeight;
            float width = endColumn * colWidth + keyboardWidth - x;
            Rect noteOutsideRect = new Rect(x, y, width + 1, rowHeight);
            Rect noteRect = new Rect(x + 1, y + 1, width - 1, rowHeight - 2);
            EditorGUI.DrawRect(noteOutsideRect, Color.black);
            EditorGUI.DrawRect(noteRect, color);
            Rect leftResizeRect = new Rect(x, y, grabResizeWidth, rowHeight);
            Rect rightResizeRect = new Rect(noteRect.xMax - grabResizeWidth, y, grabResizeWidth, rowHeight);
            EditorGUIUtility.AddCursorRect(leftResizeRect, MouseCursor.SplitResizeLeftRight);
            EditorGUIUtility.AddCursorRect(rightResizeRect, MouseCursor.SplitResizeLeftRight);
        }

        void DrawRowNotes(SerializedProperty notes, float divisionLength)
        {
            if (notes == null)
                return;

            for (int i = 0; i < notes.arraySize; ++i)
            {
                SerializedProperty serializedNote = notes.GetArrayElementAtIndex(i);
                int note = serializedNote.FindPropertyRelative("note_").intValue;
                float velocity = serializedNote.FindPropertyRelative("velocity_").floatValue;
                float start = serializedNote.FindPropertyRelative("start_").floatValue;
                float end = serializedNote.FindPropertyRelative("end_").floatValue;

                Color color = Color.Lerp(fullCellZeroVelocity, fullCellFullVelocity, velocity);
                if (mode == Mode.kDeleting && pressNote == note)
                {
                    float pressStart = Mathf.Min(pressTime, dragTime);
                    float pressEnd = Mathf.Max(pressTime, dragTime);

                    if (Utils.RangesOverlap(start, end, pressStart, pressEnd))
                        color = deletingCell;
                }
                DrawNote(note, start / divisionLength, end / divisionLength, color);
            }
        }

        void DrawRowNotes(List<Note> notes, float divisionLength)
        {
            if (notes == null)
                return;

            foreach (Note note in notes)
            {
                Color color = Color.Lerp(fullCellZeroVelocity, fullCellFullVelocity, note.velocity);
                if (mode == Mode.kDeleting && pressNote == note.note)
                {
                    float pressStart = Mathf.Min(pressTime, dragTime);
                    float pressEnd = Mathf.Max(pressTime, dragTime);

                    if (Utils.RangesOverlap(note.start, note.end, pressStart, pressEnd))
                        color = deletingCell;
                }

                if ((mode != Mode.kDraggingEnd && mode != Mode.kDraggingStart) || activeNote != note)
                    DrawNote(note.note, note.start / divisionLength, note.end / divisionLength, color);
            }
        }

        void DrawActiveNotes(Sequencer sequencer, SerializedProperty allNotes, float divisionLength)
        {
            if (sequencer.allNotes == null)
                return;

            for (int i = minKey; i <= maxKey; ++i)
            {
                SerializedProperty row = allNotes.GetArrayElementAtIndex(i);
                SerializedProperty notes = row.FindPropertyRelative("notes");

                if (notes != null)
                    DrawRowNotes(notes, divisionLength);
            }
        }

        void DrawActiveNotes(Sequencer sequencer, float divisionLength)
        {
            if (sequencer.allNotes == null)
                return;

            for (int i = minKey; i <= maxKey; ++i)
            {
                NoteRow row = sequencer.allNotes[i];
                if (row != null)
                    DrawRowNotes(row.notes, divisionLength);
            }
        }

        void DrawPressedNotes(float divisionLength)
        {
            if (mode == Mode.kDraggingStart)
            {
                DrawNote(activeNote.note, activeTime / divisionLength,
                         activeNote.end / divisionLength, pressedCell);
            }
            else if (mode == Mode.kDraggingEnd)
            {
                DrawNote(activeNote.note, activeNote.start / divisionLength,
                         activeTime / divisionLength, pressedCell);
            }
            else if (mode == Mode.kAdding)
            {
                int startDragIndex = Mathf.Max(0, Mathf.FloorToInt(Mathf.Min(pressTime, dragTime) / divisionLength));
                int endDragIndex = (int)Mathf.Ceil(Mathf.Max(pressTime, dragTime) / divisionLength);

                for (int i = startDragIndex; i < endDragIndex; ++i)
                    DrawNote(pressNote, i, i + 1, pressedCell);
            }
        }

        void DrawPositionOverlay(Sequencer sequencer)
        {
            if (!sequencer.isActiveAndEnabled || !Application.isPlaying)
                return;

            float x = keyboardWidth + colWidth * sequencer.currentIndex;
            float height = numRows * rowHeight;
            EditorGUI.DrawRect(new Rect(x, 0, colWidth, height), lightenColor);
        }

        public float GetScrollPosition(Sequencer sequencer, float height)
        {
            float lowerBuffer = rowHeight * 8.0f;
            float totalHeight = sequencer.allNotes.Length * rowHeight;

            for (int i = 0; i < sequencer.allNotes.Length; ++i)
            {
                if (sequencer.allNotes[i] != null && sequencer.allNotes[i].notes.Count > 0)
                {
                    float noteY = (sequencer.allNotes.Length - i - 1) * rowHeight;
                    float bottom = Mathf.Clamp(noteY + lowerBuffer, height, totalHeight);
                    return bottom - height;
                }
            }

            return (sequencer.allNotes.Length * rowHeight - height) / 2.0f;
        }

        public float GetMaxHeight()
        {
            return maxRowHeight * (maxKey - minKey + 1);
        }

        public void DrawSequencer(Rect rect, Sequencer sequencer, SerializedProperty allNotes)
        {
            float divisionLength = sequencer.GetDivisionLength();
            numRows = maxKey - minKey + 1;
            numCols = Mathf.RoundToInt(sequencer.length / divisionLength);
            colWidth = (rect.width - keyboardWidth - rightPadding) / numCols;
            rowHeight = Mathf.Clamp(rect.height / numRows, minRowHeight, maxRowHeight);
            float scrollableWidth = numCols * colWidth + keyboardWidth + 1;
            float scrollableHeight = numRows * rowHeight;

            if (lastHeight != rect.height)
            {
                lastHeight = rect.height;
                scrollPosition.y = GetScrollPosition(sequencer, rect.height);
            }

            Rect scrollableArea = new Rect(0, 0, scrollableWidth, scrollableHeight);
            scrollPosition = GUI.BeginScrollView(rect, scrollPosition, scrollableArea, false, true);

            DrawNoteRows(scrollableArea);
            DrawBarHighlights(scrollableArea);
            DrawNoteDivisionLines(scrollableArea);
            DrawActiveNotes(sequencer, divisionLength);
            DrawPressedNotes(divisionLength);
            DrawPositionOverlay(sequencer);

            GUI.EndScrollView();
        }
    }
}
