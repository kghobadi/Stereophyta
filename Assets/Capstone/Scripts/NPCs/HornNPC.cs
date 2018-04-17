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
        if (myLanguage.talking)
        {
            Debug.Log("talking");
            currentState = NPCState.TALKING;
        }
        else
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
                    moveCounter = movementPoints.Count - 1;
                }
            }

            targestDestination = movementPoints[moveCounter].position;

            navMeshAgent.SetDestination(targestDestination);


            currentState = NPCState.MOVING;
        }
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
               
                yield return new WaitForSeconds(waitingTime + 1);

                if (plantClone.activeSelf)
                    plantClone.GetComponent<Plant>().audioSource.outputAudioMixerGroup = myMusic.primarySource.outputAudioMixerGroup;
                else
                {
                    plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = myMusic.primarySource.outputAudioMixerGroup;
                }
            }
            
        }

        //Sucker if false
        else
        {
            //for the number of plants exceeding the max
            for (int p = 0; p < (currentPlants.Count - plantMaximum); p++)
            {
                //if plant exists    
                if(currentPlants[p] != null)
                {
                    //look at plant pos
                    Vector3 plantPos = new Vector3(currentPlants[p].transform.position.x, transform.position.y, currentPlants[p].transform.position.z);
                    transform.LookAt(plantPos);

                    //if this plant is fully grown
                    if (!currentPlants[p].sapling)
                    {
                        transform.LookAt(plantPos);
                        currentPlants[p].regenNecessary = 100f;
                        //loop through plant branches
                        for (int i = 0; i < currentPlants[p].soundSources.Count; i++)
                        {
                            //check if plant is still there and if sound source is active
                            if (currentPlants[p] != null && currentPlants[p].soundSources[i].activeSelf)
                            {
                                Vector3 sourcePos = new Vector3(currentPlants[p].soundSources[i].transform.position.x, transform.position.y, currentPlants[p].soundSources[i].transform.position.z);
                                transform.LookAt(sourcePos);

                                //turn off fruit
                                currentPlants[p].soundSources[i].transform.localScale *= 0.5f;
                                currentPlants[p].soundSources[i].SetActive(false);

                                //play seed removal sound !!!
                                
                                yield return new WaitForSeconds(waitingTime);
                            }
                        }

                        //play poof
                        currentPlants[p].poofParticles.Play();
                        //wait until note stops playing
                        yield return new WaitUntil(() => currentPlants[p].audioSource.isPlaying == false);

                        //destroy plant if all seeds are gone 
                        Destroy(currentPlants[p].gameObject);
                        currentPlants.Remove(currentPlants[p]);
                        p--; //account for change in list size
                    }
                    else
                    {
                        currentPlants[p].waterNecessary = 100f;
                        transform.LookAt(plantPos);
                        yield return new WaitForSeconds(2);

                        if (currentPlants[p] != null)
                        {
                            //play poof
                            transform.LookAt(plantPos);
                            currentPlants[p].poofParticles.Play();
                            yield return new WaitForSeconds(waitingTime);
                            //destroy plant if all seeds are gone 
                            Destroy(currentPlants[p].gameObject);
                            currentPlants.Remove(currentPlants[p]);
                            p--; //account for change in list size
                        }

                    }
                }
               
            }
            
        }
        
        //visit seed pile or set move
        SetMove();
        
        animator.SetBool("walking", true);
    }

}
