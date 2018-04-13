using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Waypoint : MonoBehaviour {

    [SerializeField]
    protected float debugDrawRadius = 1.0f;
    public PathType pathType;
    MeshRenderer mr;
    SphereCollider sc;
    public bool playerSetting, canBePlaced;

    public enum PathType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    void Start()
    {
        mr = GetComponent<MeshRenderer>();
        sc = GetComponent<SphereCollider>();
    }

    void Update()
    {
        if (playerSetting)
        {
            mr.enabled = true;
            sc.enabled = true;
        }
        else
        {
            mr.enabled = false;
            sc.enabled = false;
        }
    }

    public bool RaycastToGround()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, -Vector3.up, out hit, 100.0f))
        {
            if(hit.transform.gameObject.tag == "Ground")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
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
