using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Can use this scriptable object to create various types of tasks for NPCs to assign the player from their Task Manager
namespace NPC
{
    [CreateAssetMenu(fileName = "TaskData", menuName = "ScriptableObjects/TaskScriptable", order = 1)]
    public class Task : ScriptableObject
    {
        [Header("Requirements")]
        [Tooltip("Who assigns this task?")]
        public string taskOwner;

        public enum TaskType
        {
            FETCH, GOTO, PLANT, PLACEITEM, CUT
        }
        public TaskType taskType;
        
        [Header("Item Characteristics")]
        public Item.ItemType itemType;
        public Item.ToolType toolType;
        public Item.MiscType miscType;
        public Item.SeedType seedType;
        //for seeds 
        public Plont.PlantType cropType;
        public Shroom.ShroomType shroomType;

        //FETCH 
        [Header("Fetch/Plant")]
        public string itemName;
        public int desiredItemCount;

        //GOTO 
        [Header("Go-to")]
        public string zoneName;
        
        //CUT 

        [Header("Outcomes")] // what happens when this task is complete?
        public bool triggersMonologues;
        public int [] monologueIndeces;
        public bool disablesMonologues;
        public int[] monoDisables;
        //rewards?
    }
}



