using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HornNPC : NPC {

    //which direction is it walking
    public bool walkingDirection = true;

    //is this a planter or sucker NPC
    public bool planterOrSucker;

    //max # of plants at waypoint
    public int plantMaximum;

    //for planters
    public GameObject plantPrefab; //switch out when planter goes to a pile of seeds
    GameObject plantClone;
    public float heightAdjustment;
    public float plantingRadius;

    public override void Update()
    {
        if(currentState == NPCState.LABOR)
        {
            //nothing
        }
        else
        {
            base.Update();
        }
        
    }

    public override void SetMove()
    {
        //Debug.Log("set move");
        navMeshAgent.isStopped = false;
        animator.SetBool("walking", true);
        if (walkingDirection)
        {
            if (moveCounter < (movementPoints.Count - 1))
            {
                moveCounter += 1;
            }
            else
            {
                moveCounter = 0;
            }
        }
        else
        {
            if (moveCounter > 0)
            {
                moveCounter--;
            }
            else
            {
                moveCounter = movementPoints.Count -1;
            }
        }
        
        targestDestination = movementPoints[moveCounter].position;

        navMeshAgent.SetDestination(targestDestination);
    

        currentState = NPCState.MOVING;

    }


    public override void LookForWork()
    {
       
            //hasLooked = true;
            currentPlants.Clear();
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
            int i = 0;
            while (i < hitColliders.Length)
            {
                if (hitColliders[i].gameObject.tag == "Plant")
                {
                    currentPlants.Add(hitColliders[i].gameObject.GetComponent<Plant>());

                }
            i++;
        }
        if (planterOrSucker)
        {
            if (currentPlants.Count < plantMaximum)
            {
                StartCoroutine(PerformLabor());
            }
            else
            {
                SetMove();
            }
        }
        else
        {
            if (currentPlants.Count > plantMaximum)
            {
                StartCoroutine(PerformLabor());
            }
            else
            {
                SetMove();
            }
        }
    }

    //2 possibilities:
    //Planter finds seeds from seed pile then plants them in orbit
    //Sucker hoovers seeds off trees then spits them out at transform of seed pile
    //Seed pile should be interactable and have a counter for number of seeds

    //Don't play rocks... Need to make drummers labor on rocks more interesting
    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);

        //Planter if true
        if (planterOrSucker)
        {
           
                //random # of plants
                int randomPlantAmount = Random.Range(1, plantMaximum - currentPlants.Count);

            //loop to plant
            for (int i = 0; i < randomPlantAmount; i++)
            {
                //spawn plant
                plantClone = Instantiate(plantPrefab, transform.position + new Vector3(0, heightAdjustment, 0), Quaternion.identity);
                plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = myMusic.primarySource.outputAudioMixerGroup;
            
                //Need to figure out how to adjust planting position of the plant
                //bool canPlant = false;
                //Collider[] hitColliders = Physics.OverlapSphere(transform.position, plantingRadius);
                //int p = 0;

                //    while (p < hitColliders.Length)
                //    {
                //        if (hitColliders[i].gameObject.tag == "Plant")
                //        {
                //            canPlant = false;
                //        }
                //        p++;
                //    }
                

                yield return new WaitForSeconds(waitingTime);
            }
            
        }

        //Sucker if false
        else
        {
                //for the number of plants exceeding the max
                for (int p = 0; p < (currentPlants.Count - plantMaximum); p++)
                {
                    //choose random plant to play up or down the scale
                    int randomPlant = Random.Range(0, currentPlants.Count);

                    if (!currentPlants[randomPlant].sapling)
                    {
                        //loop through plant branches
                        for (int i = 0; i < currentPlants[randomPlant].soundSources.Count; i++)
                        {
                            if (currentPlants[randomPlant].soundSources[i].activeSelf)
                            {
                                //turn off fruit
                                currentPlants[randomPlant].soundSources[i].transform.localScale *= 0.5f;
                                currentPlants[randomPlant].soundSources[i].SetActive(false);

                            currentPlants[randomPlant].audioSource.PlayOneShot(currentPlants[randomPlant].musicalNotes[currentPlants[randomPlant].currentNote]);

                                yield return new WaitForSeconds(waitingTime);
                            }
                        }

                        //play poof
                        currentPlants[randomPlant].poofParticles.Play();
                        yield return new WaitForSeconds(waitingTime);

                        //destroy plant if all seeds are gone 
                        Destroy(currentPlants[randomPlant].gameObject);
                        currentPlants.Remove(currentPlants[randomPlant]);
                    }
                    else
                    {
                        //play poof
                        currentPlants[randomPlant].poofParticles.Play();
                        yield return new WaitForSeconds(waitingTime);

                        //destroy plant if all seeds are gone 
                        Destroy(currentPlants[randomPlant].gameObject);
                        currentPlants.Remove(currentPlants[randomPlant]);
                    }
                }
            
        }
        
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }

}
