using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : RhythmProducer {

    //WindMachine itself -- pick up and wind gen
    public GameObject wind;
    GameObject windClone;
    
    public float windSpeed, rotationSpeed;
    public float distanceToDestroy;

    public AudioClip selectLower;

    Animator windFanAnimator;
    public Transform fanObj;

    //Rotation var -- not being used currently
    public bool playerRotating;

    public float holdTimer = 0, holdTimerWait = 0.25f;

    //Rhythm lever vars
    public int timeScaleMax;
    public float drawDist;

    bool increasing;
    public ParticleSystem triRipples;

    SpriteRenderer rhythmSR;

    public override void Start () {
        base.Start();

        interactable = true;
        rotationSpeed = 3;


        disappearTimer = disappearTimerTotal;
        rhythmSR = rhythmIndicator.GetComponent<SpriteRenderer>();
        rhythmSR.enabled = false;

        //rhythm lever state -- timeScale should never exceed timeScaleMax 
        timeScale = 2;
        windSpeed = 5;
        triRipples.Stop();
    }
	
	public override void Update () {
        base.Update();

        //wind machine drop while holding
        if (playerHolding)
        {
            if (Input.GetMouseButtonDown(1))
            {
                DropObject();
                
            }
        }

        fanObj.transform.Rotate(0, 0, rotationSpeed);

        //make windmachine look at mouse pos
        if (playerRotating)
        {
            triRipples.Play();
            //tpc.talking = true;
            interactable = false;

            holdTimer += Time.deltaTime;

            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            float cameraDif = Camera.main.transform.position.y - transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif + 5f));

            Vector3 hoverLocation = new Vector3(worldpos.x, transform.position.y, worldpos.z);

            transform.LookAt(hoverLocation);

            //on click call raycasts. 
            if (Input.GetMouseButtonDown(0) && holdTimer > holdTimerWait)
            {
                //tpc.talking = false;
                interactable = true;
                playerRotating = false;
            }
        }

        //if player is nearby, generate wind rhythm at timeInterval (look in Rhythm Producer)
        if (Vector3.Distance(_player.transform.position, transform.position) < 100)
        {
            if (showRhythm)
            {
                //instantiate wind, show particles, etc.
                windClone = Instantiate(wind, transform.position, Quaternion.Euler(transform.eulerAngles - new Vector3(0,90,0)));
                windClone.GetComponent<PuzzleWind>()._windGen = this;
                showRhythm = false;
            }
        }

        if ((/*tpc.talking ||*/ selectionMenu.enabled) && playerClicked)
        {
            rhythmSR.enabled = true;
            disappearTimer = disappearTimerTotal;
        }

        if (rhythmSR.enabled)
        {
            disappearTimer -= Time.deltaTime;
            if (disappearTimer < 0)
            {
                rhythmSR.enabled = false;
                disappearTimer = disappearTimerTotal;
            }
        }

    }


    public override void OnMouseOver()
    {
        base.OnMouseOver();
        disappearTimer = disappearTimerTotal;
        rhythmSR.enabled = true;
    }

    public override void OnMouseExit()
    {
        base.OnMouseExit();
        rhythmSR.enabled = false;
    }

    public override void AudioRhythm()
    {
        // nothing here, no sound on rhythm
    }

    public override void SwitchTimeScale()
    {
        // nothing here, we don't want sound to play
    }

    public override void handleClickSuccess()
    {
        //player cannot click on this if they are holding it already
        if(interactable && !playerHolding)
        {
            base.handleClickSuccess();
        }
    }

    //Pick Up the WindMachine
    public override void Selection_One()
    {
        base.Selection_One();
        DeactivateSelectionMenu();
        transform.SetParent(rightArmObj.transform);

        transform.localPosition = Vector3.zero;
        transform.localEulerAngles = Vector3.zero;

        //tpc.canUseSeed = false;
        //tpc.isHoldingSomething = true;
        playerHolding = true;
        interactable = false;
        
    }

    //Rotate WindMachine 90
    public override void Selection_Two()
    {
        base.Selection_Two();
        
        //rotating = true;
        transform.localEulerAngles = Vector3.zero;
        playerRotating = true;
        DeactivateSelectionMenu();

        if (!soundBoard.isPlaying)
            soundBoard.PlayOneShot(InteractSound);
    }

    //Increase rhythm
    public override void Selection_Three()
    {
        base.Selection_Three();
        if(timeScale < timeScaleMax)
        {
            windSpeed += 2;
            timeScale += 1;
            rhythmIndicator.SetInteger("Level", timeScale);
            rotationSpeed *= 2;

            if (!soundBoard.isPlaying && playerClicked)
                soundBoard.PlayOneShot(InteractSound);
        }
    }

    //Decrease Rhythm
    public override void Selection_Four()
    {
        base.Selection_Four();
        if (timeScale > 0)
        {
            windSpeed -= 2;
            timeScale -= 1;
            rhythmIndicator.SetInteger("Level", timeScale);
            rotationSpeed *= 0.5f;

            if (!soundBoard.isPlaying && playerClicked)
                soundBoard.PlayOneShot(selectLower);
        }
    }

    //Called when player is holding the windMachine and right clicks to drop
    public void DropObject()
    {
        transform.localPosition -= new Vector3(0, 2, 0);
        transform.SetParent(null);

        //tpc.isHoldingSomething = false;
        //tpc.canUseSeed = true;
        playerHolding = false;
        interactable = true;
    }
}
