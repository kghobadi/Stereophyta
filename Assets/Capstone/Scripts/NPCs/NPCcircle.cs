using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCcircle : NPC {

    public float circleRadius, lookTimer, lookTimerTotal;

    Vector3 targetRotPoint;

    bool upOrDown;

    GameObject model;

    public Transform circleCenter; //can use this to manually position circle in editor

    CircleMillControls walkingDirection;

	public override void Start () {
        base.Start();
        targetRotPoint = circleCenter.position;
        //targetRotPoint = transform.position + new Vector3(0, 0, circleRadius);
        transform.LookAt(transform.position + Vector3.forward);
        currentState = NPCState.MOVING;

        animator = GetComponentInChildren<Animator>();
        model = transform.GetChild(0).gameObject;
        animator.SetBool("walking", true);

        speed += Random.Range(-1, 1);
        lookTimer = lookTimerTotal;

        walkingDirection = GameObject.FindGameObjectWithTag("CircleMill").transform.GetChild(1).GetComponent<CircleMillControls>();
    }
	
	public override void Update () {
        base.Update();
        //states in here, distance check on player
        if(currentState == NPCState.FOLLOWING)
        {
            model.transform.localEulerAngles = new Vector3(0, 0, 0);
            if(speed < 0)
            {
                speed *= -1;
            }
        }

        if (currentState == NPCState.SETTINGMOVE)
        {
            targetRotPoint = transform.position + new Vector3(0, 0, circleRadius);
            SetMove();
        }
        if (currentState == NPCState.MOVING)
        {
            
            lookTimer -= Time.deltaTime;
            if (lookTimer < 0)
            {
                LookForPlants();
            }
            else
            {
                Movement();
            }
        }
        if (hasWavedAtPlayer)
        {
            waveRefresh -= Time.deltaTime;
            if (waveRefresh < 0)
            {
                hasWavedAtPlayer = false;
            }
        }
	}

    public void Movement()
    {
        transform.RotateAround(targetRotPoint, Vector3.up, speed * Time.deltaTime);
        transform.LookAt(targetRotPoint);

        if (walkingDirection.dirPositive)
        {
            model.transform.eulerAngles = transform.eulerAngles - new Vector3(0, 90, 0);
        }
        else
        {
            model.transform.eulerAngles = transform.eulerAngles - new Vector3(0, -90, 0);
        }
        
        if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
        {
            StartCoroutine(WaveAtPlayer());

        }
    }
    public void SetMove()
    {
        currentState = NPCState.MOVING;
        lookTimer = lookTimerTotal;
        animator.SetBool("walking", true);
        transform.LookAt(transform.position + Vector3.forward);
    }

    public void LookForPlants()
    {
        currentState = NPCState.LOOKING;
        bool canPlayPlant = false;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant" /*&& hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == plantType*/)
            {
                currentPlant = hitColliders[i].gameObject.GetComponent<Plant>();
                canPlayPlant = true;
            }
            i++;
        }
        if (canPlayPlant)
        {
            StartCoroutine(PlayTree());
            
        }
        else
        {
            SetMove();
        }
    }

    public IEnumerator PlayTree()
    {
        //play animation or do a color change on character
        //wait here a moment
        animator.SetBool("walking", false);
        transform.LookAt(currentPlant.transform);
        model.transform.localEulerAngles = Vector3.zero;
        yield return new WaitForSeconds(waitingTime);
        if (upOrDown)
        {
            currentPlant.Selection_One();
        }
        else
        {
            currentPlant.Selection_Two();
        }
        SetMove();
    }

    public IEnumerator WaveAtPlayer()
    {
        currentState = NPCState.WAVING;
        transform.LookAt(_player.transform);
        model.transform.localEulerAngles = Vector3.zero;
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        if(currentState == NPCState.WAVING)
        {
            //starts walking again
            currentState = NPCState.MOVING;

        }
        hasWavedAtPlayer = true;
        waveRefresh = waveRefreshTotal;
        animator.SetBool("waving", false);
        animator.SetBool("walking", true);
    }

    //OTHER FUNCTIONS
    //pick up seed ()
    //plant seed ()

    //playerInteract()
}
