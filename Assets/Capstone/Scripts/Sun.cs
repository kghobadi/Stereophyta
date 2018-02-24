﻿using UnityEngine;
using System.Collections;

public class Sun : MonoBehaviour
{

    public float rotationSpeed = 10;
    public Transform rotation;

    public Light sun;
    public bool isMorning, isMidday, isNight;
	public Color morn, mid, night;
    float totalXRange, interval, middayInterval, nightInterval;


    void Start()
    {
		sun.color = morn;
        totalXRange = transform.position.x * 2;
        interval = totalXRange / 3;
        middayInterval = transform.position.x - interval;
        nightInterval = transform.position.x - (interval * 2);
    }

    void Update()
    {
        //rotates sun around zero 
     
        transform.RotateAround(Vector3.zero, Vector3.forward, rotationSpeed * Time.deltaTime);
        

        if(transform.position.x > middayInterval)
        {
			sun.color = Color.Lerp(sun.color, morn, Time.deltaTime / 10);
			//sun.intensity = Mathf.Lerp (sun.intensity, 1.5f, Time.deltaTime);
            isMorning = true;
            isMidday = false;
            isNight = false;
        }
        else if(transform.position.x < middayInterval && transform.position.x > nightInterval)
        {
			sun.color = Color.Lerp (sun.color, mid, Time.deltaTime / 10);
			//sun.intensity = Mathf.Lerp (sun.intensity, 2, Time.deltaTime);
            isMorning = false;
            isMidday = true;
            isNight = false;
        }
        else if (transform.position.x < nightInterval)
        {
			sun.color = Color.Lerp(sun.color, night, Time.deltaTime / 10);
			//sun.intensity = Mathf.Lerp (sun.intensity, .25f, Time.deltaTime);

            isMorning = false;
            isMidday = false;
            isNight = true;
        }

        transform.LookAt(Vector3.zero);

   
    }
}

