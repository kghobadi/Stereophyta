using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//bounds the player at the edges of the map 
//kinda an iffy system because of what it does visually 
public class PlayerBounding : MonoBehaviour
{
    public float xMin, xMax, zMin, zMax;
    public float teleportOffset;
    public float heightOffset;
    public LayerMask groundMask;

    Transform mainCam;
    PlayerCameraController pcc;

    void Awake()
    {
        mainCam = Camera.main.transform;
        pcc = mainCam.GetComponent<PlayerCameraController>();
    }

    void Update()
    {
        //xMin boundary
        if(transform.position.x < xMin)
        {
            Vector3 teleportPos = new Vector3(xMax - teleportOffset, transform.position.y + 50f, transform.position.z);

            SetPositions(teleportPos);
        }
        //xMax boundary 
        if (transform.position.x > xMax)
        {
            Vector3 teleportPos = new Vector3(xMin + teleportOffset, transform.position.y + 50f, transform.position.z);

            SetPositions(teleportPos);
        }
        //zMin boundary
        if (transform.position.z < zMin)
        {
            Vector3 teleportPos = new Vector3(transform.position.x, transform.position.y + 50f, zMax - teleportOffset);

            SetPositions(teleportPos);
        }
        //zMax boundary
        if (transform.position.z > zMax)
        {
            Vector3 teleportPos = new Vector3(transform.position.x, transform.position.y + 50f, zMin + teleportOffset );

            SetPositions(teleportPos);
        }
    }

    void SetPositions(Vector3 teleportPos)
    {
        transform.position = CheckY(teleportPos);
        mainCam.transform.position = transform.position + new Vector3(0, pcc.heightFromPlayer, pcc.distanceFromPlayer);
    }

    //adjusts y pos of object with raycast to ground 
    public Vector3 CheckY(Vector3 checkPos)
    {
        RaycastHit hit;

        //check down
        if (Physics.Raycast(checkPos, Vector3.down, out hit, Mathf.Infinity, groundMask))
        {
            return hit.point + new Vector3(0, heightOffset, 0);
        }

        //check up 
        else
        {
            if (Physics.Raycast(checkPos, Vector3.up, out hit, Mathf.Infinity, groundMask))
            {
                return hit.point + new Vector3(0, heightOffset, 0);
            }
            else
            {
                return checkPos;
            }
        }
    }
}
