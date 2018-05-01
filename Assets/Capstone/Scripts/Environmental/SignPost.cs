using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SignPost : MonoBehaviour {
    Image signPost, signSymbol;
    RectTransform signPostUIPos;
    public Sprite[] mySign;
    AnimateDialogue signAnimator;
    GameObject _player;

    Camera cammy;
    RectTransform canvasRect;

    void Start () {
        //grab components
        cammy = Camera.main.GetComponent<Camera>();
        _player = GameObject.FindGameObjectWithTag("Player");
        canvasRect = GameObject.FindGameObjectWithTag("MainCanvas").GetComponent<RectTransform>();
        signPost = GameObject.FindGameObjectWithTag("Signpost").GetComponent<Image>();
        signSymbol = signPost.transform.GetChild(0).GetComponent<Image>();
        signPostUIPos = signPost.GetComponent<RectTransform>();
        signAnimator = signSymbol.GetComponent<AnimateDialogue>();

        //disable until mouse event
        signPost.enabled = false;
        signSymbol.enabled = false;
	}

    //show UI and animate if needed
    void OnMouseOver()
    {
        CorrectUIPos();
        signPost.enabled = true;
        signPost.GetComponent<AnimateDialogue>().active = true;
        signSymbol.sprite = mySign[0];
        if(mySign.Length > 1)
        {
            signAnimator.animationSprites = mySign;
            signAnimator.active = true;
        }
        signSymbol.enabled = true;
    }

    //turn off
    void OnMouseExit()
    {
        signPost.enabled = false;
        signPost.GetComponent<AnimateDialogue>().active = false;
        signSymbol.enabled = false;
        signAnimator.active = false;
    }

    //move UI to where signpost is on screen
    void CorrectUIPos()
    {
        Vector2 ViewportPosition = cammy.WorldToViewportPoint(_player.transform.position);
        Vector2 WorldObject_ScreenPosition = new Vector2(
        ((ViewportPosition.x * canvasRect.sizeDelta.x) - (canvasRect.sizeDelta.x * 0.5f)),
        ((ViewportPosition.y * canvasRect.sizeDelta.y) - (canvasRect.sizeDelta.y * 0.5f) + 100));

        //now you can set the position of the ui element
        signPostUIPos.anchoredPosition = WorldObject_ScreenPosition;
    }


}
