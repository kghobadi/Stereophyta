using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BookPickUp : PickUp {

    StartView startViewer;
    public Menu menuScript;

    public override void Awake()
    {
        base.Awake();
        startViewer = FindObjectOfType<StartView>();
    }

    void Start()
    {
        //player has already picked up book
        if(PlayerPrefs.GetString("hasBook") == "yes")
        {
            gameObject.SetActive(false);
        }
    }

    public override void PickUpTool(bool playSound)
    {
        base.PickUpTool(playSound);

        gameObject.SetActive(false);
        //this is the one we need
        PlayerPrefs.SetString("hasBook", "yes");

        menuScript.TurnOnMenu();

        //fade in escape notices since this is first time opening book menu
        for (int i = 0; i < menuScript.escNotices.Length; i++)
        {
            menuScript.escNotices[i].FadeIn();
        }
    }

    public override void Update()
    {
        //only run pickup logic if start view has finished
        if (!startViewer.active)
        {
            base.Update();
        }
    }

}
