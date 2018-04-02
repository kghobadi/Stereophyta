using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodWaypoint : MonoBehaviour {

    [SerializeField]
    protected float debugDrawRadius = 1.0f;
    public PathType pathType;
    public bool showMesh;

    MeshRenderer mr;

    public enum PathType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    void Start()
    {
        mr = GetComponent<MeshRenderer>();
        mr.enabled = false;
    }

    void Update()
    {
        if (showMesh)
        {
            mr.enabled = true;
        }
        else
        {
            mr.enabled = false;
        }
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
