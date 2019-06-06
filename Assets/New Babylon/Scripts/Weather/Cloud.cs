using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cloud : MonoBehaviour
{
    Sun sunScript;
    GameObject _player;

    float currentSpeed;
    public CloudGenerator _cloudGen;

    ParticleSystem cloudSystem;
    ParticleSystem.ColorOverLifetimeModule colorOLmod;

    PooledObject poolObj;

    public float height;

    void Start()
    {
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        _player = GameObject.FindGameObjectWithTag("Player");

        currentSpeed = _cloudGen.cloudSpeed;

        cloudSystem = GetComponent<ParticleSystem>();
        colorOLmod = cloudSystem.colorOverLifetime;

        poolObj = GetComponent<PooledObject>();
    }
    
    void Update()
    {
        //at night change gradiaent to night gradient
        if(sunScript.timeState == Sun.TimeState.NIGHT)
        {
            //do something with the color
        }

        //move at current speed
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        //destroy when it gets far away enough from original generator
        if (Vector3.Distance(transform.position, _cloudGen.transform.position) > _cloudGen.distanceToDestroy)
        {
            cloudSystem.Stop();

            if(cloudSystem.particleCount <= 0)
            {
                poolObj.ReturnToPool();
            }
           
        }
        
        AdjustHeight();
    }
    
    //adjusts height based on raycast at the Ground (terrain)
    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 500))
        {
            transform.position = Vector3.MoveTowards(transform.position, hit.point + new Vector3(0, height, 0), 5 * Time.deltaTime);
        }
    }

    //an attempt at optimizing cloud particles
    void OnBecameVisible()
    {
        if (cloudSystem.isPaused)
        {
            cloudSystem.Play();
        }
    }

    void OnBecameInvisible()
    {
        if (cloudSystem.isPlaying && cloudSystem.particleCount > 50)
        {
            cloudSystem.Pause();
        }
    }

}
