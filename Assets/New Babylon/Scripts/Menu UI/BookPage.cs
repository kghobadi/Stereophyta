using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;

public class BookPage : MonoBehaviour {
    
    Book bookScript;
    public string pageName;
    public Sprite page;
    public Book.PageType pageType;
    public AnimationClip animClip;
    public VideoClip vidClip;

    public bool added;
    //notification stuff
    FadeUI bookFader;
    AudioSource pageNotifAudio;
    public AudioClip pageNotif;
    FadeUItmp firstPageText;

    StartView startViewer;

    void Awake () {
        //book ref
        bookScript = GameObject.FindGameObjectWithTag("Book").GetComponent<Book>();
        bookFader = GameObject.FindGameObjectWithTag("BookEvents").GetComponent<FadeUI>();
        pageNotifAudio = bookFader.GetComponent<AudioSource>();
        firstPageText = bookFader.transform.GetChild(0).GetComponent<FadeUItmp>();
        startViewer = GameObject.FindGameObjectWithTag("StartView").GetComponent<StartView>();
        if (page)
        {
            pageName = page.name;
        }
    }

    void Start()
    {
        //added in previous save, add again
        if (page != null)
        {
            if (PlayerPrefs.GetString(page.name) == "added")
            {
                AddPage();
            }
        }
    }

    //adds this book page to book
    public void AddPage()
    {
        if (!added)
        {
            if (PlayerPrefs.GetString(pageName) != "added" && page != null)
            {
                switch (pageType)
                {
                    case Book.PageType.NORMAL:
                        bookScript.AddNormalPage(page);
                        break;
                    case Book.PageType.ANIMATED:
                        bookScript.AddAnimPage(page, animClip);
                        break;
                    case Book.PageType.VIDEO:
                        bookScript.AddVideoPage(page, vidClip);
                        break;
                }

                int indexAddedAt = bookScript.bookPages.Count - 1;
                //save as added, & index added at 
                PlayerPrefs.SetString(pageName, "added");
                PlayerPrefs.SetInt(pageName, indexAddedAt);
                //notify only when it's not start view 
                if (!startViewer.startView)
                {
                    PlayBookNotifier();
                }

                added = true;
            }
        }
        
    }
    
    //plays the book notification anim -- they auto fade out 
    public void PlayBookNotifier()
    {
        bookFader.FadeIn();
        pageNotifAudio.PlayOneShot(pageNotif);

        //tells player what the book notification means 
        if (PlayerPrefs.GetString("hasCollectedPage") != "yes")
        {
            firstPageText.FadeIn();
            PlayerPrefs.SetString("hasCollectedPage", "yes");
        }
    }
}
