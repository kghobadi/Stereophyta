﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rain : MonoBehaviour
{
    GameObject _player;
    ThirdPersonController tpc;

    ParticleSystem rainEffect;

    private GameObject bed;

    BoxCollider rainTrigger;

    float timer = 0, randomRotateDirection = 1;
    public float lifeTime, moveSpeed;
    float remainder;

    Transform cloud;

    AudioSource rainSource;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();

        rainEffect = GetComponent<ParticleSystem>();
        
        bed = GameObject.FindGameObjectWithTag("Bed");

        rainEffect = GetComponent<ParticleSystem>();

        lifeTime = Random.Range(40, 100);
        moveSpeed = Random.Range(2.5f, 6.0f);

        rainTrigger = GetComponent<BoxCollider>();

        cloud = transform.GetChild(0);
        cloud.eulerAngles = new Vector3(0, Random.Range(0, 360), 0);

        rainSource = GetComponent<AudioSource>();
    }
    
    void Update()
    {
        timer += Time.deltaTime;

        if (timer > lifeTime)
            Destroy(this.gameObject);

        transform.Translate(Vector3.forward * Time.deltaTime * moveSpeed);

        remainder = timer % 8;
        if (remainder < 0.2f)
        {
            float randy = Random.Range(0, 100);
            if (randy > 50)
                randomRotateDirection = Random.Range(0, 1.0f);
            else
                randomRotateDirection = Random.Range(-1.0f, 0);


        }

        transform.Rotate(Vector3.up * Time.deltaTime * moveSpeed * 0.3f * randomRotateDirection);

        if ((randomRotateDirection > 0 && transform.localScale.x < 2) || (randomRotateDirection < 0 && transform.localScale.x > 0.4f))
            transform.localScale += Vector3.one * Time.deltaTime * moveSpeed * 0.0025f * randomRotateDirection;

        //if(Vector3.Distance(_player.transform.position, transform.position) < 50)
        //{
        //    rainSource.outputAudioMixerGroup = tpc.plantingGroup;
        //}

    }


    //SHOULD MAYBE DO THIS WITH A RAYCAST INSTEAD? CHECKING EACH PARTICLE'S COLLISION MIGHT BE TOO EXPENSIVE
    //void OnTriggerEnter(Collider other)
    //{
    //    if (other.gameObject.tag == "Plant")
    //    {
    //        if (other.gameObject.GetComponent<Plant>().sapling)
    //        {
    //            other.gameObject.GetComponent<Plant>().GrowPlant();
    //        }
    //    }
    //}

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            if (other.gameObject.GetComponent<Plant>().sapling)
            {
                other.gameObject.GetComponent<Plant>().waterTimer += Time.deltaTime;
                if(other.gameObject.GetComponent<Plant>().waterTimer > other.gameObject.GetComponent<Plant>().waterNecessary)
                {
                    other.gameObject.GetComponent<Plant>().GrowPlant();
                }
            }
        }
    }

    public void RainType()
    {
        ParticleSystem.MainModule rainModule = rainEffect.main;
        ParticleSystem.EmissionModule rainEmitter = rainEffect.emission;
       
        rainEffect.Play();
    }

}