using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloudGenerator : RhythmProducer
{
    public ObjectPooler cloudPooler;
    GameObject cloudClone;

    public float cloudSpeed;
    public float distanceToDestroy;

    public int cloudCounter = 0;
    public bool rainGen;

    public override void Awake()
    {
        base.Awake();

        SwitchTimeScale(); 
    }

    public override void Update()
    {
        //rhythm true from clock
        if (showRhythm)
        {
            //rain cloud generator
            if (rainGen)
            {
                //to help trim down cloud count
                if (cloudCounter < 4)
                {
                    cloudCounter++;
                }
                else
                {
                    cloudCounter = 0;

                    SpawnRainCloud();
                }
            }
            //normal cloud generator
            else
            {
                //to help trim down cloud count
                if (cloudCounter < 3)
                {
                    cloudCounter++;
                }
                else
                {
                    cloudCounter = 0;

                    SpawnCloud();
                }
                //SpawnCloud();
            }
          
           
            showRhythm = false;
        }

    }

    //spawn normal cloud
    void SpawnCloud()
    {
        //randomize spawn pos a bit
        Vector3 spawnPos = transform.position + Random.insideUnitSphere * 150f;
        spawnPos = new Vector3(spawnPos.x, transform.position.y, spawnPos.z);
        //grab obj from pool and set pos
        cloudClone = cloudPooler.GrabObject();
        cloudClone.transform.SetParent(transform);
        cloudClone.transform.position = spawnPos;
        cloudClone.transform.rotation = Quaternion.Euler(transform.eulerAngles);
        //assign refs to rain cloud script
        cloudClone.GetComponent<Cloud>()._cloudGen = this;

        //grab all the particle mod refs
        ParticleSystem cloudSystem = cloudClone.GetComponent<ParticleSystem>();
        ParticleSystem.MainModule cloudMain = cloudSystem.main;
        ParticleSystem.ShapeModule cloudShape = cloudSystem.shape;
        ParticleSystem.EmissionModule cloudEmis = cloudSystem.emission;

        //random max particles
        cloudMain.maxParticles += Random.Range(-15, 15);

        //randomize shape 
        float xScale = cloudShape.scale.x + Random.Range(-5f, 5f);
        float yScale = cloudShape.scale.y + Random.Range(-2.5f, 2.5f);
        float zScale = cloudShape.scale.z + Random.Range(-5f, 5f);
        cloudShape.scale = new Vector3(xScale, yScale, zScale);
    }

    //spawn rain cloud
    void SpawnRainCloud()
    {
        //randomize spawn pos a bit
        Vector3 spawnPos = transform.position + Random.insideUnitSphere * 25f;
        spawnPos = new Vector3(spawnPos.x, transform.position.y, spawnPos.z);
        //grab obj from pool and set pos
        cloudClone = cloudPooler.GrabObject();
        cloudClone.transform.SetParent(transform);
        cloudClone.transform.position = spawnPos;
        cloudClone.transform.rotation = Quaternion.Euler(transform.eulerAngles);
        //assign refs to rain cloud script
        cloudClone.GetComponent<RainCloud>()._cloudGen = this;
        cloudClone.GetComponent<RainCloud>().timeScale = timeScale;
    }


    public override void SwitchTimeScale()
    {
        base.SwitchTimeScale();

        switch (timeScale)
        {
            case 0:
                cloudSpeed = 2.5f;
                break;
            case 1:
                cloudSpeed = 5f;
                break;
            case 2:
                cloudSpeed = 10f;
                break;
            case 3:
                cloudSpeed = 20f;
                break;
            case 4:
                cloudSpeed = 40f;
                break;
        }
    }
}
