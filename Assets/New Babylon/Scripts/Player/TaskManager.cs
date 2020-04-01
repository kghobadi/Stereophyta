using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NPC; 

namespace Player
{
    public class TaskManager : MonoBehaviour
    {
        public List<Task> activeTasks = new List<Task>();
        public List<Task> completedTasks = new List<Task>();
    }
}

