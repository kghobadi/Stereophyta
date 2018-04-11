using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodPianoMonk : GodNPC {

    //Piano Monks will play piano trees all the way up and down the scale
    //If sapling counter > saplingsNecessary, uses Divine Light to grow all nearby plants
    //They do not play rocks

    public int saplingsNecessary;
    int saplingCount = 0;

    List<GodPlant> plantsToGrow = new List<GodPlant>();

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

    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(waitingTime);


        //DIVINE LIGHT -- if x # of plants are still saplings
        // Grow all the plants and do cool animation
        //loop through all the plants
        for (int i = 0; i < currentPlants.Count; i++)
        {
            if (currentPlants[i].sapling)
            {
                saplingCount++;
                plantsToGrow.Add(currentPlants[i]);
            }
                
        }
        //Debug.Log(plantsToGrow.Count);
        if(saplingCount > saplingsNecessary)
        {
            //do divine Light effect and animation!!

            //loop through plantsToGrow and grow them
            for(int p = 0; p < plantsToGrow.Count; p++)
            {
                plantsToGrow[p].GrowPlant();
            }

            yield return new WaitForSeconds(waitingTime * 3);

            //reset sapling count and clear plantsToGrow
            saplingCount = 0;
            plantsToGrow.Clear();
        }
        else
        {
            //reset sapling count and clear plantsToGrow
            saplingCount = 0;
            plantsToGrow.Clear();
        }

        //choose random plant to play up or down the scale
        int randomPlant = Random.Range(0, currentPlants.Count);

        int randomShift = Random.Range(0, 100);
            
                transform.LookAt(new Vector3(currentPlants[randomPlant].transform.position.x, transform.position.y, currentPlants[randomPlant].transform.position.z));
                for(int n = 0; n < currentPlants[randomPlant].musicalNotes.Length - 1; n++)
                {
                    if (randomShift > 50)
                    {
                        currentPlants[randomPlant].ShiftNoteUp(); //ShiftNoteUp
                        currentPlants[randomPlant].audioSource.PlayOneShot(currentPlants[randomPlant].currentSound);
                    }
                    else
                    {
                        currentPlants[randomPlant].ShiftNoteDown(); //ShiftNoteDown
                        currentPlants[randomPlant].audioSource.PlayOneShot(currentPlants[randomPlant].currentSound);
                    }
                    yield return new WaitForSeconds(waitingTime);
                }
        
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }
}
