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
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(transform.position, debugDrawRadius);
    }
}
