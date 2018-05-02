using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PanMap : MonoBehaviour {

    public MenuCamera camScript;
    public List<Transform> cameraPoints = new List<Transform>();
    Vector3 nextPoint;
    public int pointCounter = 0;
    public float moveSpeed;
    public bool moving = true;

    void Start()
    {
        pointCounter = Random.Range(0, cameraPoints.Count);
        SetPoint();
    }

    void Update () {
        if (moving)
        {
            if (Vector3.Distance(transform.position, nextPoint) > 1)
            {
                transform.position = Vector3.MoveTowards(transform.position, nextPoint, moveSpeed * Time.deltaTime);
            }
            else
            {
                SetPoint();
            }
        }

        if (Input.GetMouseButtonDown(0))
        {
            moving = false;
            camScript.zoomedOut = false;
        }
	}

    void SetPoint()
    {
        if(pointCounter < (cameraPoints.Count-1))
        {
            pointCounter++;
        }
        else
        {
            pointCounter = 0;
        }

        nextPoint = cameraPoints[pointCounter].position;
    }
}
