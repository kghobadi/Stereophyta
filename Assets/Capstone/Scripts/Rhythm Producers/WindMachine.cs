using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : RhythmProducer {

    //WindMachine itself -- pick up and wind gen
    public ObjectPooler fanWindPooler;
    GameObject windClone;
    
    //speed vars 
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

    //rhythm indicator
    public SpriteRenderer rhythmSR;
    Animator rhythmIndicator;
    FadeSprite rhythmFader;

    //change rhythm particle
    public GameObject changeRhythmObj;
    ParticleSystem changeRhythmFx;
    public bool changedRhythm;

    //turn this on & off depending what player is doing with it
    public bool fanActive;

    public void Start () {
        rotationSpeed = 3;

        //rhythm lever state -- timeScale should never exceed timeScaleMax 
        timeScale = 2;
        windSpeed = 5;

        //rhythm indicator
        rhythmIndicator = rhythmSR.GetComponent<Animator>();
        rhythmFader = rhythmSR.GetComponent<FadeSprite>();
        rhythmIndicator.SetInteger("Level", timeScale);
        changeRhythmFx = changeRhythmObj.GetComponent<ParticleSystem>();

        //set bools
        changedRhythm = true;
        fanActive = true;
    }
	
	public override void Update () {
        base.Update();

        //rotate fan thru code
        if (fanActive)
        {
            fanObj.transform.Rotate(0, 0, rotationSpeed);
        }
        

        //make windmachine look at mouse pos
        if (playerRotating)
        {
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
                playerRotating = false;
            }
        }

        //if player is nearby, generate wind rhythm at timeInterval (look in Rhythm Producer)
        if (Vector3.Distance(player.transform.position, transform.position) < 100)
        {
            if (showRhythm)
            {
                //grab wind from pool, set pos, rotation, ref to this
                windClone = fanWindPooler.GrabObject();
                windClone.transform.position = transform.position + new Vector3(0, 5, 0);
                windClone.transform.rotation = Quaternion.Euler(transform.eulerAngles - new Vector3(0, 90, 0));
                windClone.GetComponent<PuzzleWind>()._windGen = this;
                showRhythm = false;
            }
        }

        //for rhythm visual
        if (changedRhythm)
        {
            disappearTimer -= Time.deltaTime;

            //fade out visual
            if(disappearTimer < 0)
            {
                rhythmFader.FadeOut();
                changedRhythm = false;
            }
        }
    }


    public void OnMouseOver()
    {
        //disappearTimer = disappearTimerTotal;
        //rhythmSR.enabled = true;
    }

    public void OnMouseExit()
    {
        //rhythmSR.enabled = false;
    }

    public override void AudioRhythm()
    {
        // nothing here, no sound on rhythm
    }

    public override void SwitchTimeScale()
    {
        // nothing here, we don't want sound to play
    }

    

    //Increase rhythm
    public void IncreaseTempo()
    {
        //need to get the rhythm indicator working again...
        if (timeScale < timeScaleMax )
        {
            timeScale += 1;
            windSpeed += 2;
            rotationSpeed *= 2;
            //Debug.Log("increased tempo");
        }
        else
        {
            //reset 
            timeScale = 0;
            windSpeed -= (2 * timeScaleMax);
            rotationSpeed /= (2 * timeScaleMax);
            //Debug.Log("reset tempo");
        }

        SetVisualRhythm();
    }

    //called whenever rhythm is changed;
    public void SetVisualRhythm()
    {
        rhythmFader.FadeIn();
        rhythmIndicator.SetInteger("Level", timeScale);
        changeRhythmFx.Play();

        changedRhythm = true;
        disappearTimer = disappearTimerTotal;
    }
}
