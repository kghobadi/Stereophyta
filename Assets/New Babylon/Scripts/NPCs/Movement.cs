using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace NPC
{
    public class Movement : MonoBehaviour
    {
        //controller pieces 
        Controller controller;
        ThirdPersonController player;
        Animations npcAnimations;
        Sounds npcSounds;
        Camera mainCam;

        [Header("AI Movement Settings")]
        public LayerMask grounded;
        [HideInInspector]
        public NavMeshAgent myNavMesh;
        Vector3 origPosition;
        public Vector3 targetPosition;

        //state timers 
        public float normalSpeed = 8f;
        public float stateTimer;
        public float idleTime, actionTime;
        public float interactDistance;
        public bool waves;
        public bool waving, hasWaved;
        public float waveTimer, waveWaitTime;
        public bool waitingToGiveMonologue;

        //interaction menu
        public float interactMenuTimer, interactMenuTimeTotal = 3f;
        
        //chosen in editor 
        public NPCMovementTypes npcType;
        public enum NPCMovementTypes
        {
            WAYPOINT, RANDOM, IDLE, PATHFINDER,
        }

        [Header("Wanderer Settings")]
        public Transform[] waypoints;
        public int waypointCounter = 0;

        [Header("Random Settings")]
        public float movementRadius;
        
        void Start()
        {
            controller = GetComponent<Controller>();
            player = controller.tpc;
            npcAnimations = controller.Animation;
            npcSounds = controller.Sounds;
            mainCam = Camera.main;

            myNavMesh = GetComponent<NavMeshAgent>();
            origPosition = transform.position;
            SetIdle();
        }

        void Update()
        {
            //distance from player calc
            float distFromPlayer = Vector3.Distance(transform.position, player.transform.position);

            //check dist against talking
            if (distFromPlayer < interactDistance)
            {
                //character will wave at player periodically 
                if (waves)
                {
                    //triggers wave if has not waved and not talking / following 
                    if (!hasWaved
                        && controller.npcState != Controller.NPCStates.TALKING
                        )
                    {
                        StartCoroutine(WaveAtPlayer());
                    }
                }
            }
            //player is far away 
            else
            {
              
            }

            //IDLE
            if (controller.npcState == Controller.NPCStates.IDLE)
            {
                stateTimer -= Time.deltaTime;

                //if we are not IDLE npc, idle state has a countdown until movement 
                if (npcType != NPCMovementTypes.IDLE && !waving)
                {
                    if (stateTimer < 0)
                    {
                        //Set destination based on npc type 
                        if (npcType == NPCMovementTypes.RANDOM)
                        {
                            //Debug.Log("calling radials");
                            SetRandomDestination();
                        }
                        else if (npcType == NPCMovementTypes.WAYPOINT)
                        {
                            //Debug.Log("calling waypoints");
                            SetWaypoint();
                        }
                    }
                }

                //waits until player is near then walks to next point 
                if(npcType == NPCMovementTypes.PATHFINDER)
                {
                    if (!waitingToGiveMonologue)
                    {
                        //goes to next point if timer reaches 0 or player is near 
                        if ((distFromPlayer < interactDistance || stateTimer < 0) && waypointCounter < waypoints.Length - 1)
                        {
                            SetWaypoint();
                        }
                    }
                    //look at player
                    else
                    {
                        Vector3 lookAtPos = new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z);
                        transform.LookAt(lookAtPos);
                    }
                }
            }

            //set moveSpeed in animator
            npcAnimations.characterAnimator.SetFloat("MoveSpeed", myNavMesh.velocity.magnitude);

            //MOVING 
            if (controller.npcState == Controller.NPCStates.MOVING)
            {
                //looks at targetPos when not waving 
                if (!waving)
                {
                    transform.LookAt(new Vector3(targetPosition.x, transform.position.y, targetPosition.z));
                }

                //stop running after we are close to position
                if (Vector3.Distance(transform.position, targetPosition) < myNavMesh.stoppingDistance)
                {
                    SetIdle();
                }
            }

            //resets wave with timer
            if (hasWaved && !waving)
            {
                waveTimer -= Time.deltaTime;
                if (waveTimer < 0)
                {
                    hasWaved = false;
                }
            }

        }

        //stops movement
        public virtual void SetIdle()
        {
            myNavMesh.isStopped = true;
            ResetStateTimer(idleTime);
            npcAnimations.SetAnimator("idle");
            controller.npcState = Controller.NPCStates.IDLE;
        }

        //resets state timer to float time + random range 
        void ResetStateTimer(float time)
        {
            stateTimer = time + Random.Range(-1f, 1f);
        }

        //this function sets a random point as the nav mesh destination
        //checks if the NPC can walk there before setting it
        //sets animator correctly
        public virtual void SetWaypoint()
        {
            //increment waypoint counter
            if (waypointCounter < waypoints.Length - 1)
            {
                waypointCounter++;
            }
            else
            {
                waypointCounter = 0;
            }

            //set point to cast from 
            Vector3 castPoint = waypoints[waypointCounter].position;

            NavigateToPoint(castPoint);
        }

        //this function sets a random point as the nav mesh destination
        //checks if the NPC can walk there before setting it
        //sets animator correctly
        public virtual void SetRandomDestination()
        {
            Vector2 xz = Random.insideUnitCircle * movementRadius;

            Vector3 castPoint = new Vector3(xz.x + origPosition.x, transform.position.y + 10, xz.y + origPosition.z);

            NavigateToPoint(castPoint);
        }

        //base function for actually navigating to a point 
        public virtual void NavigateToPoint(Vector3 castPoint)
        {
            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(castPoint, Vector3.down, out hit, Mathf.Infinity, grounded))
            {
                targetPosition = hit.point;
            }

            myNavMesh.SetDestination(targetPosition);

            myNavMesh.isStopped = false;

            //set moving 
            controller.npcState = Controller.NPCStates.MOVING;
            npcAnimations.SetAnimator("walking");
        }

        //public call for wave
        public void Wave()
        {
            StartCoroutine(WaveAtPlayer());
        }

        //NPC looks at player and waves 
        IEnumerator WaveAtPlayer()
        {
            waving = true;

            //stop navmesh & look at player while waving 
            myNavMesh.isStopped = true;
            npcAnimations.characterAnimator.SetTrigger("wave");
            transform.LookAt(new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z));

            //this will reset wave with timer in update
            hasWaved = true;
            waveTimer = waveWaitTime;

            //greeting sound
            npcSounds.PlaySoundRandomPitch(npcSounds.greeting, 1f);

            yield return new WaitForSeconds(5f);

            //is moving state, go back to walking 
            if (controller.npcState == Controller.NPCStates.MOVING)
            {
                myNavMesh.isStopped = false;
                npcAnimations.SetAnimator("walking");
            }
            //is idle state, go back to idling
            else if (controller.npcState == Controller.NPCStates.IDLE)
            {
                npcAnimations.SetAnimator("idle");
            }

            waving = false;
        }

       
        
    }
}
