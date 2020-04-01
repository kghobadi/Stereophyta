using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cameras;

namespace NPC
{
    public class Controller : MonoBehaviour
    {
        //player and mode manager refs for all to share 
        [HideInInspector]
        public ThirdPersonController tpc;
        [HideInInspector]
        public Player.Inventory playerInventory;
        [HideInInspector]
        public Player.TaskManager pTaskManager;
        [HideInInspector]
        public CameraManager camManager;
        [HideInInspector]
        public NPCMovementManager moveManager;
      
        //npc state manager
        public NPCStates npcState;
        public enum NPCStates { IDLE, MOVING, TALKING, WAVING, ACTING, TRADING }

        public LayerMask npcLayer;

        Animations npcAnimations;
        public Animations Animation { get { return npcAnimations; } }

        Movement npcMovement;
        public Movement Movement { get { return npcMovement; } }

        Sounds npcSounds;
        public Sounds Sounds { get { return npcSounds; } }

        MonologueManager npcMonologues;
        public MonologueManager Monologues { get { return npcMonologues; } }

        TaskManager npcTasks;
        public TaskManager Tasks { get { return npcTasks; } }

        Inventory npcInventory;
        public Inventory Inventory { get { return npcInventory; } }

        private void Awake()
        {
            moveManager = FindObjectOfType<NPCMovementManager>();
            //npc component refs 
            npcAnimations = GetComponent<Animations>();
            npcMovement = GetComponent<Movement>();
            npcSounds = GetComponent<Sounds>();
            //prob need to fetch monologue text from children 
            npcMonologues = GetComponent<MonologueManager>();
            npcMonologues.npcController = this;
            if (npcMonologues == null)
                npcMonologues = GetComponentInChildren<MonologueManager>();
            npcTasks = GetComponent<TaskManager>();
            npcInventory = GetComponent<Inventory>();

            //player refs
            tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
            playerInventory = FindObjectOfType<Player.Inventory>();
            pTaskManager = FindObjectOfType<Player.TaskManager>();
            camManager = FindObjectOfType<CameraManager>();
        }
  
    }
}
