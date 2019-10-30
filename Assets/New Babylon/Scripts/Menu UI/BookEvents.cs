using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;

public class BookEvents : MonoBehaviour
{
    //add normal page event
    public delegate void OnNormalPageAdded(Sprite page);
    public static event OnNormalPageAdded NormalPageAdded;

    //add normal page event
    public delegate void OnAnimationPageAdded(Sprite page, AnimationClip anim);
    public static event OnAnimationPageAdded AnimationPageAdded;

    //add normal page event
    public delegate void OnVideoPageAdded(Sprite page, VideoClip vid);
    public static event OnVideoPageAdded VideoPageAdded;

    //remove page event 
    public delegate void OnPageRemoved(int pageNumber, Book.PageType pageType);
    public static event OnPageRemoved PageRemoved;
    

    //call to add normal page
    public void AddNormalPage(Sprite pageImg)
    {
        NormalPageAdded(pageImg);
    }

    //call to add animation page
    public void AddAnimationPage(Sprite pageImg, AnimationClip animClip)
    {
        AnimationPageAdded(pageImg, animClip);
    }

    //call to add video page
    public void AddVideoPage(Sprite pageImg, VideoClip vidClip)
    {
        VideoPageAdded(pageImg, vidClip);
    }

    //call to end recording 
    public void RemovePage(int page, Book.PageType pageType)
    {
        PageRemoved(page, pageType);
    }
    
}
