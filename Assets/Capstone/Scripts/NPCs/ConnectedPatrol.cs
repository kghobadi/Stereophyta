using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ConnectedPatrol : MonoBehaviour {


    //Dictates whether the agent waits on each node
    [SerializeField]
    bool patrolWaiting;

    [SerializeField]
    float totalWaitTime = 3f;

    [SerializeField]
    float switchProbability = 0.2f;

    NavMeshAgent navMeshAgent;
    ConnectedWaypoint currentWaypoint;
    ConnectedWaypoint previousWaypoint;

    int waypointsVisited;
    bool traveling;
    bool waiting;
    bool patrolForward;
    float waitTimer;

    
	void Start () {
        navMeshAgent = GetComponent<NavMeshAgent>();

       if(currentWaypoint == null)
        {
            GameObject[] allWaypoints = GameObject.FindGameObjectsWithTag("Waypoint");

            if(allWaypoints.Length > 0)
            {
                while(currentWaypoint == null)
                {
                    int random = Random.Range(0, allWaypoints.Length);
                    ConnectedWaypoint startingWaypoint = allWaypoints[random].GetComponent<ConnectedWaypoint>();

                    if(startingWaypoint != null)
                    {
                        currentWaypoint = startingWaypoint;
                    }
                }
            }

            else
            {
                Debug.Log("not enough patrol points");
            }
        }

        SetDestination();
		
	}
	
	void Update () {
		if(traveling && navMeshAgent.remainingDistance <= 1.0f)
        {
            traveling = false;
            waypointsVisited++;

            if (patrolWaiting)
            {
                waiting = true;
                waitTimer = 0f;
            }
            else
            {
                SetDestination();
            }
        }

        if (waiting)
        {
            waitTimer += Time.deltaTime;
            if(waitTimer >= totalWaitTime)
            {
                waiting = false;
                
                SetDestination();
            }
        }
	}

    void SetDestination()
    {
       if(waypointsVisited > 0)
        {
            ConnectedWaypoint nextWaypoint = currentWaypoint.NextWaypoint(previousWaypoint);
            previousWaypoint = currentWaypoint;
            currentWaypoint = nextWaypoint;
        }

        Vector3 targetVector = currentWaypoint.transform.position;
        navMeshAgent.SetDestination(targetVector);
        traveling = true;
    }
}
