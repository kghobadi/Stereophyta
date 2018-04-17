using UnityEngine;
using System.Collections;

public class Sun : MonoBehaviour
{
    public GameObject waterDay, waterNight;
    public float rotationSpeed = 10;
    public Transform rotation;

    public Light sun;
    public bool isMorning, isMidday, isDusk, isNight;
	public Color morn, mid, dusk, night;
    public Color ambientMorn, ambientMid, ambientDusk, ambientNight;
    //public Gradient lightColorMap;
    float totalXRange, interval, middayInterval, duskInterval, nightInterval;

    void Start()
    {
        RenderSettings.ambientLight = ambientMorn;
		sun.color = morn;
        totalXRange = transform.position.x * 2;
        interval = totalXRange / 4;
        middayInterval = transform.position.x - interval;
        duskInterval = transform.position.x - (interval * 2);
        nightInterval = transform.position.x - (interval * 3);
        isMidday = false;
        isDusk = false;
        isNight = false;
    }

    void Update()
    {
        //rotates sun around zero 
     
        transform.RotateAround(Vector3.zero, Vector3.forward, rotationSpeed * Time.deltaTime);
        

        if(transform.position.x > middayInterval)
        {
			sun.color = Color.Lerp(sun.color, mid, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientMid, Time.deltaTime / 10);
			//sun.intensity = Mathf.Lerp (sun.intensity, 1.5f, Time.deltaTime);
            isMorning = true;
            isNight = false;
            isMidday = false;
            isDusk = false;
            waterDay.SetActive(true);
            waterNight.SetActive(false);
        }
        else if(transform.position.x < middayInterval && transform.position.x > duskInterval)
        {
            sun.color = Color.Lerp(sun.color, dusk, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientDusk, Time.deltaTime / 10);
            //sun.intensity = Mathf.Lerp (sun.intensity, 2, Time.deltaTime);
            isMidday = true;
            isMorning = false;
            isDusk = false;
            isNight = false;
        }
        else if (transform.position.x < duskInterval && transform.position.x > nightInterval)
        {
            sun.color = Color.Lerp(sun.color, night, Time.deltaTime / 10);
            RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientNight, Time.deltaTime / 10);
            //sun.intensity = Mathf.Lerp (sun.intensity, 2, Time.deltaTime);
            isMidday = false;
            isMorning = false;
            isDusk = true;
            isNight = false;
        }
        else if (transform.position.x < nightInterval)
        {
            isMorning = false;
            isMidday = false;
            isDusk = false;
            isNight = true;
            waterDay.SetActive(false);
            waterNight.SetActive(true);
        }

        transform.LookAt(Vector3.zero);

   
    }
}

