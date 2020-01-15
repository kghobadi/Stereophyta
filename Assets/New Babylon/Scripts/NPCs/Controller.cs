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
        public CameraManager camManager;

        //npc state manager
        public NPCStates npcState;
        public enum NPCStates { IDLE, MOVING, TALKING, ACTING, TRADING }

        public LayerMask npcLayer;

        Animations npcAnimations;
        public Animations Animation { get { return npcAnimations; } }

        Movement npcMovement;
        public Movement Movement { get { return npcMovement; } }

        Sounds npcSounds;
        public Sounds Sounds { get { return npcSounds; } }

        //Dialogues npcDialogues;
        //public Dialogues Dialogues { get { return npcDialogues; } }

        private void Awake()
        {
            //npc component refs 
            npcAnimations = GetComponent<Animations>();
            npcMovement = GetComponent<Movement>();
            npcSounds = GetComponent<Sounds>();
            //npcDialogues = GetComponent<Dialogues>();

            //player refs
            tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
            camManager = FindObjectOfType<CameraManager>();
        }
  
    }
}
