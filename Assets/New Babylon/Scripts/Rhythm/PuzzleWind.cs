using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuzzleWind : Rhythm
{
    PooledObject poolObj;
    public Items.WindMachine _windGen;
    [HideInInspector] public ParticleSystem windParticles;

    public LayerMask ground;

    void Awake()
    {
        windParticles = GetComponent<ParticleSystem>();
    }

    void Start()
    {
        poolObj = GetComponent<PooledObject>();
    }

    public override void OnEnable()
    {
        base.OnEnable();
        
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        if (Vector3.Distance(transform.position, _windGen.transform.position) > _windGen.distanceToDestroy)
        {
            //unchild all dem seeds
            for (int i = 0; i < transform.childCount; i++)
            {
                transform.GetChild(i).SetParent(null);
            }
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
                transform.position = hit.point + new Vector3(0, 5f, 0);
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
