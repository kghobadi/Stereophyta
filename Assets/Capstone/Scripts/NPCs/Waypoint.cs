using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Waypoint : MonoBehaviour {

    [SerializeField]
    protected float debugDrawRadius = 1.0f;
    public PathType pathType;

    public enum PathType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    public virtual void OnDrawGizmos()
    {
        if(pathType == PathType.GUITAR)
        {
            Gizmos.color = Color.blue;
        }
        else if(pathType == PathType.DRUM)
        {
            Gizmos.color = Color.magenta;
        }
        else if(pathType == PathType.HORN)
        {
            Gizmos.color = Color.yellow;
        }
        else if (pathType == PathType.PIANO)
        {
            Gizmos.color = Color.cyan;
        }
        Gizmos.DrawWireSphere(transform.position, debugDrawRadius);
    }
}
