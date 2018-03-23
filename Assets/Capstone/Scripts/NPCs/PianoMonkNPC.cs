using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PianoMonkNPC : NPC {

    //Piano Monks will play piano trees all the way up and down the scale
    //They do not play rocks
    public override IEnumerator PerformLabor()
    {
        //wait here a moment
        animator.SetBool("walking", false);
        yield return new WaitForSeconds(waitingTime);

        for (int i = 0; i < currentPlants.Count; i++)
        {
            int randomShift = Random.Range(0, 100);
            if (currentPlants[i].plantSpecieName.ToString() == "CUBETREE")
            {
                transform.LookAt(new Vector3(currentPlants[i].transform.position.x, transform.position.y, currentPlants[i].transform.position.z));
                for(int n = 0; n < currentPlants[i].musicalNotes.Length - 1; n++)
                {
                    if (randomShift > 50)
                    {
                        currentPlants[i].Selection_Two(); //ShiftNoteUp
                        currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
                    }
                    else
                    {
                        currentPlants[i].Selection_One(); //ShiftNoteDown
                        currentPlants[i].audioSource.PlayOneShot(currentPlants[i].currentSound);
                    }
                    yield return new WaitForSeconds(waitingTime);
                }
            }
            else
            {
                if (randomShift > 50)
                {
                    currentPlants[i].Selection_Two(); //ShiftNoteUp
                }
                else
                {
                    currentPlants[i].Selection_One(); //ShiftNoteDown
                }
                yield return new WaitForSeconds(waitingTime);
            }
            
        }
        
        //set new move pos
        SetMove();
        animator.SetBool("walking", true);
    }
}
