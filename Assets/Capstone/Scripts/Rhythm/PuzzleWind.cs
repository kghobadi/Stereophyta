using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuzzleWind : Rhythm
{
    PooledObject poolObj;

    float currentSpeed;
    public WindMachine _windGen;
    ParticleSystem windParticles;

    public LayerMask ground;
    Vector3 originalPos;

    void Start()
    {
        currentSpeed = _windGen.windSpeed;
        windParticles = GetComponent<ParticleSystem>();
        poolObj = GetComponent<PooledObject>();
        transform.SetParent(null);
        originalPos = transform.position;
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, originalPos) > _windGen.distanceToDestroy)
        {
            StartCoroutine(DissipateWind());
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

    //waits for wind particles to stop fully 
    IEnumerator DissipateWind()
    {
        windParticles.Stop();
        yield return new WaitForSeconds(windParticles.main.duration);
        poolObj.ReturnToPool();
    }
}
