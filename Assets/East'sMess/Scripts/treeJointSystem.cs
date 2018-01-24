using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using AudioHelm;

public class treeJointSystem : MonoBehaviour
{

    public List<Transform> treeJoints = new List<Transform>();
    private bool hasChild = true;
    private Transform currentTransform;
    private List<Vector3> origAng = new List<Vector3>();
    public float swayAmount;


    // Use this for initialization
    void Start()
    {

        currentTransform = transform;

        while (hasChild)
        {
            if (currentTransform.childCount == 1)
            {
                treeJoints.Add(currentTransform);
                currentTransform = currentTransform.GetChild(0);
            }
            else
            {
                treeJoints.Add(currentTransform);
                hasChild = false;
            }
        }

        for (int i = 0; i < treeJoints.Count; i++)
        {

            origAng.Add(treeJoints[i].localEulerAngles);
        }



    }

    // Update is called once per frame
    void Update()
    {

        if (GetComponentInParent<beatVisualizer>() == null)
        {
            if (GetComponent<beatVisualizer>() != null)
                swayAmount = GetComponent<beatVisualizer>().progress;
        }
        else
        {
            swayAmount = GetComponentInParent<beatVisualizer>().progress;
        }
        for (int i = 0; i < treeJoints.Count; i++)
        {
            treeJoints[i].localEulerAngles = new Vector3(origAng[i].x + Mathf.Sin(Time.time * swayAmount), origAng[i].y - Mathf.Sin(Time.time * swayAmount), origAng[i].z + Mathf.Sin(Time.time * swayAmount));
        }


    }
}
