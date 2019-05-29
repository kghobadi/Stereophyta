using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuzzleWind : Rhythm
{
    PooledObject poolObj;

    float currentSpeed;
    public WindMachine _windGen;

    public LayerMask ground;

    void Start()
    {
        currentSpeed = _windGen.windSpeed;

        poolObj = GetComponent<PooledObject>();
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            poolObj.ReturnToPool();
        }

        AdjustHeight();
    }

    public override void OnTriggerStay(Collider other)
    {
        // dont use Stay
    }

    void AdjustHeight()
    {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, Vector3.down, out hit, 35f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                //Debug.Log("adjusting " + hit.point);
                transform.position = hit.point + new Vector3(0, 3f, 0);
            }
        }
    }
}
