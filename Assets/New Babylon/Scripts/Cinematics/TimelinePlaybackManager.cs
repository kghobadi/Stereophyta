using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Timeline;
using UnityEngine.Playables;
using UnityEngine.AI;

public class TimelinePlaybackManager : MonoBehaviour {
	[Header("Timeline References")]
	public PlayableDirector playableDirector;

	[Header("Timeline Settings")]
	public bool playTimelineOnlyOnce = true;

	[Header("Player Input Settings")]
	public KeyCode interactKey;
	public bool disablePlayerInput = false;
	private ThirdPersonController inputController;

	[Header("Player Timeline Position")]
	public bool parentPlayerToPos = false;
	public Transform playerTimelinePosition;
    public Transform playerExitPosition;

    [Header("NPC Character Settings")]
    //into cinematic
    public Transform[] characterTransforms;
    public Transform[] newCharacterPositions;
    public bool[] parentCharacters;
    //leaving cinematic
    public Transform[] exitPositions;
    public NPC.MovementPath[] exitBehaviors;

    [Header("Trigger Zone Settings")]
	public GameObject triggerZoneObject;

	[Header("UI Interact Settings")]
	public bool displayUI;
	public GameObject interactDisplay;

    [Header("Player Settings")]
	public string playerTag = "Player";
	private GameObject playerObject;
	private PlayerCutsceneSpeedController playerCutsceneSpeedController;

	private bool playerInZone = false;
	private bool timelinePlaying = false;
	private float timelineDuration;

    void Awake()
    {
        playerObject = GameObject.FindWithTag(playerTag);
        inputController = playerObject.GetComponent<ThirdPersonController>();
        playerCutsceneSpeedController = playerObject.GetComponent<PlayerCutsceneSpeedController>();
    }

    void Start()
    {
        ToggleInteractUI(false);
    }

    public void PlayerEnteredZone()
    {
		playerInZone = true;
		ToggleInteractUI (playerInZone);
	}

	public void PlayerExitedZone()
    {
		playerInZone = false;
		ToggleInteractUI (playerInZone);
	}
		
	void Update()
    {
		if (playerInZone && !timelinePlaying)
        {
			var activateTimelineInput = Input.GetKey (interactKey);

			if (interactKey == KeyCode.None)
            {
				PlayTimeline ();
			}
            else
            {
				if (activateTimelineInput)
                {
					PlayTimeline ();
					ToggleInteractUI (false);
				}
			}
		}

        //cinematic is active!
        if (timelinePlaying)
        {
            //hard set rotations of parented characters 
            for (int i = 0; i < characterTransforms.Length; i++)
            {
                if (parentCharacters[i])
                {
                    characterTransforms[i].localEulerAngles = Vector3.zero; 
                }
            }
        }
	}

    //STARTS TIMELINE 
	public void PlayTimeline(){

		if (playerTimelinePosition)
        {
			SetPlayerToTimelinePosition (playerTimelinePosition, parentPlayerToPos);
		}

        if(characterTransforms.Length > 0)
        {
            for(int i = 0; i < characterTransforms.Length; i++)
            {
                SetCharacterPosition(i);
            }
        }

		if (playableDirector)
        {
			playableDirector.Play ();
		}

		timelinePlaying = true;
			
		StartCoroutine (WaitForTimelineToFinish());
	}

    //TIMELINE wait -- END
	IEnumerator WaitForTimelineToFinish(){

		timelineDuration = (float)playableDirector.duration;
		
		ToggleInput (false);
		yield return new WaitForSeconds(timelineDuration);
		ToggleInput (true);
        
		if (!playTimelineOnlyOnce)
        {
			triggerZoneObject.SetActive (true);
		}
        else if (playTimelineOnlyOnce)
        {
			playerInZone = false;
		}

        SetPlayerToTimelinePosition(playerExitPosition, false);

        if (characterTransforms.Length > 0)
        {
            for(int i = 0; i < characterTransforms.Length; i++)
            {
                ResetCharacters(i);
            }
        }

        timelinePlaying = false;
	}
		
	void ToggleInput(bool newState)
    {
		if (disablePlayerInput)
        {
			playerCutsceneSpeedController.SetPlayerSpeed ();
			inputController.playerCanMove = newState;
		}
	}
    
	void ToggleInteractUI(bool newState)
    {
		if (displayUI)
        {
			interactDisplay.SetActive (newState);
		}
	}

    //called when cinematic begins 
	void SetPlayerToTimelinePosition(Transform pos, bool parent)
    {
        if (parent)
            playerObject.transform.SetParent(pos);
        else
            playerObject.transform.SetParent(null);
        playerObject.transform.position = pos.position;
		playerObject.transform.localRotation = pos.rotation;
	}

    //called when cinematic begins 
    void SetCharacterPosition(int index)
    {
        //disable npc movement 
        NPC.Movement mover = characterTransforms[index].GetComponent<NPC.Movement>();
        if (mover)
        {
            characterTransforms[index].GetComponent<NPC.Movement>().enabled = false;
            characterTransforms[index].GetComponent<NavMeshAgent>().enabled = false;
        }

        //check for cloth component
        Cloth cloth = characterTransforms[index].GetComponentInChildren<Cloth>();
        if (cloth)
            cloth.enabled = false;

        if (parentCharacters[index])
            characterTransforms[index].SetParent(newCharacterPositions[index]);
        characterTransforms[index].position = newCharacterPositions[index].position;
        characterTransforms[index].localRotation = newCharacterPositions[index].rotation;

        //reset cloth after move 
        if (cloth)
            cloth.enabled = true;
    }

    //called when cinematic ends 
    void ResetCharacters(int index)
    {
        //disable the boats animator...
        if(characterTransforms[index].gameObject.name == "canoe")
        {
            characterTransforms[index].GetComponent<Animator>().enabled = false;
        }

        if (parentCharacters[index])
            characterTransforms[index].SetParent(null);
        characterTransforms[index].position = exitPositions[index].position;
        characterTransforms[index].localRotation = exitPositions[index].rotation;

        //enable npc movement 
        NPC.Movement mover = characterTransforms[index].GetComponent<NPC.Movement>();
        if (mover)
        {
            characterTransforms[index].GetComponent<NavMeshAgent>().enabled = true;
            mover.ResetMovement(exitBehaviors[index]);
            mover.enabled = true;
        }
    }

}