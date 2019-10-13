using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class GuitarNPC : NPC {
    protected List<GuitarPlant> currentFlowers = new List<GuitarPlant>();
    protected List<GuitarPlant> flowersToTake = new List<GuitarPlant>();
    public Items.WindMachine windMachine;

    public ParticleSystem triRipple;

    public override void Start()
    {
        base.Start();

        windMachine.transform.LookAt(new Vector3(movementPoints[moveCounter].transform.position.x,
                   windMachine.transform.position.y, movementPoints[moveCounter].transform.position.z));
        
        triRipple.Stop();
        myMusic.primaryTempo = 2;
    }

    public override void Update()
    {
        base.Update();
        if (myLanguage.talking)
        {
            triRipple.Stop();
        }
    }

    //fills up lists of nearby guitar plants and windmachines
    public override void LookForWork()
    {
        //clear flower lists
        currentFlowers.Clear();
        flowersToTake.Clear();


        Collider[] hitColliders = Physics.OverlapSphere(movementPoints[moveCounter].transform.position, visionDistance);
            
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
                           currentFlowers.Add(hitColliders[v].gameObject.GetComponent<GuitarPlant>());
                    }
                    }
                }
            }
        
        Debug.Log(currentFlowers.Count);

        StartCoroutine(ChangeWind());
    }

    IEnumerator ChangeWind()
    {
        animator.SetBool("working", true);
        animator.SetBool("idle", false);
        animator.SetBool("walking", false);
        //this only happens if the player isn't interacting with the device
        //if (!windMachine.playerRotating /*&& !windMachine.playerHolding*/)
        {
            //change wind machine rotation
            int randomRotate = Random.Range(0, 100);

            if (randomRotate < 40)
            {
                //rotate windmachine to play the flowers in current group
                windMachine.transform.LookAt(new Vector3(movementPoints[moveCounter].transform.position.x,
                    windMachine.transform.position.y, movementPoints[moveCounter].transform.position.z));
                //Debug.Log(windMachine.transform.localEulerAngles);
                //windMachine.triRipples.Play();
                yield return new WaitForSeconds(1);
            }
        }

        //change wind machine
        int randomTempo = Random.Range(0, 100);


        //tempo setting chances
        //if tempo is already fast
        //if (windMachine.timeScale > 2)
        //{
        //    increase chance low
        //    if (randomTempo < 25)
        //    {
        //        windMachine.Selection_Three();
        //    }
        //    decrease chance high
        //    else
        //    {
        //        windMachine.Selection_Four();
        //    }
        //}
        //else if (windMachine.timeScale == 2)
        //{
        //    increase
        //    if (randomTempo < 50)
        //    {
        //        windMachine.Selection_Three();
        //    }
        //    decrease
        //    else
        //    {
        //        windMachine.Selection_Four();
        //    }
        //}
        //else if (windMachine.timeScale < 2)
        //{
        //    increase chance high
        //    if (randomTempo < 75)
        //    {
        //        windMachine.Selection_Three();
        //    }
        //    decrease chance low
        //    else
        //    {
        //        windMachine.Selection_Four();
        //    }
        //}

        //windMachine.triRipples.Play();
        yield return new WaitForSeconds(1);

        currentState = NPCState.LABOR;
        //if there are no nearby guitar flowers
        
            StartCoroutine(PerformLabor());
            Debug.Log("started labor");
    }

    //All NPCs perform some form of Labor. This means changing rhythm or sound producers around them
    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        animator.SetBool("working", true);
        animator.SetBool("idle", false);
        triRipple.Play();

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
            flowersToTake[i].Selection_Two();
        }


        yield return new WaitForSeconds(waitingTime);

        triRipple.Stop();
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
        animator.SetBool("working", false);
        animator.SetBool("idle", false);
    }
}