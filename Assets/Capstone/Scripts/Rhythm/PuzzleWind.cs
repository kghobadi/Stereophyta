using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuzzleWind : Rhythm
{

    float currentSpeed;
    public WindMachine _windGen;

    void Start()
    {
        currentSpeed = _windGen.windSpeed;
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            Destroy(gameObject);
        }

        AdjustHeight();
    }

    public override void OnTriggerStay(Collider other)
    {
        // dont use Stay
    }

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 15f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 3f, 0);
            }
        }
    }
}
