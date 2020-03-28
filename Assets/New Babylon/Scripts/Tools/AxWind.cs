using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;

public class AxWind : Rhythm {
    public Ax myAxDaddy;

    [HideInInspector]
    public Vector3 originalPos;

    public float axDist;
    public float scaleIncrease;

    PooledObject pooledObj;

    void Start()
    {
        pooledObj = GetComponent<PooledObject>();
        currentSpeed = myAxDaddy.axWindSpeed;
        axDist = myAxDaddy.distanceToDestroyWinds;
        scaleIncrease = myAxDaddy.scaleIncrease;
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        transform.localScale += (Vector3.one * scaleIncrease * Time.deltaTime);

        if (Vector3.Distance(transform.position, originalPos) > myAxDaddy.distanceToDestroyWinds)
        {
            //unchild all dem seeds
            for (int i = 0; i < transform.childCount; i++)
            {
                GameObject child = transform.GetChild(i).gameObject;

                child.transform.SetParent(null);

                child.transform.localScale = child.GetComponent<Seed>().origScale;
            }

            pooledObj.ReturnToPool();
        }

        AdjustHeight();
    }

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 25f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 1.5f, 0);
            }
        }
    }

    public override void OnTriggerEnter(Collider other)
    {

        base.OnTriggerEnter(other);

        //has plant tag
        if(other.gameObject.tag == "Plant" )
        {
            //is it plont?
            if (other.gameObject.GetComponent<Plont>())
            {
                
                if (!other.gameObject.GetComponent<Plont>().extraVoice.isPlaying)
                {
                    //shrink plant and play guitar sound
                    other.GetComponent<Plont>().GrowPlant(false, true);
                    PlaySound(other.gameObject.GetComponent<Plont>().extraVoice, myAxDaddy.axHits);
                }
            }

            //is it a shroom?
            if (other.gameObject.GetComponent<Shroom>())
            {
                other.GetComponent<Shroom>().UprootShroom();
            }
        }

        //when u hit on wind fan increase the rhythm
        if (other.gameObject.tag == "WindMachines")
        {
            other.gameObject.GetComponent<WindMachine>().IncreaseTempo();
            //Debug.Log("ax inceased tempo");
        }

        //animals
        if (other.gameObject.tag == "Animal")
        {
            //crab
            if (other.gameObject.GetComponent<Crab>())
            {
                if (other.gameObject.GetComponent<Crab>().animalState != AnimalAI.AnimalAIStates.SLEEPING)
                {
                    other.gameObject.GetComponent<Crab>().Interrupt();
                }
            }
            //Deer
            if (other.gameObject.GetComponent<Deer>())
            {
                if (other.gameObject.GetComponent<Deer>().animalState != AnimalAI.AnimalAIStates.SLEEPING)
                {
                    other.gameObject.GetComponent<Deer>().Interrupt();
                }
            }
        }
    }

    //adds on ax sound (guitar notes
    public void PlaySound(AudioSource audSource, AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        audSource.PlayOneShot(sounds[randomSound]);
    }

}
