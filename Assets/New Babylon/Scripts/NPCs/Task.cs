using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    //Can use this scriptable object to create various types of tasks for NPCs to assign the player from their Task Manager
    [CreateAssetMenu(fileName = "TaskData", menuName = "ScriptableObjects/TaskScriptable", order = 1)]
    public class Task : ScriptableObject
    {
        public enum TaskType
        {
            FETCH, GOTO, 
        }
        public TaskType taskType;

        //FETCH 
        public Item.ItemType itemType;
        public Item.MiscType miscType;
        public Item.SeedType seedType;
        public Item.ToolType toolType; 
        public int desiredItemCount;

        //GOTO
        public Transform placeToGo;
    }
}

