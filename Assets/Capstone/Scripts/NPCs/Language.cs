using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public struct NumberedImage
{
    public Sprite[] image;
}

[Serializable]
public struct WordChoices
{
    public int[] wordNumbers;
}

public class Language : Interactable
{
    //because these are ordered lists which will remain mostly static for the course of the game
    // we can simply check if the spoken dialogue has these words, then through that translate 
    //list of all English words/phrases that shall be used for translation
    public List<string> englishWords = new List<string>();
    //list of pictures and images which correspond to english words
    public List<Sprite> cloudImages = new List<Sprite>();
    //ideally this should be expressed as a List<Sprite[]> in inspector
    public List<NumberedImage> pictures = new List<NumberedImage>();
    //list of symbols which may portray words at random if the player is unfamiliar / they aren't contained in images list
    public List<Sprite> symbols = new List<Sprite>();
    //list of sounds that will be emitted based on english words
    public List<AudioClip> sounds = new List<AudioClip>();

    //will contain whatever string of words waiting to be said 
    public List<int> currentDialogue = new List<int>();
    //used to store string arrays of all an NPCs dialogue throughout the game 
    //because this is an array List, when we reset dialogue we can count upward to find the next string[]
    public WordChoices[] allDialogues;

    //UI object refs 
    //Image container which switches out images and can be animated
    Image imageDisplay, thoughtCloud;
    AnimateDialogue imageAnimator, cloudAnimator;
    //Dialogue container - symbol container
    //any effects which emit from speaking character
    AudioSource voice;

    //timer for speaking
    public float waitTime = 0.5f;
    public bool talking, advance;

    public override void Start()
    {
        base.Start();
        //some UI refs
        thoughtCloud = GameObject.FindGameObjectWithTag("ThoughtCloud").GetComponent<Image>();
        cloudAnimator = thoughtCloud.gameObject.GetComponent<AnimateDialogue>();

        imageDisplay = GameObject.FindGameObjectWithTag("SpeechImage").GetComponent<Image>();
        imageAnimator = imageDisplay.gameObject.GetComponent<AnimateDialogue>();

        thoughtCloud.enabled = false;
        cloudAnimator.active = false;
        imageDisplay.enabled = false;
        imageAnimator.active = false;
        voice = GetComponent<AudioSource>();
        interactable = true;
    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        StartCoroutine(Speak(currentDialogue));
        
    }

    //function called takes an array or list of strings
    public IEnumerator Speak(List<int> wordsToTranslate)
    {
        Debug.Log("speaking");
        //open cloud manual anim
        tpc.enabled = false;
        thoughtCloud.enabled = true;
        thoughtCloud.sprite = cloudImages[0];
        yield return new WaitForSeconds(waitTime);
        thoughtCloud.sprite = cloudImages[1];
        yield return new WaitForSeconds(waitTime);
        thoughtCloud.sprite = cloudImages[2];
        yield return new WaitForSeconds(waitTime);
        cloudAnimator.active = true;
        //show first thing out of for loop
        imageDisplay.sprite = pictures[wordsToTranslate[0]].image[0];
        voice.PlayOneShot(sounds[wordsToTranslate[0]]);
        yield return new WaitForSeconds(waitTime);

        //set all relevant bools
        talking = true;
        interactable = false;
        imageDisplay.enabled = true;
        advance = false;

        //wait to move on until player clicks
        yield return new WaitUntil(() => advance == true);

        for (int i = 1; i < wordsToTranslate.Count; i++)
        {
            yield return new WaitForSeconds(waitTime);
            //check to see if this string is stored in englishWords
            advance = false;
            //use the index to translate to other lists
            int currentIndex = wordsToTranslate[i];

            //display first image of the sprite array
            //imageDisplay.sprite = images[currentIndex];

            imageDisplay.sprite = pictures[currentIndex].image[0];

            //if image array is animated, loop thru it
            if (pictures[currentIndex].image.Length > 1)
            {
                imageAnimator.animationSprites = pictures[currentIndex].image;
                imageAnimator.active = true;
            }

            //play corresponding sound from NPC
            voice.PlayOneShot(sounds[currentIndex]);

                //wait to move on until player clicks
                yield return new WaitUntil(() => advance == true);

                //reset temp bools
                imageAnimator.active = false;
            
        }
        //set all relevant bools
        talking = false;
        tpc.enabled = true;
        interactable = true;
        imageDisplay.enabled = false;
        thoughtCloud.enabled = false;
        cloudAnimator.active = false;
        //return to NPC menu or end dialogue state and have NPC return to other State
        //Should switch out currentDialogue to next series of ints from allDialogue based on events/goal complete 
        //Or based on numbers of days that pass 
    }

    public override void Update()
    {
        base.Update();
        if (talking)
        {
            if (Input.GetMouseButtonDown(0) && !advance)
            {
                advance = true;
            }
        }
        
    }


}
