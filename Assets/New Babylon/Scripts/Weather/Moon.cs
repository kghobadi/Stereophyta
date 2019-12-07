using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

public class Moon : MonoBehaviour
{
    public Sun sunScript;
    public Light moon;


    void Update()
    {
        //rotates moon around zero 
        transform.RotateAround(Vector3.zero, Vector3.forward, sunScript.rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);
    }
}

