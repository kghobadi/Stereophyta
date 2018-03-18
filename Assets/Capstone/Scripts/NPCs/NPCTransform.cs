using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCTransform : NPC {
    
    //movement vars
    public int moveCounter;
    Vector3 targestDestination;
    public Transform movementPointsContainer;
    public List<Transform> movementPoints = new List<Transform>();

    //for note up or down
    bool upOrDown, hasLooked;


	public override void Start () {
        base.Start();
        interactable = false;

        //loops through children of container and adds them to list
        for (int i = 0; i < movementPointsContainer.childCount; i++)
        {
            movementPoints.Add(movementPointsContainer.GetChild(i));
        }

        //set target dest to first position in transform array
        moveCounter = 0;
        targestDestination = movementPoints[moveCounter].position;
        transform.LookAt(new Vector3(targestDestination.x, transform.position.y, targestDestination.z));

        navMeshAgent.SetDestination(targestDestination);
        currentState = NPCState.MOVING;

        speed += Random.Range(-1.5f, 1.5f);
    }
	
	public override void Update () {
        base.Update();
        //if(currentState == NPCState.SETTINGMOVE)
        //{
        //    SetMove();
        //}
        if (currentState == NPCState.FOLLOWING)
        {
            movementPointsContainer.SetParent(transform);
            movementPointsContainer.transform.localPosition = new Vector3(0, 0, 0);
        }
        else
        {
            movementPointsContainer.SetParent(null);
        }


        if (currentState == NPCState.MOVING)
        {
            if (Vector3.Distance(transform.position, targestDestination) < 3f)
            {
                navMeshAgent.isStopped = true;
                currentState = NPCState.LOOKING;
                if (!hasLooked)
                    LookForPlants();
            }

            if (Vector3.Distance(transform.position, _player.transform.position) < 10 && !hasWavedAtPlayer)
            {
                StartCoroutine(WaveAtPlayer());
                
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

    void SetMove()
    {
        Debug.Log("set move");
        navMeshAgent.isStopped = false;
        animator.SetBool("walking", true);
        if (moveCounter < (movementPoints.Count - 1))
        {
            moveCounter+= 1;
        }
        else
        {
            moveCounter = 0;
        }
        targestDestination = movementPoints[moveCounter].position;

        navMeshAgent.SetDestination(targestDestination);
        Debug.Log(targestDestination);

        hasLooked = false;

        currentState = NPCState.MOVING;
    }
    
    public void LookForPlants()
    {
        Debug.Log("I Looked");
        hasLooked = true;
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
        //randomly changes note up or down
        int randomNum = Random.Range(0, 100);
        if (randomNum < 50)
        {
            upOrDown = true;
        }
        else
        {
            upOrDown = false;
        }
        //wait here a moment
        animator.SetBool("walking", false);
        if(plantType == "CUBETREE")
            transform.LookAt(currentPlant.transform.position - new Vector3(0,2,0));
        else
        {
            transform.LookAt(currentPlant.transform.position);
        }
        yield return new WaitForSeconds(waitingTime);
        if (upOrDown)
        {
            currentPlant.Selection_Two();
        }
        else
        {
            currentPlant.Selection_One();
        }
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

    public IEnumerator WaveAtPlayer()
    {
        currentState = NPCState.WAVING;
        navMeshAgent.isStopped = true;
        transform.LookAt(_player.transform);
        animator.SetBool("waving", true);
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(wavingTime);
        //rotates back correctly
        if(currentState == NPCState.WAVING)
        {
            //starts walking again
            navMeshAgent.isStopped = false;
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
