using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UseBoat : PickUp {
    PlayerCameraController camController;
    //position player should be teleported to
    public Vector3 playerLocalPos;
    BoatPlayer boatScript;
    //cursor ref
    public GameObject cursor;

    //boat instructions
    [Header("Instruction refs")]
    public TMP_Text clickNDragTxt;
    public TMP_Text textBack;
    FadeUItmp txtFader, textBackFader;
    public Image clickNDragAnim, clickNDragAnimRight;
    FadeUI animFader, animFaderRight;
    AnimateDialogue animator, animatorRight;

    public bool canEnter = true;
    public float justExitedTimer, exitTimerTotal = 0.5f;

    void Start()
    {
        boatScript = GetComponent<BoatPlayer>();
        camController = Camera.main.GetComponent<PlayerCameraController>();

        //ui refs
        txtFader = clickNDragTxt.GetComponent<FadeUItmp>();
        textBackFader = textBack.GetComponent<FadeUItmp>();
        animFader = clickNDragAnim.GetComponent<FadeUI>();
        animator = clickNDragAnim.GetComponent<AnimateDialogue>();
        animFaderRight = clickNDragAnimRight.GetComponent<FadeUI>();
        animatorRight = clickNDragAnimRight.GetComponent<AnimateDialogue>();

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

                //set has used boat for the first time 
                PlayerPrefs.SetString("hasUsedBoat", "yes");
            }

            //in case you are jumping 
            if (tpc.jumping)
            {
                tpc.jumping = false;
                tpc.jumpTrail.transform.SetParent(null);
                tpc.jumpTrail.GetComponent<JumpTrail>().StartCoroutine(tpc.jumpTrail.GetComponent<JumpTrail>().Deactivate());
            }

            //check for swimming
            if (tpc.swimming)
            {
                tpc.swimming = false;
                tpc.currentMovement.y = 0;
                tpc.swimTrail.enabled = false;
                tpc.swimWhiteTrail.enabled = false;
                tpc.swimRipples.Stop();
                tpc.swimSplashL.Stop();
                tpc.swimSplashR.Stop();
                tpc.ActivateCloak(0.5f);
            }

            //turn off player movment
            tpc.SetAnimator("idle");
            tpc.playerCanMove = false;
            tpc.runParticles.SetActive(false);
            tpc.characterBody.localEulerAngles = new Vector3(0, 0, 0);
            camController.canLook = false;
            //child cam to boat
            camController.transform.SetParent(transform);
            //adjust cam height & rotation
            camController.transform.localPosition = new Vector3(0f, -10f, -8f);
            camController.transform.localEulerAngles = new Vector3(-75f, 0f, 0f);
            camController.LerpFOV(75f);

            //set boat as parent & position
            tpc.transform.SetParent(transform);
            tpc.transform.localPosition = playerLocalPos;
            tpc.myInventory.gameObject.SetActive(false);
            tpc.transform.localEulerAngles = new Vector3(-90f, 0, 0);

            //set boat vars
            boatScript.inBoat = true;
            boatScript.boatBody.isKinematic = false;
            boatScript.boatCol.enabled = true;
            //set oar anim
            boatScript.oarAnimator.SetTrigger("activateBoat");
            boatScript.oarAnimator.SetBool("rightOrLeft", true);

            DeactivatePrompt();
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
        camController.canLook = true;
        camController.transform.SetParent(null);
        camController.LerpFOV(50f);

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
        for (int d = 0; d < boatScript.dockprompts.Length; d++)
        {
            boatScript.dockprompts[d].FadeOut();
        }

        ShowPickupPrompt();

        //so that player doesn't immediately reenter
        canEnter = false;
        justExitedTimer = exitTimerTotal;
    }
}
