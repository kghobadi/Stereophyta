﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class InteractPrompt : MonoBehaviour {
    [Header("All Interact Prompts")]
    public TMP_Text pickUpText;
    public string pickUpMessage;
    public FadeUI[] interactPrompts;

    [Header("Pickable")]
    public Canvas myWorldCanvas;
    public Image pickUpImage;
    public Sprite pickUpSprite;
    
    //pick up prompt for when player is near 
    public void ShowPickupPrompt()
    {
        //Debug.Log("show pickup prompt");
        //set text prompt
        pickUpText.text = pickUpMessage;
        //set sprite prompt 
        if(pickUpImage)
            pickUpImage.sprite = pickUpSprite;
        //fade em in
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeIn();
        }
    }

    //turn off prompt
    public void DeactivatePrompt()
    {
        //Debug.Log("deactivating prompt");
        //fade em out
        for (int i = 0; i < interactPrompts.Length; i++)
        {
            interactPrompts[i].FadeOut();
        }
    }
}
