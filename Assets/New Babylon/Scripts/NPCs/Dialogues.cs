//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using Yarn.Unity;

////Rick -- OnDepositMedia is at the  very bottom 

//namespace NPC
//{
//    [System.Serializable]
//    public struct Dialogue
//    {
//        //name of the node we want to trigger (must exist within a textAsset placed in the DialogueRunner)
//        public string talkToNode;
//        //is this dialogue a request for a photo?
//        public bool requestTrigger;
//        //if request is true, then to complete this dialogue the player must have a photo in their Gallery with these tags
//        public string[] requestedMediaTags;
//        //these get called based on if the player completes a request or not 
//        public string successNode, failureNode;
//        //image for request marker sprite
//        public Sprite requestMarker;
//        //does this request enable following 
//        public bool enablesFollowing;
//    }


//    public class Dialogues : Controller
//    {
//        [Header("Dialogue Settings")]
//        public GameObject dialogueObject;
//        Trigger dialogueTrigger;
//        DialogueRunner dialogueRunner;
//        DialogueAudio dialogueAudio;
//        DialogueUI dialogueUI;
//        public WorldSpaceDialogue wsdialogueContainer;
//        public AudioClip[] dialogueVoiceClips;

//        //name of character 
//        public string characterName = "";
//        //all my dialogue nodes, in order
//        public Dialogue[] dialogues;
//        public int currentDialogue = 0;
//        public bool startedTalking;
//        public TextAsset scriptToLoad;
//        public float autoEndTimer, autoEndTime = 0.5f;
//        public string currentNode;
        
//        public SpriteRenderer requestMarker;
//        public Sprite markerSprite;

//        void Start()
//        {
//            //player & mode manager
//            npcMovement = controller.Movement;
//            npcAnimations = controller.Animation;
//            npcSounds = controller.Sounds;

//            //dialogue refs
//            dialogueTrigger = GetComponentInChildren<Trigger>();
//            dialogueMode = dialogueObject.GetComponent<Mode>();
//            dialogueRunner = dialogueObject.GetComponent<DialogueRunner>();
//            dialogueAudio = dialogueObject.GetComponent<DialogueAudio>();
//            dialogueUI = dialogueObject.GetComponent<DialogueUI>();
          
//            //other refs 
//            mediaChecker = GetComponent<CheckMedia>();
//            galleryScript = GameObject.FindGameObjectWithTag("Gallery").GetComponent<Capture.Gallery.Controller>();
//            DisableRequestMarker();

//            if (scriptToLoad != null)
//            {
//                FindObjectOfType<DialogueRunner>().AddScript(scriptToLoad);
//            }
//        }

//        protected override void Update()
//        {
//            base.Update();

//            //check if player enabled dialogue && the trigger was Mine -- set talking 
//            if (dialogueMode.Active && dialogueMode.triggeredBy == dialogueTrigger && !startedTalking)
//            {
//                npcMovement.SetIdle();
//                StartDialogue(dialogues[currentDialogue].talkToNode);
//            }

//            //IN DIALOGUE WITH PLAYER
//            if (controller.npcState == Controller.NPCStates.TALKING)
//            {
//                // look at player 
//                transform.LookAt(new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z));
//                //player looks at me 
//                player.transform.LookAt(new Vector3(transform.position.x, player.transform.position.y, transform.position.z));

//                //make sure I am in speaking anim
//                if (npcAnimations.characterAnimator.GetBool("speaking") == false)
//                {
//                    npcAnimations.SetAnimator("speaking");
//                }

//                //run that dialogue!
//                if (dialogueRunner.isDialogueRunning == false )
//                {
//                    autoEndTimer -= Time.deltaTime;

//                    if (autoEndTimer < 0)
//                    {
//                        //auto end here 
//                        EndDialogue(currentNode);
//                    }
//                }

//                //we've turned off mode 
//                if (dialogueMode.Active == false)
//                {
//                    EndDialogue(currentNode);
//                }

//                //player out of distance range 
//                if(Vector3.Distance(player.transform.position, transform.position) > npcMovement.interactDistance + 10f)
//                {
//                    EndDialogue(currentNode);
//                }
//            }
//        }

//        //advance to next dialogue 
//        void ProgressDialogue()
//        {
//            if (currentDialogue < dialogues.Length - 1)
//            {
//                currentDialogue++;
//            }
//        }

//        //set Dialogue Audio voice clips 
//        void SetVoiceClips()
//        {
//            //set the dialogue audio
//            if (dialogueVoiceClips.Length > 0)
//            {
//                dialogueAudio.currentVoiceClips = dialogueVoiceClips;
//            }
//            //no clips on this NPC, use default to speak with 
//            else
//            {
//                dialogueAudio.currentVoiceClips = dialogueAudio.defaultVoiceClips;
//            }
//            //set pitch range to my voice 
//            dialogueAudio.pitchRange = controller.Sounds.pitchRange;
//        }

//        //begins a dialogue at node
//        public void StartDialogue(string node)
//        {
//            //set npc state 
//            controller.npcState = Controller.NPCStates.TALKING;
//            npcAnimations.SetAnimator("speaking");
//            SetVoiceClips();
//            DisableRequestMarker();
//            npcMovement.interactMenuFader.Hide();
//            player.Movement.SetIdle();
//            player.Movement.canMove = false;

//            //set the dialogue 
//            if (npcMovement.following)
//            {
//                dialogueRunner.StartDialogue("follow");
//            }
//            else
//            {
//                dialogueRunner.StartDialogue(node);
//            }
//            startedTalking = true;
//            autoEndTimer = autoEndTime;
//            currentNode = node;
//        }

//        //ends dialogue at node 
//        public void EndDialogue(string node)
//        {
//            //finishing initial talkToNode
//            if(node == dialogues[currentDialogue].talkToNode)
//            {
//                //is this a request dialogue?
//                if (dialogues[currentDialogue].requestTrigger)
//                {
//                    //disable dialogue 
//                    DisableDialogue();
//                    EnableRequestMarker();
//                }
//                //normal dialogue -- progress
//                else
//                {
//                    DisableDialogue();
//                    ProgressDialogue();
//                }
//            }
//            //was successful, but now success dialogue is over 
//            else if(node == dialogues[currentDialogue].successNode)
//            {  
//                //enable following 
//                if (dialogues[currentDialogue].enablesFollowing)
//                {
//                    npcMovement.followingAbilityEnabled = true;
//                }

//                DisableDialogue();
//                ProgressDialogue();
                
//            }
//            //failed, just end dialogue and allow person to return to begin talkToNode again
//            else if (node == dialogues[currentDialogue].failureNode)
//            {
//                DisableDialogue();
//            }
//        }

//        //turn off dialogue Mode if active
//        void DisableDialogue()
//        {
//            //resets npc movement stuff 
//            npcMovement.waveTimer = npcMovement.waveWaitTime;
//            npcMovement.SetIdle();
//            npcSounds.PlaySoundRandomPitch(npcSounds.goodbye, 0.5f);
//            dialogueRunner.Stop();
//            dialogueUI.dialogueContainer.SetActive(false);
//            startedTalking = false;
//            DisableRequestMarker();
//            player.Movement.canMove = true;

//            if (dialogueMode.Active)
//            {
//                modeManager.Revert();
//            }
//        }

//        //turn on request marker 
//        void EnableRequestMarker()
//        {
//            //use the specific sprite for the currentDialogue
//            if (dialogues[currentDialogue].requestMarker != null)
//            {
//                requestMarker.sprite = dialogues[currentDialogue].requestMarker;
//            }
//            //use this npc's default marker sprite 
//            else
//            {
//                requestMarker.sprite = markerSprite;
//            }
//            requestMarker.enabled = true;
//        }

//        //turns off quest marker (could play cool resolved animation)
//        void DisableRequestMarker()
//        {
//            requestMarker.enabled = false;
//        }


//        //For plugging into Drag/Drop 
//        //when player deposits photo from gallery -- check that photo 
//        public void OnDepositMedia(Media media)
//        {
//            //photo input needs to be changed based on what player drops on NPC 
//            bool mediaMeetsRequest = mediaChecker.CheckIndividualMedia(media, dialogues[currentDialogue].requestedMediaTags);

//            //success :)))
//            if (mediaMeetsRequest)
//            {
//                //this needs to enter dialogue mode first . . .
//                dialogueTrigger.TriggeredBy();
//                modeManager.SetMode(dialogueMode);
//                player.Movement.canMove = false;
//                StartDialogue(dialogues[currentDialogue].successNode);
//            }
//            //failure :(((
//            else
//            {
//                //this needs to enter dialogue mode first . . .
//                dialogueTrigger.TriggeredBy();
//                modeManager.SetMode(dialogueMode);
//                player.Movement.canMove = false;
//                StartDialogue(dialogues[currentDialogue].failureNode);
//            }
//        }
      
//    }
//}


