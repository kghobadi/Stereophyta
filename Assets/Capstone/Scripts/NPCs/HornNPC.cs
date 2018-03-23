using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HornNPC : NPC {

    public bool walkingDirection = true;

    public override void SetMove()
    {
        Debug.Log("set move");
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

}
