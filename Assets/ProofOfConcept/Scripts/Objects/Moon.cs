using UnityEngine;
using System.Collections;

public class Moon : MonoBehaviour {

    public float rotationSpeed = 10;
    public Transform rotation;

    public Light moon;

   
	
	void Update () {
        //rotates Moon around zero
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);

        }


    }

