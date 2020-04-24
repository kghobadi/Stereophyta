using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using Cameras; 

public class UseBoat : PickUp {
    CameraManager camManager;
    public GameCamera playerCamera;
    public GameCamera boatCamera;
    //position player should be teleported to
    public Vector3 playerLocalPos;
    BoatPlayer boatScript;
    //cursor ref
    public GameObject cursor;
    BookPage bookPage;
    //boat instructions
    [Header("Instruction refs")]
    public TMP_Text clickNDragTxt;
    public TMP_Text textBack;
    FadeUItmp txtFader, textBackFader;
    public Image clickNDragAnim, clickNDragAnimRight;
    FadeUI animFader, animFaderRight;
    AnimateDialogue animator, animatorRight;
    [HideInInspector] public Animator boatAnimator;

    public Transform dockPos;
    public bool canEnter = true;
    public float justExitedTimer, exitTimerTotal = 0.5f;

    public override void Awake()
    {
        base.Awake();

        boatScript = GetComponent<BoatPlayer>();
        camManager = FindObjectOfType<CameraManager>();
        //my book page
        bookPage = GetComponent<BookPage>();
        //ui refs
        txtFader = clickNDragTxt.GetComponent<FadeUItmp>();
        textBackFader = textBack.GetComponent<FadeUItmp>();
        animFader = clickNDragAnim.GetComponent<FadeUI>();
        animator = clickNDragAnim.GetComponent<AnimateDialogue>();
        animFaderRight = clickNDragAnimRight.GetComponent<FadeUI>();
        animatorRight = clickNDragAnimRight.GetComponent<AnimateDialogue>();
        boatAnimator = GetComponent<Animator>();
    }

    public override void Update()
    {
        //pickup / enterexit boat check logic 
        base.Update();

        //little reset for entrance 
        if (canEnter == false)
        {
            justExitedTimer -= Time.deltaTime;
            if(justExitedTimer < 0)
            {
                canEnter = true;
            }
        }
    }

    //ENTER BOAT 
    public override void PickUpTool(bool playSound)
    {
        //a lil time sets this after an exit 
        if (canEnter)
        {
            //so we can deactivate stuff
            hasBeenAcquired = true;

            //play this tools pickup sound
            inventoryScript.inventoryAudio.PlayOneShot(pickupSound);
            cursor.SetActive(true);
            Cursor.lockState = CursorLockMode.None;

            //player has used boat before 
            if (PlayerPrefs.GetString("hasUsedBoat") == "yes")
            {
                //rotate boat so it's facing departure direction 
                //transform.localEulerAngles += new Vector3(0f, 180f, 0f);
            }
            //player hasn't used boat before, so fade in instructions 
            else
            {
                txtFader.FadeIn();
                textBackFader.FadeIn();
                animFader.FadeIn();
                animator.active = true;
                animFaderRight.FadeIn();
                animatorRight.active = true;

                //has a book page to add 
                if (bookPage)
                {
                    bookPage.AddPage();
                }

                //set has used boat for the first time 
                PlayerPrefs.SetString("hasUsedBoat", "yes");
            }

            //in case you are jumping 
            if (tpc.jumping)
            {
                tpc.jumping = false;
                tpc.jumpTrail.transform.SetParent(null);
                tpc.jumpTrail.GetComponent<JumpTrail>().ClearTrail();
            }

            //check for swimming
            if (tpc.swimming)
            {
                tpc.swimming = false;
                tpc.currentMovement.y = 0;
                tpc.footsteps.currentFootsteps = tpc.footsteps.grassSteps;
                tpc.swimTrail.enabled = false;
                tpc.swimRipples.Stop();
                tpc.swimSplashL.Stop();
                tpc.swimSplashR.Stop();
                tpc.ActivateCloak(0.5f);
            }

            //turn off player movment
            tpc.samita.SetAnimator("idle");
            tpc.playerCanMove = false;
            tpc.runParticles.Stop();
            tpc.characterBody.localEulerAngles = new Vector3(0, 0, 0);

            //cam
            camManager.Set(boatCamera);

            //set boat as parent & position
            tpc.playerCloak.enabled = false;
            tpc.transform.SetParent(transform);
            tpc.transform.localPosition = playerLocalPos;
            tpc.myInventory.gameObject.SetActive(false);
            tpc.transform.localEulerAngles = new Vector3(-90f, 0, 0);
            tpc.playerCloak.enabled = true;

            Quaternion rot = transform.rotation;

            //set boat vars
            boatScript.inBoat = true;
            boatScript.boatBody.isKinematic = false;
            boatScript.boatCol.enabled = true;
            boatAnimator.enabled = false;
            //set oar anim
            boatScript.oarAnimator.SetTrigger("activateBoat");
            boatScript.oarAnimator.SetBool("rightOrLeft", true);

            //player hasnt used boat before, set angle 
            if (PlayerPrefs.GetString("hasUsedBoat") != "yes")
            {
                transform.rotation = rot;
            }

            interactPrompt.DeactivatePrompt();
        }
        
    }

    public void ExitBoat(Vector3 exitPos)
    {
        hasBeenAcquired = false;

        //turn off and lock cursor
        cursor.SetActive(false);
        Cursor.lockState = CursorLockMode.Locked;

        //turn off player movment
        tpc.playerCanMove = true;
        //cam
        camManager.Set(playerCamera);

        //set boat as parent & position
        tpc.transform.SetParent(null);
        tpc.transform.position = exitPos;
        tpc.myInventory.gameObject.SetActive(true);

        //set boat vars
        boatScript.inBoat = false;
        boatScript.boatBody.isKinematic = true;

        //reset boat & player rot
        transform.rotation = Quaternion.Euler(90f, -180f, transform.localEulerAngles.z);
        tpc.transform.rotation = Quaternion.Euler(0f, tpc.transform.localEulerAngles.y, 0f);

        //set oar anim
        boatScript.oarAnimator.SetTrigger("deactivateBoat");

        //fade out dock prompt
        boatScript.dockPrompt.DeactivatePrompt();

        //activate prompt 
        interactPrompt.pickUpMessage = pickUpMessage;
        interactPrompt.ShowPickupPrompt();

        //so that player doesn't immediately reenter
        canEnter = false;
        justExitedTimer = exitTimerTotal;
    }
}
