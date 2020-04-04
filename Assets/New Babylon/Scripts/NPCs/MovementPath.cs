using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//use this script to pass an NPC a new path! 
namespace NPC
{ 
    //Can use this scriptable object to create various types of tasks for NPCs to assign the player from their Task Manager
    [CreateAssetMenu(fileName = "MovementData", menuName = "ScriptableObjects/MovementSriptable", order = 1)]
    public class MovementPath : ScriptableObject
    {
        public string pathName;
        public int pathIndex;
    }
}

