using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConnectedWaypoint : Waypoint {

    [SerializeField]
    protected float connectivityRadius = 50f;

    List<ConnectedWaypoint> connections;

    public void Start() {
        //Grab all waypoints in scene
        GameObject[] allWaypoints = GameObject.FindGameObjectsWithTag("Waypoint");

        //create a list of Waypoints i can refer to
        connections = new List<ConnectedWaypoint>();

        //Check if they're a connected waypoint
        for (int i = 0; i < allWaypoints.Length; i++)
        {
            ConnectedWaypoint nextWaypoint = allWaypoints[i].GetComponent<ConnectedWaypoint>();

            if(nextWaypoint != null)
            {
                if(Vector3.Distance(transform.position, nextWaypoint.transform.position) <= connectivityRadius && nextWaypoint != this)
                {
                    connections.Add(nextWaypoint);
                }
            }
        }
	}

    public override void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, debugDrawRadius);

        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, connectivityRadius);
    }

    public ConnectedWaypoint NextWaypoint(ConnectedWaypoint previousWaypoint)
    {
        if(connections.Count == 0)
        {
            Debug.Log("Insufficient # of waypoints");
            return null;
        }

        else if(connections.Count == 1&& connections.Contains(previousWaypoint))
        {
            //only one waypoint so we return to the last one
            return previousWaypoint;
        }

        else
        {
            ConnectedWaypoint nextWaypoint;
            int nextIndex = 0;

            do
            {
                nextIndex = Random.Range(0, connections.Count);
                nextWaypoint = connections[nextIndex];
            }
            while (nextWaypoint == previousWaypoint);

            return nextWaypoint;
        }
    }
}
