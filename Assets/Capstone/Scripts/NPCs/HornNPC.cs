using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HornNPC : NPC {

    List<HornPlant> currentPlants = new List<HornPlant>();
    public CircleMillControls circleMill;

    public ParticleSystem handRipples;
    //which direction is it walking
    public bool walkingDirection = true;

    //max # of plants at waypoint
    public int plantMaximum;

    public int currentSeedCount = 0;

    //for planters
    public GameObject plantPrefab; //switch out when planter goes to a pile of seeds
    GameObject plantClone;
    public float heightAdjustment;
    public float plantingRadius;

    float emitTimer = 0f, emitTimeTotal = 0.5f;

    float laborTimer = 0f, laborTimeTotal = 10f;

    public override void Start()
    {
        base.Start();
        myMusic.primaryTempo = 2;
    }

    public override void Update()
    {
        if(currentState == NPCState.LABOR)
        {
            emitTimer += Time.deltaTime;
            laborTimer += Time.deltaTime;
            if(emitTimer > emitTimeTotal)
            {
                handRipples.Emit(1);
                emitTimer = 0f;
            }
            if(laborTimer > laborTimeTotal)
            {
                animator.SetBool("working", false);
                animator.SetBool("walking", true);
                SetMove();
                
            }
        }
        else
        {
            base.Update();
            emitTimer = 0f;
        }
        
    }

    public override void SetMove()
    {
        laborTimer = 0;
        if (myLanguage.talking)
        {
            Debug.Log("talking");
            currentState = NPCState.TALKING;
        }
        else
        {
            //Debug.Log("set move");
            navMeshAgent.isStopped = false;
            animator.SetBool("working", false);
            animator.SetBool("idle", false);
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
                if (hitColliders[i].gameObject.GetComponent<Plant>().plantSpecieName.ToString() == "HORN")
                {
                    currentPlants.Add(hitColliders[i].gameObject.GetComponent<HornPlant>());
                }

            }
            i++;
        }
            
            if (currentPlants.Count > 0 || currentSeedCount > 0)
            {
                StartCoroutine(PerformLabor());
            }
            else
            {
                SetMove();
            }
        
    }

    //Don't play rocks... Need to make drummers labor on rocks more interesting
    public override IEnumerator PerformLabor()
    {
        currentState = NPCState.LABOR;
        //wait here a moment
        animator.SetBool("walking", false);
        animator.SetBool("working", true);

        if (moveCounter == 0)
        {
            transform.LookAt(new Vector3 (circleMill.transform.position.x, transform.position.y, circleMill.transform.position.z));
            yield return new WaitForSeconds(2);

            //change wind machine
            int randomRotate = Random.Range(0, 100);

            if(randomRotate > 60)
            {
                circleMill.Selection_One();
            }


            //change wind machine
            int randomTempo = Random.Range(0, 100);


            //tempo setting chances
            //if tempo is already fast
            if (circleMill.rhythmState > 2)
            {
                //increase chance low
                if (randomTempo < 25)
                {
                    circleMill.Selection_Two();
                    movementPointsContainer.transform.localScale *= 1.3f;
                }
                //decrease chance high
                else
                {
                    circleMill.Selection_Three();
                    movementPointsContainer.transform.localScale *= 0.7f;
                }
            }
            else if (circleMill.rhythmState == 2)
            {
                //increase 
                if (randomTempo < 50)
                {
                    circleMill.Selection_Two();
                    movementPointsContainer.transform.localScale *= 1.2f;
                }
                //decrease 
                else
                {
                    circleMill.Selection_Three();
                    movementPointsContainer.transform.localScale *= 0.8f;
                }
            }
            else if (circleMill.rhythmState < 2)
            {
                //increase chance high
                if (randomTempo < 75)
                {
                    circleMill.Selection_Two();
                    movementPointsContainer.transform.localScale *= 1.1f;
                }
                //decrease chance low
                else
                {
                    circleMill.Selection_Three();
                    movementPointsContainer.transform.localScale *= 0.9f;
                }
            }
            
        }

        //if I have seeds and there are not too many plants
        if (currentPlants.Count < plantMaximum && currentSeedCount > 0)
        {
            bool plantedSeed = false;

            for (int p = 0; p < myMusic.seedSpots.Count; p++)
            {
                if (!plantedSeed)
                {
                    if(myMusic.seedSpots[p].transform.childCount> 0)
                    {

                        int randomSeed = Random.Range(0, 100);
                        fruitSeedNoInv theSeed = myMusic.seedSpots[p].GetComponentInChildren<fruitSeedNoInv>();
                        if(theSeed != null) {
                            if (randomSeed < 50)
                            {
                                theSeed.planting = true;
                                currentSeedCount--;
                                plantedSeed = true;
                            }
                            else
                            {
                                //play this seeds note
                                theSeed.seedSource.PlayOneShot(theSeed.plantNote);
                                theSeed.notesPlaying.Emit(10);
                            }
                        }
                    }
                }
            }
                yield return new WaitForSeconds(waitingTime);
            
            //use ripple effect
            
        }

        //if there are plants and I do not have enough seeds
        if (currentSeedCount < myMusic.seedSpots.Count)
        {
            for(int i = 0; i < currentPlants.Count; i++)
            {
                //take seed from each plant in list
                if(currentPlants[i] != null)
                {
                    bool hasPickedSeed = false;
                    currentPlants[i].seedPicker = myMusic;
                    for (int s = 0; s < myMusic.seedSpots.Count; s++)
                    {
                        if (myMusic.seedSpots[s].transform.childCount == 0 && currentPlants[i] != null && !hasPickedSeed)
                        {
                            currentPlants[i].seedSpotNumber = s;
                            currentPlants[i].Selection_One();
                            currentSeedCount++;
                            hasPickedSeed = true;

                            yield return new WaitForSeconds(waitingTime);
                        }
                    }

                }

            }
        }


        animator.SetBool("working", false);
        animator.SetBool("walking", true);
        //visit seed pile or set move
        SetMove();
        
    }



}
