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
        Footsteps footsteps;
        NPCMovementManager movementManager;
        StartView startViewer;
        MonologueManager monoManager;

        [Header("AI Movement Settings")]
        public LayerMask grounded;
        [HideInInspector]
        public NavMeshAgent myNavMesh;
        Vector3 origPosition;
        public Transform startingPos;
        public MovementPath startBehavior;
        public Vector3 targetPosition;
        float distFromPlayer;

        //state timers 
        public float normalSpeed = 8f;
        public float stateTimer, actionTimer;
        public float idleTime, actionTime;
        public float interactDistance;
        public float lookSmooth = 5f;

        [Header("Waving")]
        public bool waves;
        public bool waving, hasWaved;
        public float waveTimer, waveWaitTime;
        public bool waitingToGiveMonologue;
        public float monologueWaitTimer = 0f, monoWaitTime = 30f;
        
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

        void Awake()
        {
            controller = GetComponent<Controller>();
            footsteps = GetComponent<Footsteps>();
            player = controller.tpc;
            npcAnimations = GetComponent<Animations>();
            npcSounds = GetComponent<Sounds>();
            mainCam = Camera.main;
            myNavMesh = GetComponent<NavMeshAgent>();
            movementManager = FindObjectOfType<NPCMovementManager>();
            startViewer = FindObjectOfType<StartView>();
            monoManager = controller.Monologues;
        }

        void Start()
        {
            //set satil's home island loop if player starts there 
            if(gameObject.name == "Satil")
            {
                //check if this is the last zone --> set as starting zone 
                if (PlayerPrefs.HasKey("lastZone") )
                {
                    if(PlayerPrefs.GetString("lastZone") != "MountainIsland")
                    {
                        //set pos & behavior
                        myNavMesh.enabled = false;
                        transform.position = startingPos.position;
                        ResetMovement(startBehavior);
                        myNavMesh.enabled = true;
                    }
                }
            }

            origPosition = transform.position;
            SetIdle();
        }

        void Update()
        {
            //set moveSpeed in animator
            npcAnimations.characterAnimator.SetFloat("MoveSpeed", myNavMesh.velocity.magnitude);
            //dist from player 
            DistanceCheck();
            //idle state
            Idle();
            //moving state
            Moving();
            //talking state
            Talking();
            //reset wave timer
            WaveReset();
        }

        //checks distance from player && runs corresponding behaviors
        void DistanceCheck()
        {
            //distance from player calc
            distFromPlayer = Vector3.Distance(transform.position, player.transform.position);

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
        }

        //NPC idle state 
        void Idle()
        {
            if (controller.npcState == Controller.NPCStates.IDLE)
            {
                stateTimer -= Time.deltaTime;

                //set footstep timer to 0 since we arent moving 
                if (footsteps)
                    footsteps.footstepTimer = 0;

                //if we are not IDLE npc, idle state has a countdown until movement 
                if (npcType == NPCMovementTypes.IDLE)
                {
                    //play a sound
                    if (stateTimer < 0 && !waving && !controller.Monologues.inMonologue)
                    {
                        if(npcSounds.idleSounds.Length > 0)
                            npcSounds.PlayRandomSoundRandomPitch(npcSounds.idleSounds, npcSounds.myAudioSource.volume);

                        npcAnimations.Animator.SetTrigger("action1");

                        stateTimer = idleTime;
                    }
                }
                //Set destination based on npc type 
                else if (npcType == NPCMovementTypes.RANDOM)
                {
                    if (stateTimer < 0 && !waving)
                    {
                        //Debug.Log("calling radials");
                        SetRandomDestination();
                    }

                }
                //looping waypoints npc 
                else if (npcType == NPCMovementTypes.WAYPOINT)
                {
                    if (stateTimer < 0 && !waving)
                    {
                        //Debug.Log("calling waypoints");
                        SetWaypoint(true);
                    }
                }
                //waits until player is near then walks to next point 
                else if (npcType == NPCMovementTypes.PATHFINDER)
                {
                    actionTimer -= Time.deltaTime;

                    //play a sound (cough)
                    if (actionTimer < 0 && !waving && !controller.Monologues.inMonologue)
                    {
                        if(npcSounds.myAudioSource.isPlaying == false)
                        {
                            if (npcSounds.idleSounds.Length > 0)
                                npcSounds.PlayRandomSoundRandomPitch(npcSounds.idleSounds, npcSounds.myAudioSource.volume);

                            npcAnimations.Animator.SetTrigger("action1");
                            
                            actionTimer = actionTime;
                        }
                    }

                    //goes to next point if timer reaches 0 or player is near 
                    //Only does this if there are currenltly points in my list 
                    if (!waitingToGiveMonologue)
                    {
                        if (distFromPlayer < interactDistance || stateTimer < 0)
                        {
                            if (waypointCounter < waypoints.Length - 1)
                            {
                                SetWaypoint(false);
                            }
                        }
                    }
                    //waiting to give monologue -- look at player 
                    else
                    {
                        LookAtObject(player.transform.position, true);

                        //dont want this to count until start view is inactive 
                        if(startViewer.active == false)
                            monologueWaitTimer += Time.deltaTime;

                        //stop waiting for monologue IF not in monologue 
                        if(monologueWaitTimer > monoWaitTime && !monoManager.inMonologue)
                        {
                            waitingToGiveMonologue = false;

                            monologueWaitTimer = 0;

                            //deactivate monologue trigger if it does not repeat 
                            if (!monoManager.allMyMonologues[monoManager.currentMonologue].repeatsAtFinish)
                            {
                                MonologueTrigger m_Trigger = controller.wmManager.allMonologues[monoManager.allMyMonologues[monoManager.currentMonologue].worldMonoIndex].mTrigger;
                                if (m_Trigger.displayUI)
                                    m_Trigger.ToggleInteractUI(false);
                                m_Trigger.gameObject.SetActive(false);
                            }
                        }
                    }
                }
            }
        }

        //resets the AI's movement type / path 
        public void ResetMovement(MovementPath newMove)
        {
            npcType = movementManager.movementPaths[newMove.pathIndex].moveType;

            //random npc move type 
            if(npcType == NPCMovementTypes.RANDOM)
            {
                movementRadius = movementManager.movementPaths[newMove.pathIndex].moveRadius;
            }
            //pathfinder or waypoint looper 
            else if(npcType == NPCMovementTypes.PATHFINDER || npcType == NPCMovementTypes.WAYPOINT)
            {
                waypoints = movementManager.movementPaths[newMove.pathIndex].movementPoints;
                waypointCounter = 0;

                waitingToGiveMonologue = false;
            }
        }

        //MOVING state
        void Moving()
        {
            //state check
            if (controller.npcState == Controller.NPCStates.MOVING)
            {
                //looks at targetPos when not waving 
                if (!waving)
                {
                    LookAtObject(targetPosition, false);
                }

                //footsteps 
                if (footsteps)
                {
                    footsteps.FootstepCountdown(footsteps.walkStepTotal);
                }

                //stop running after we are close to position
                if (Vector3.Distance(transform.position, targetPosition) < myNavMesh.stoppingDistance + 3f)
                {
                    SetIdle();
                }
            }
        }

        //Talking state --
        // can move to targetPosition, then ready to deliver monologue until player is near 
        void Talking()
        {
            //state check 
            if(controller.npcState == Controller.NPCStates.TALKING)
            {

            }
        }

        //looks at object
        void LookAtObject(Vector3 pos, bool useMyY)
        {
            //empty Vector 3
            Vector3 direction;

            //use my y Pos in Look pos
            if (useMyY)
            {
                //find direction from me to obj
                Vector3 posWithMyY = new Vector3(pos.x, transform.position.y, pos.z);
                direction = posWithMyY - transform.position;
            }
            //use obj y pos in Look pos
            else
            {
                //find direction from me to obj
                direction = pos - transform.position;
            }
           
            //find target look
            Quaternion targetLook = Quaternion.LookRotation(direction);
            //actually rotate the character 
            transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, lookSmooth * Time.deltaTime);
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
        public virtual void SetWaypoint(bool looping)
        {
            //when it reaches final point in list, it will reset counter to 0
            if (looping)
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
            }
            //just goes until last point then stops
            else
            {
                //increment waypoint counter
                if (waypointCounter < waypoints.Length - 1)
                {
                    waypointCounter++;
                }
            }

            //set point to cast from 
            Vector3 castPoint = waypoints[waypointCounter].position;

            NavigateToPoint(castPoint, false);
        }

        //this function sets a random point as the nav mesh destination
        //checks if the NPC can walk there before setting it
        //sets animator correctly
        public virtual void SetRandomDestination()
        {
            Vector2 xz = Random.insideUnitCircle * movementRadius;

            Vector3 castPoint = new Vector3(xz.x + origPosition.x, transform.position.y + 10, xz.y + origPosition.z);

            NavigateToPoint(castPoint, false);
        }

        //base function for actually navigating to a point 
        public virtual void NavigateToPoint(Vector3 castPoint, bool hasMono)
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

            //character will wait when it arrives at point 
            if (hasMono)
            {
                waitingToGiveMonologue = true;
            }
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

        //resets wave action
        void WaveReset()
        {
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
        
    }
}
