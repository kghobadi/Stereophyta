using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace NPC
{
    //manages Tasks that an NPC can assign the player 
    public class TaskManager : MonoBehaviour
    {
        //controller & inventory refs 
        Controller npcController;
        Player.Inventory playerInventory;

        public List<Task> allMyTasks = new List<Task>();

        void Awake()
        {
            npcController = GetComponent<Controller>();
            playerInventory = FindObjectOfType<Player.Inventory>();
        }
        
        //need to be able to assign tasks once a monologue completes 
        public void AssignTask(Task task)
        {

        }

        //need to be able to assign tasks once a monologue completes 
        public void Complete(Task task)
        {

        }

        //use this to check on a task's completion 
        public void CheckTaskCompletion(Task task)
        {

        }
    }
}
