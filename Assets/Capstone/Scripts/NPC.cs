using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour {

    public string plantType;

    Plant currentPlant;

    public float visionDistance, movementDistance, speed, waitingTime;
    int moveCounter;

    Vector3 targestDestination;

    bool looking, moving, upOrDown;

	void Start () {
        //should this be interactable?
        targestDestination = transform.position + new Vector3(0, 0, movementDistance);
        moveCounter = 0;
        moving = true;
    }
	
	void Update () {
        //states in here, distance check on player
        if (moving)
        {
            Movement();
        }
	}

    void SetMove()
    {
        transform.Rotate(0,90,0);

        if (moveCounter < 3)
        {
            moveCounter++;
        }
        else
        {
            moveCounter = 0;
        }
        switch (moveCounter)
        {
            case 0:
                targestDestination = transform.position + new Vector3(0, 0, movementDistance);
                upOrDown = true;
                break;
            case 1:
                targestDestination = transform.position + new Vector3(movementDistance, 0, 0);
                upOrDown = true;
                break;
            case 2:
                targestDestination = transform.position + new Vector3(0, 0, -movementDistance);
                upOrDown = false;
                break;
            case 3:
                targestDestination = transform.position + new Vector3(-movementDistance, 0, 0);
                upOrDown = false;
                break;
        }
        moving = true;
    }

    public void Movement()
    {
        transform.position = Vector3.MoveTowards(transform.position, targestDestination, speed * Time.deltaTime);

        if (Vector3.Distance(transform.position, targestDestination) < 0.01f)
        {
            transform.position = targestDestination;
            moving = false;
            LookForPlants();
        }
    }

    public void LookForPlants()
    {
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
            if (upOrDown)
            {
                currentPlant.ShiftNoteUp();
            }
            else
            {
                currentPlant.ShiftNoteDown();
            }
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
        yield return new WaitForSeconds(waitingTime);

        //set new move pos
        SetMove();
    }

    //OTHER FUNCTIONS
    //pick up seed ()
    //plant seed ()

    //playerInteract()
}
