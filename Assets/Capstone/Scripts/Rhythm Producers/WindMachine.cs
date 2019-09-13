using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : Tool {
    //WindMachine itself -- pick up and wind gen
    [Header("Wind staff vars")]
    public ObjectPooler fanWindPooler;
    GameObject windClone;

    //animator
    public Transform fanObj;
    //speed vars 
    public float windSpeed;
    public float rotationSpeed;
    public float distanceToDestroy;

    //audio
    [Header("Audio")]
    public AudioClip selectLower;
    public AudioClip placementSound, noNo;
    Vector3 placeMentSpot;
    
    //Rhythm lever vars
    [Header("Rhythm Settings")]
    public int timeScaleMax;

    //rhythm indicator
    public SpriteRenderer rhythmSR;
    Animator rhythmIndicator;
    FadeSprite rhythmFader;
    //timers for how long indicator appears
    public float disappearTimer, disappearTimerTotal = 1.5f;

    //change rhythm particle
    public GameObject changeRhythmObj;
    ParticleSystem changeRhythmFx;
    public bool changedRhythm;

    //turn this on & off depending what player is doing with it
    public bool fanActive;

    public void Start () {
        //rhythm lever state -- timeScale should never exceed timeScaleMax 
        timeScale = 2;
        rotationSpeed = 3f;
        windSpeed = 5;

        //rhythm indicator
        rhythmIndicator = rhythmSR.GetComponent<Animator>();
        rhythmFader = rhythmSR.GetComponent<FadeSprite>();
        rhythmIndicator.SetInteger("Level", timeScale);
        changeRhythmFx = changeRhythmObj.GetComponent<ParticleSystem>();

        //set bools
        changedRhythm = true;
       
        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetString("hasWindStaff") == "yes")
        {
            PickUpTool(false);
            //Debug.Log("picked up windstaff on start");
            toolAnimator.SetBool("fan", false);
            fanActive = false;
        }
        //wind fan still active
        else
        {
            toolAnimator.SetBool("fan", true);
            toolAnimator.enabled = false;
            fanActive = true;
        }
    }


    public override void PickUpTool(bool playSound)
    {
        base.PickUpTool(playSound);

        PlayerPrefs.SetString("hasWindStaff", "yes");

        toolAnimator.enabled = true;

        toolAnimator.SetBool("fan", false);

        fanActive = false;
    }

    public override void Update () {
        //rotate fan thru code
        if (fanActive)
        {
            //run pick up logic 
            base.Update();

            fanObj.transform.Rotate(0, 0, rotationSpeed);

            //if player is nearby, generate wind rhythm at timeInterval (look in Rhythm Producer)
            if (Vector3.Distance(player.transform.position, transform.position) < 100)
            {
                if (showRhythm)
                {
                    SpawnWind();
                }
            }

            //for rhythm visual
            if (changedRhythm)
            {
                disappearTimer -= Time.deltaTime;

                //fade out visual
                if (disappearTimer < 0)
                {
                    rhythmFader.FadeOut();
                    changedRhythm = false;
                }
            }
        }

        //holding wind staff
        else 
        {
            //on click 
            if (Input.GetButtonDown("MainAction") && !tpc.menuOpen)
            {
                MainAction();
            }
        }
    }

    void SpawnWind()
    {
        //grab wind from pool, set pos, rotation, ref to this
        windClone = fanWindPooler.GrabObject();
        windClone.transform.position = transform.position + new Vector3(0, 5, 0);
        windClone.transform.rotation = Quaternion.Euler(transform.eulerAngles - new Vector3(0, 90, 0));
        windClone.GetComponent<PuzzleWind>()._windGen = this;
        showRhythm = false;
    }

    //WIND STAFF FUNCTIONS
    public override void MainAction()
    {
        //can place
        if (CheckCanPlaceFan() == true)
        {
            PlaceFan();
        }
        //blocked
        else
        {
            toolSource.PlayOneShot(noNo);
        }
    }

    //this function lets us know if user can place the windfan in this spot
    bool CheckCanPlaceFan()
    {
        RaycastHit hit;
        // Does the ray intersect any objects excluding the player layer
        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                //check in radius of planting point if its too close to others
                bool nearBuilding = false;
                Collider[] hitColliders = Physics.OverlapSphere(hit.point, 3f);
                int i = 0;
                while (i < hitColliders.Length)
                {
                    if (hitColliders[i].gameObject.tag == "Building")
                    {
                        nearBuilding = true;
                    }
                    i++;
                }


                if (nearBuilding)
                {
                    return false;
                }
                //can place
                else
                {
                    placeMentSpot = hit.point;
                    return true;
                }
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }

    void PlaceFan()
    {
        //animate to become fan
        toolAnimator.SetBool("fan", true);
        toolSource.PlayOneShot(placementSound, 0.1f);

        //set parent null, position
        transform.SetParent(null);
        transform.position = placeMentSpot;

        inventoryScript.SwitchTool(true);

        gameObject.SetActive(true);

        //remove from inventory lists
        int index = inventoryScript.myTools.IndexOf(gameObject);

        inventoryScript.myTools.Remove(gameObject);
        inventoryScript.toolSprites.RemoveAt(index);
        
        StartCoroutine(WaitToSetFanActive());
    }

    //waits until windFan animator state active
    IEnumerator WaitToSetFanActive()
    {
        yield return new WaitUntil(() => toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("windFan") == true);

        toolAnimator.enabled = false;

        fanActive = true;

        hasBeenAcquired = false;
    }


    //WIND FAN FUNCTIONS

    //Increase rhythm
    public void IncreaseTempo()
    {
        //need to get the rhythm indicator working again...
        if (timeScale < timeScaleMax )
        {
            timeScale += 1;
            windSpeed += 2;
            rotationSpeed *= 2;
        }
        else
        {
            //reset 
            timeScale = 0;
            windSpeed -= (2 * timeScaleMax);
            rotationSpeed /= (2 * timeScaleMax);
        }

        SetVisualRhythm();
    }

    //called whenever rhythm is changed;
    public void SetVisualRhythm()
    {
        if (fanActive)
        {
            rhythmFader.FadeIn();
        }
      
        rhythmIndicator.SetInteger("Level", timeScale);
        changeRhythmFx.Play();

        changedRhythm = true;
        disappearTimer = disappearTimerTotal;

        //sound to indicate dif rhythm
        toolSource.PlayOneShot(selectLower);
    }
}
