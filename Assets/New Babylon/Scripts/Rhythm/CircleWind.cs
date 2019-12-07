using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CircleWind : Rhythm {

    GameObject windMill;
    public float windSpeed;
    public ParticleSystem windParticles;

    BoxCollider windTrigger;

	void Awake () {
        windMill = transform.parent.parent.gameObject;
        windParticles = GetComponent<ParticleSystem>();
        windTrigger = GetComponent<BoxCollider>();
	}
	
	void Update () {
        transform.RotateAround(windMill.transform.position, Vector3.up, windSpeed * Time.deltaTime);
        AdjustHeight();
	}

    //called from circle mill controls
    public void ActivateWind()
    {
        windParticles.Play();
        windTrigger.enabled = true;
    }

    //called from circle mill controls
    public void DeactivateWind()
    {
        windParticles.Stop();
        windTrigger.enabled = false;
    }

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 150f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 5f, 0);
            }
        }
    }
}
