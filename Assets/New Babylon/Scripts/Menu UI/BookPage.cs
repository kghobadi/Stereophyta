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
    FadeUItmp firstPageTextBack;
    FadeUItmp firstPageText;

    StartView startViewer;

    void Awake () {
        //book ref
        bookScript = GameObject.FindGameObjectWithTag("Book").GetComponent<Book>();
        bookFader = GameObject.FindGameObjectWithTag("BookEvents").GetComponent<FadeUI>();
        pageNotifAudio = bookFader.GetComponent<AudioSource>();
        firstPageTextBack = bookFader.transform.GetChild(0).GetComponent<FadeUItmp>();
        firstPageText = bookFader.transform.GetChild(1).GetComponent<FadeUItmp>();
        startViewer = FindObjectOfType<StartView>();
        if (page)
        {
            pageName = page.name;
        }
    }

    void Start()
    {
        //added in previous save, add again
        if (PlayerPrefs.GetString(pageName) == "added")
        {
            AddPage();
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
            firstPageTextBack.FadeIn();
            PlayerPrefs.SetString("hasCollectedPage", "yes");
        }
    }
}
