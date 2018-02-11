using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCcircle : MonoBehaviour {

    public string plantType;

    Plant currentPlant;

    public float visionDistance, circleRadius, speed, waitingTime, wavingTime, waveRefresh, waveRefreshTotal, lookTimer, lookTimerTotal;

    Vector3 targetRotPoint;

    bool looking, moving, upOrDown, hasWavedAtPlayer;

    Animator animator;
    GameObject model;
    GameObject _player;

	void Start () {
        //should this be interactable?
        _player = GameObject.FindGameObjectWithTag("Player");
        targetRotPoint = transform.position + new Vector3(0, 0, circleRadius);
        transform.LookAt(transform.position + Vector3.forward);
        moving = true;

        animator = GetComponentInChildren<Animator>();
        model = transform.GetChild(0).gameObject;
        animator.SetBool("walking", true);

        speed += Random.Range(-1, 1);
        lookTimer = lookTimerTotal;
    }
	
	void Update () {
        //states in here, distance check on player
        if (moving)
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
        
        model.transform.eulerAngles = transform.eulerAngles - new Vector3(0, 90, 0);
        
        if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
        {
            StartCoroutine(WaveAtPlayer());

        }
    }
    public void SetMove()
    {
        moving = true;
        lookTimer = lookTimerTotal;
        animator.SetBool("walking", true);
        transform.LookAt(transform.position + Vector3.forward);
    }

    public void LookForPlants()
    {
        moving = false;
        bool canPlayPlant = false;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant" && hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == plantType)
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
            currentPlant.ShiftNoteUp();
        }
        else
        {
            currentPlant.ShiftNoteDown();
        }
        SetMove();
    }

    public IEnumerator WaveAtPlayer()
    {
        moving = false;
        transform.LookAt(_player.transform);
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        //starts walking again
        moving = true;
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
