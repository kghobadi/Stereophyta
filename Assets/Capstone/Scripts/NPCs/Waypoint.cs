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
    bool hasBeenSet = false;
    public Vector3 origScale;
    public LayerMask mask;

    public enum PathType
    {
        GUITAR, DRUM, HORN, PIANO
    }

    void Start()
    {
        mr = GetComponent<MeshRenderer>();
        sc = GetComponent<SphereCollider>();
        origScale = transform.localScale;
    }

    void Update()
    {
        if (playerSetting)
        {
            hasBeenSet = false;
            mr.enabled = true;
            sc.enabled = true;
        }
        else
        {
            if (!hasBeenSet)
            {
                AdjustHeight();
                mr.enabled = false;
                sc.enabled = false;
                hasBeenSet = true;
            }
            
        }
    }

    public bool RaycastToGround()
    {
        Vector3 down = Vector3.down;

        Vector3 up = Vector3.up;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 25f, mask))
        {
            if(hit.transform.gameObject.tag == "Ground")
            {
                return true;
            }
            else
            {
                RaycastHit upHit;

                if (Physics.Raycast(transform.position, up, out upHit, 25f, mask))
                {
                    if (hit.transform.gameObject.tag == "Ground")
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
        }
        else { 
            return false;
        }
    }

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        Vector3 up = transform.TransformDirection(Vector3.up) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 15f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 1.5f, 0);
            }
            else
            {
                RaycastHit upHit;

                if (Physics.Raycast(transform.position, up, out upHit, 10f))
                {
                    if (hit.transform.gameObject.tag == "Ground")
                    {
                        transform.position = hit.point + new Vector3(0, 1.5f, 0);
                    }
                }
            }
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
