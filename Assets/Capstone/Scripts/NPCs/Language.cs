using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

[Serializable]
public struct NumberedImage
{
    public Sprite[] imageArray; //array of images to allow for one pic or animation
}

[Serializable]
public struct Dialogue
{
    public bool questLine; // set to true if this is a quest
    public int[] wordNumbers; // array of ints to choose from words and images
}

[Serializable]
public struct QuestObjects
{
    public Image questImage; //this gets manually set in the inspector
    public int pictureArray; //corresponds to picture[].imageArray
    public Sprite foundObject; // a single image for completed quest object
    public string objectTag, objectType;
    //has this quest been fulfilled
    public bool fulfilled;
    //use to set number of objects desired
    public int foundObjCount, desiredAmount;
}

public class Language : MonoBehaviour
{
    //list of all English words/phrases that shall be used for translation
    public List<string> englishWords = new List<string>();
    //private lists for storing dialogue cloud stuff
    List<Sprite> cloudImages = new List<Sprite>();
    List<Sprite> popImages = new List<Sprite>();
    //list of struct to allow us to make many different word/image combos
    public List<NumberedImage> pictures = new List<NumberedImage>();
    //list of sounds that will be emitted based on english words
    public List<AudioClip> sounds = new List<AudioClip>();

    //will contain whatever string of words waiting to be said 
    public int[] currentDialogue;
    public int dialogueCounter = 0;
    //used to store string arrays of all an NPCs dialogue throughout the game 
    //because this is an array List, when we reset dialogue we can count upward to find the next string[]
    public Dialogue[] allDialogues;

    //array of QuestObject struct
    public QuestObjects[] allQuestObjects;

    //UI object refs 
    //Image container which switches out images and can be animated
    Image imageDisplay, thoughtCloud;
    AnimateDialogue imageAnimator, cloudAnimator;
    //any effects which emit from speaking character
    AudioSource voice;

    //timer for speaking, distance check for quest items
    public float waitTime = 0, waitTimeTotal = 0.5f, checkRadius;
    public bool questActive, talking, advance, waitingForPlayer, playerResponded, finishedQuest;
    //number of quest objs fulfilled
    int fullfilledCount = 0;

    //pops up when player has not clicked thru dialogue yet
    Image clickReminder;
    float reminderTimer = 0f, reminderTimerTotal = 2f;

    CameraController mainCam;
    GameObject _player;
    ThirdPersonController tpc;
    public AudioMixerSnapshot currentMixerGroup, talkingMix;

    //UI talking
    Image symbol; // 2d sprite renderer icon reference
    AnimateUI symbolAnimator;
    List<Sprite> talkingSprites = new List<Sprite>(); // walking feet cursor
    int currentTalk = 0;

    public void Start()
    {
        //player refs
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();
       
        //some UI refs
        thoughtCloud = GameObject.FindGameObjectWithTag("ThoughtCloud").GetComponent<Image>();
        cloudAnimator = thoughtCloud.gameObject.GetComponent<AnimateDialogue>();

        imageDisplay = GameObject.FindGameObjectWithTag("SpeechImage").GetComponent<Image>();
        clickReminder = GameObject.FindGameObjectWithTag("ClickReminder").GetComponent<Image>();

        //gotta manually set numbers on for loop to load right stuff from resources
        for (int i = 1; i < 5; i++)
        {
            cloudImages.Add(Resources.Load<Sprite>("Language/Thought " + i));
        }
        for (int i = 1; i < 4; i++)
        {
            popImages.Add(Resources.Load<Sprite>("Language/ThoughtPop " + i));
        }
        
        //get all Image component refs
        for(int i = 0; i < allQuestObjects.Length; i++)
        {
            allQuestObjects[i].questImage.enabled = false;
        }

        //talking UI
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<Image>(); //searches for InteractSymbol
        symbolAnimator = symbol.GetComponent<AnimateUI>();
        for (int i = 1; i < 4; i++)
        {
            talkingSprites.Add(Resources.Load<Sprite>("CursorSprites/talk " + i));
        }

        imageAnimator = imageDisplay.gameObject.GetComponent<AnimateDialogue>();

        //turn off everything at start
        thoughtCloud.enabled = false;
        cloudAnimator.active = false;
        imageDisplay.enabled = false;
        imageAnimator.active = false;
        clickReminder.GetComponent<AnimateDialogue>().active = true;
        clickReminder.enabled = false;
        voice = GetComponent<AudioSource>();

        //set current dialogue and check if quest line
        currentDialogue = allDialogues[dialogueCounter].wordNumbers;
        questActive = allDialogues[dialogueCounter].questLine;

        mainCam = Camera.main.GetComponent<CameraController>();
    }

    private void OnDrawGizmos()
    {
        //so we can see quest check radius in scene
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(transform.position, checkRadius);
    }

  

    public void Update()
    {
        //checks for mouse input to advance dialogue
        if (talking)
        {
            symbolAnimator.animationSprites = talkingSprites;
            symbolAnimator.active = true;
            //delay for click to process stuff
            if (!advance)
            {
                waitTime += Time.deltaTime;
                if (Input.GetMouseButtonDown(0) && waitTime > waitTimeTotal)
                {
                    advance = true;
                    waitTime = 0f;
                }
            }
            
            
        }
        //if dialogue active and the player hasn't advanced
        if (talking && !advance)
        {
            //wait a sec, then remind them to click!
            reminderTimer += Time.deltaTime;
            if(reminderTimer > reminderTimerTotal)
            {
                clickReminder.enabled = true;
            }
        }
        //turn off reminder
        else
        {
            reminderTimer = 0f;
            clickReminder.enabled = false;
        }
        
    }

    //this will be called in NPC
    //function called takes an array or list of strings
    public IEnumerator Speak()
    {
        currentMixerGroup = tpc.currentAudioMix;
        talkingMix.TransitionTo(1f);
        //Debug.Log("speaking");
        if (!finishedQuest)
        {
            //open cloud manual anim
            _player.transform.LookAt(new Vector3(transform.position.x, _player.transform.position.y, transform.position.z));
            tpc.talking = true;
            mainCam.zoomedOut = false;
            mainCam.npcTransform = transform;
            mainCam.zoomedIn = true;
            transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            thoughtCloud.enabled = true;
            //go through cloud opening
            cloudAnimator.active = true;
        }
        else
        {
            finishedQuest = false;
        }

        for (int i = 0; i < currentDialogue.Length; i++)
        {
            if (i == 0 )
            {
                //set all relevant bools on first image
                talking = true;
                imageDisplay.enabled = true;
            }

            // if this is the last picture string && quest line is active
            if (questActive && i == (currentDialogue.Length - 1))
            {
                for (int q = 0; q < allQuestObjects.Length; q++)
                {
                    allQuestObjects[q].questImage.enabled = true;
                }
                SearchForQuestItems();
            }

            
            //use the index to translate to other lists
            int currentIndex = currentDialogue[i];
            //set to first image in pictures list
            imageDisplay.sprite = pictures[currentIndex].imageArray[0];

            yield return new WaitForSeconds(0.25f);

            //if image array is animated, loop thru it
            if (pictures[currentIndex].imageArray.Length > 1)
            {
                imageAnimator.animationSprites = pictures[currentIndex].imageArray;
                imageAnimator.active = true;
            }

            //play corresponding sound from NPC
            voice.PlayOneShot(sounds[currentIndex]);
            
            //wait to move on until player clicks
            yield return new WaitUntil(() => advance == true);

            advance = false;

            //reset temp bools
            imageAnimator.active = false;

        }
        //turn off questObjects
        for (int q = 0; q < allQuestObjects.Length; q++)
        {
            allQuestObjects[q].questImage.enabled = false;
            //Debug.Log("disable quest objs");
        }

        //set new dialogue and restart so character loops through it again
        if (questActive && fullfilledCount == allQuestObjects.Length)
        {
            //Debug.Log("reset dialogue");
            dialogueCounter++;
            currentDialogue = allDialogues[dialogueCounter].wordNumbers;
            questActive = allDialogues[dialogueCounter].questLine;
            fullfilledCount = 0;
            finishedQuest = true;
            StartCoroutine(Speak());
        }
        //end dialogue normally
        else
        {
            //close out of dialogue
            talking = false;
            cloudAnimator.active = false;
            imageDisplay.enabled = false;

            //plays through cloud poof animation
            for (int p = 0; p < popImages.Count; p++)
            {
                thoughtCloud.sprite = popImages[p];
                yield return new WaitForSeconds(waitTime);
            }

            //set all relevant bools/states
            thoughtCloud.enabled = false;

            //only if they have a quest do we cut away from dialogue without player response 
            if (questActive)
            {
                currentMixerGroup.TransitionTo(1f);
                //zoom out and reactivate player
                mainCam.zoomedOut = true;
                mainCam.zoomedIn = false;
                tpc.talking = false;
            }

            //allow player to issue command if NPC quest complete or they are following you
            else
            {
                waitingForPlayer = true;
                //wait to move on until player selects option
                yield return new WaitUntil(() => playerResponded == true);
                //zoom out and reactivate player
                currentMixerGroup.TransitionTo(1f);
                mainCam.zoomedOut = true;
                mainCam.zoomedIn = false;
                tpc.talking = false;
                playerResponded = false;
                waitingForPlayer = false;
            }
        }
    }

    //search for stuff nearby
    public void SearchForQuestItems()
    {
        //Checks overlapSphere and fills up the List
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, checkRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            for(int q = 0; q < allQuestObjects.Length; q++)
            {
                if (!allQuestObjects[q].fulfilled)
                {
                    //check tags
                    if (hitColliders[i].gameObject.tag == allQuestObjects[q].objectTag && hitColliders[i].gameObject != this.gameObject)
                    {
                        //send this object to questObject for further checking
                        CheckFoundObject(hitColliders[i].gameObject, q);
                    }
                    //just set it to unfulfilled
                    else
                    {
                        allQuestObjects[q].questImage.sprite = pictures[allQuestObjects[q].pictureArray].imageArray[0];

                        if(pictures[allQuestObjects[q].pictureArray].imageArray.Length > 1)
                        {
                            allQuestObjects[q].questImage.gameObject.GetComponent<AnimateDialogue>().animationSprites = pictures[allQuestObjects[q].pictureArray].imageArray;
                            allQuestObjects[q].questImage.gameObject.GetComponent<AnimateDialogue>().active = true;
                        }
                    }
                }
            }
            i++;
        }

    }

    //takes object and checks its type
    void CheckFoundObject(GameObject objectToCheck, int questObjNumber)
    {
        //if statements to determin objectTag and objectType
        if (allQuestObjects[questObjNumber].objectTag == "Plant")
        {
            Plant currentPlant = objectToCheck.GetComponent<Plant>();
            if (currentPlant.plantSpecieName.ToString() == allQuestObjects[questObjNumber].objectType)
            {
                allQuestObjects[questObjNumber].foundObjCount++;
            }
            else
            {
                //Debug.Log("wrong plant type");
            }
        }
        else if (allQuestObjects[questObjNumber].objectTag == "Rock")
        {
            allQuestObjects[questObjNumber].foundObjCount++;
            Debug.Log("found rock");
        }
        else if (allQuestObjects[questObjNumber].objectTag == "NPC")
        {
            Musician musician = objectToCheck.GetComponent<Musician>();
            if (musician.musicType.ToString() == allQuestObjects[questObjNumber].objectType)
            {
                allQuestObjects[questObjNumber].foundObjCount++;
            }
            else
            {
                Debug.Log("wrong NPC type");
            }
        }

        //check if found object count reaches desired amount, then fulfill bool
        if (allQuestObjects[questObjNumber].foundObjCount >= allQuestObjects[questObjNumber].desiredAmount)
        {
            allQuestObjects[questObjNumber].fulfilled = true;
            allQuestObjects[questObjNumber].questImage.gameObject.GetComponent<AnimateDialogue>().active = false;
            allQuestObjects[questObjNumber].questImage.sprite = allQuestObjects[questObjNumber].foundObject;
            fullfilledCount++;
        }
        //quest obj shows unfullfilled
        else
        {
            allQuestObjects[questObjNumber].questImage.sprite = pictures[allQuestObjects[questObjNumber].pictureArray].imageArray[0];

            //animate if picture array is greater than 1
            if (pictures[allQuestObjects[questObjNumber].pictureArray].imageArray.Length > 1)
            {
                allQuestObjects[questObjNumber].questImage.gameObject.GetComponent<AnimateDialogue>().animationSprites = pictures[allQuestObjects[questObjNumber].pictureArray].imageArray;
                allQuestObjects[questObjNumber].questImage.gameObject.GetComponent<AnimateDialogue>().active = true;
            }
        }
    }
}
