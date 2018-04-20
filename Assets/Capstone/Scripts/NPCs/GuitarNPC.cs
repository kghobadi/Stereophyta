﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class GuitarNPC : NPC {
    protected List<GuitarPlant> currentFlowers = new List<GuitarPlant>();
    protected List<GuitarPlant> flowersToTake = new List<GuitarPlant>();
    protected List<GuitarPlant> flowerGroup1 = new List<GuitarPlant>();
    protected List<GuitarPlant> flowerGroup2 = new List<GuitarPlant>();
    protected List<GuitarPlant> flowerGroup3 = new List<GuitarPlant>();
    public WindMachine windMachine;


    //fills up lists of nearby guitar plants and windmachines
    public override void LookForWork()
    {
        //clear flower lists
        currentFlowers.Clear();
        flowersToTake.Clear();
        flowerGroup1.Clear();
        flowerGroup2.Clear();
        flowerGroup3.Clear();

        //loop through waypoints and scan each one 
        for (int i = 0; i < movementPoints.Count; i++)
        {
            Collider[] hitColliders = Physics.OverlapSphere(movementPoints[i].transform.position, visionDistance);
            
            //loop through collider and check each obj
            for(int v = 0; v < hitColliders.Length; v++)
            {
                if (hitColliders[v].gameObject.tag == "Plant")
                {
                    string plantType = hitColliders[v].gameObject.GetComponent<Plant>().plantSpecieName.ToString();
                    if(plantType == "GUITAR")
                    {
                        if (hitColliders[v].gameObject.GetComponent<GuitarPlant>())
                        {
                            //checks which waypoint this is looking at 
                            switch (i)
                            {
                                case 0:
                                    flowerGroup1.Add(hitColliders[v].gameObject.GetComponent<GuitarPlant>());
                                    break;
                                case 1:
                                    flowerGroup2.Add(hitColliders[v].gameObject.GetComponent<GuitarPlant>());
                                    break;
                                case 2:
                                    flowerGroup3.Add(hitColliders[v].gameObject.GetComponent<GuitarPlant>());
                                    break;
                            }
                        }
                    }
                }
            }
        }

        //which is the current group we're at?
        switch (moveCounter)
        {
            case 0:
                currentFlowers = flowerGroup1;
                break;
            case 1:
                currentFlowers = flowerGroup2;
                break;
            case 2:
                currentFlowers = flowerGroup3;
                break;
        }

        //this only happens if the player isn't interacting with the device
        if (!windMachine.playerRotating && !windMachine.playerHolding)
        {
            //change wind machine rotation
            int randomRotate = Random.Range(0, 100);

            if (randomRotate < 40)
            {
                //rotate windmachine to play the flowers in current group
                windMachine.transform.LookAt(new Vector3(movementPoints[moveCounter].transform.position.x,
                    windMachine.transform.position.y, movementPoints[moveCounter].transform.position.z));
                Debug.Log(windMachine.transform.localEulerAngles);
            }
        }

        //change wind machine
        int randomTempo = Random.Range(0, 100);


        //tempo setting chances
        //if tempo is already fast
        if (windMachine.timeScale > 2)
        {
            //increase chance low
            if (randomTempo < 25)
            {
                windMachine.Selection_Three();
            }
            //decrease chance high
            else
            {
                windMachine.Selection_Four();
            }
        }
        else if (windMachine.timeScale == 2)
        {
            //increase 
            if (randomTempo < 50)
            {
                windMachine.Selection_Three();
            }
            //decrease 
            else
            {
                windMachine.Selection_Four();
            }
        }
        else if (windMachine.timeScale < 2)
        {
            //increase chance high
            if (randomTempo < 75)
            {
                windMachine.Selection_Three();
            }
            //decrease chance low
            else
            {
                windMachine.Selection_Four();
            }
        }

        //if there are no nearby guitar flowers
        if (currentFlowers.Count > 0)
        {
            StartCoroutine(PerformLabor());
        }
        else
        {
            SetMove();
        }
    }

    //All NPCs perform some form of Labor. This means changing rhythm or sound producers around them
    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(waitingTime);
        currentState = NPCState.LABOR;

        int flowerChangeCounter = 3;
        //loop through currentFlowers
        for (int i = 0; i < currentFlowers.Count; i++)
        {
            if(flowerChangeCounter > 0)
            {
                int randomShift = Random.Range(0, currentFlowers.Count);
                //chance to switch plant on or off
                if (currentFlowers[randomShift].active)
                {
                    //switches off 
                    currentFlowers[randomShift].Selection_One();
                    flowersToTake.Add(currentFlowers[randomShift]);
                    currentFlowers.Remove(currentFlowers[randomShift]);
                    flowerChangeCounter--;
                }
                //keep looping until we find one that is active 
                else
                {
                    //switchs on that flower
                    currentFlowers[randomShift].Selection_One();
                    i--;
                }
                yield return new WaitForSeconds(waitingTime);
            }
            
        }
       
        //plant new flowers 
        if(myMusic.seedSpots[0].childCount > 0)
        {
            for (int i = 0; i < myMusic.seedSpots.Count; i++)
            {
                if (myMusic.seedSpots[i].childCount > 0)
                {
                    myMusic.seedSpots[i].GetComponentInChildren<fruitSeedNoInv>().planting = true;
                }
            }
        }
            
        //take inactive flower seeds
        for(int i = 0; i < flowersToTake.Count; i++)
        {
            flowersToTake[i].seedPicker = myMusic;
            flowersToTake[i].seedSpotNumber = i;
            flowersToTake[i].Selection_Three();
        }


        yield return new WaitForSeconds(waitingTime);
        

        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }
}