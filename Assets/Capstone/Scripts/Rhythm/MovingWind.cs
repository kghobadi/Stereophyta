using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingWind : Rhythm {

    float currentSpeed;
    public WindGen _windGen;
    public LayerMask ground;

    void Start () {
        currentSpeed = _windGen.windSpeed;
	}
	
	void Update () {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            Destroy(gameObject);
        }

        AdjustHeight();
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

    public override void OnTriggerStay(Collider other)
    {
        base.OnTriggerStay(other);

        //repeatedly play notes while wind is on it
        if(other.gameObject.tag == "Plant")
        {
            if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                other.gameObject.GetComponent<Plont>().PlaySound();
        }
     
    }
}
