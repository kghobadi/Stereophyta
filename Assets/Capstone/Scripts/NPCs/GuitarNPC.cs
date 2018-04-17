using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

public class GuitarNPC : NPC {
    protected List<NewPlant> newPlants = new List<NewPlant>();
    protected List<WindMachine> windMachines = new List<WindMachine>();
    public List<GameObject> seedLine = new List<GameObject>();

    //fills up lists of nearby plants and rocks
    public override void LookForWork()
    {
        windMachines.Clear();
        newPlants.Clear();
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionDistance);
        int i = 0;
        while (i < hitColliders.Length)
        {
            if (hitColliders[i].gameObject.tag == "Plant")
            {
                if(hitColliders[i].gameObject.GetComponent<NewPlant>().plantSpecieName.ToString() == "GUITAR")
                    newPlants.Add(hitColliders[i].gameObject.GetComponent<NewPlant>());
            }
            if(hitColliders[i].gameObject.tag == "WindMachines")
            {
                windMachines.Add(hitColliders[i].gameObject.GetComponent<WindMachine>());
            }
            i++;
        }
        //if there are no nearby plants or rocks, we set move
        if (newPlants.Count > 0 || windMachines.Count > 0)
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

        //for int i = 0; i < seedLine.Count; i++
        //plant new flowers 

        //loop through newPlants
        for (int i = 0; i < newPlants.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            //chance to switch plant on or off
            if (newPlants[i].active)
            {
                //switches off 
                if (randomShift < 20)
                {
                    newPlants[i].Selection_One();
                }
                else if(randomShift > 80)
                {
                    newPlants[i].Selection_Two();
                }
            }
            else
            {
                //switches on
                if (randomShift < 20)
                {
                    newPlants[i].Selection_One();
                }
                else if(randomShift > 20)
                {
                    newPlants[i].Selection_Two();
                }
            }
            
            yield return new WaitForSeconds(waitingTime);
        }

        //loop through windMachines
        for (int i = 0; i < windMachines.Count; i++)
        {
            int randomRotate = Random.Range(0, 100);
            int randomTempo = Random.Range(0, 100);
            //chance to rotate windmachine left or right
            if (randomRotate < 50)
            {
                windMachines[i].windMachineModel.transform.localEulerAngles -= new Vector3(0, 60, 0);
                Debug.Log("turned left");
            }
            else
            {
                windMachines[i].windMachineModel.transform.localEulerAngles += new Vector3(0, 60, 0);
                Debug.Log("turned right");
            }

            //tempo setting chances
            //if tempo is already fast
            if(windMachines[i].timeScale > 2)
            {
                //increase chance low
                if (randomTempo < 40)
                {
                    windMachines[i].Selection_Three();
                }
                //decrease chance high
                else
                {
                    windMachines[i].Selection_Four();
                }
            }
            else if (windMachines[i].timeScale == 2)
            {
                //increase 
                if (randomTempo < 50)
                {
                    windMachines[i].Selection_Three();
                }
                //decrease 
                else
                {
                    windMachines[i].Selection_Four();
                }
            }
            else if (windMachines[i].timeScale < 2)
            {
                //increase chance high
                if (randomTempo < 60)
                {
                    windMachines[i].Selection_Three();
                }
                //decrease chance low
                else
                {
                    windMachines[i].Selection_Four();
                }
            }

            yield return new WaitForSeconds(waitingTime);
        }

        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }
}