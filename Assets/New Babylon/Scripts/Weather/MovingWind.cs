using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingWind : Rhythm {

    public WindGen _windGen;
    public LayerMask ground;
    public float blowSeedSpeed = 2f;

    ParticleSystem windParticles;
    PooledObject poolObj;

    void Start () {
        currentSpeed = _windGen.windSpeed;
        windParticles = GetComponent<ParticleSystem>();
        poolObj = GetComponent<PooledObject>();
    }
	
	void Update () {
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

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);

        //seed plays sound, starts reacting to physics
        if (other.gameObject.tag == "Seed")
        {
            //has seed script
            if (other.GetComponent<Seed>())
            {
                Seed seedScript = other.gameObject.GetComponent<Seed>();

                //make sure it is not ui seed
                if (!seedScript.UIseed)
                {
                    seedScript.seedState = Seed.SeedStates.BLOWING;

                    seedScript.transform.SetParent(transform);

                    //Debug.Log("seed enter wind");
                }
            }
        }

        //blow shroom
        if (other.gameObject.tag == "Plant")
        {
            //if shroom
            if (other.GetComponent<Shroom>())
            {
                if (other.GetComponent<Shroom>().plantingState == Shroom.PlantingState.UNPLANTED)
                {
                    other.GetComponent<Shroom>().blowing = true;

                    other.transform.SetParent(transform);

                    other.transform.localEulerAngles = new Vector3(0, 0, 0);
                }

                //Debug.Log("hit shroom");
            }
        }
    }

    public override void OnTriggerStay(Collider other)
    {
        base.OnTriggerStay(other);

        //repeatedly play notes while wind is on it
        if(other.gameObject.tag == "Plant")
        {
            //check that it is a plant
            if (other.GetComponent<Plont>())
            {
                if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                    other.gameObject.GetComponent<Plont>().PlaySound();
            }

            //blow that shroom
            if (other.GetComponent<Shroom>())
            {
                if (other.GetComponent<Shroom>().blowing)
                {
                    other.transform.Translate((-currentSpeed * blowSeedSpeed) * Time.deltaTime, 0, 0);
                }
            }
        }

        //blow that seed
        if (other.gameObject.tag == "Seed")
        {
            //check that it is a seed
            if (other.GetComponent<Seed>())
            {
                if (other.GetComponent<Seed>().seedState == Seed.SeedStates.BLOWING && !other.GetComponent<Seed>().UIseed)
                {
                    //blow slightly in the opposite direction
                    other.transform.Translate((-currentSpeed * blowSeedSpeed) * Time.deltaTime, 0, 0);

                    //Debug.Log("wind moving seed");
                }
            }
        }
    }

    public override void OnTriggerExit(Collider other)
    {
        base.OnTriggerExit(other);

        //stop blow seed
        if (other.gameObject.tag == "Seed")
        {
            //check that it is a seed
            if (other.GetComponent<Seed>())
            {
                //check its not UI seed 
                if (!other.GetComponent<Seed>().UIseed)
                {
                    other.GetComponent<Seed>().seedState = Seed.SeedStates.IDLE;

                    other.transform.SetParent(null);

                    other.transform.localScale = other.GetComponent<Seed>().origScale;

                    //Debug.Log("wind left seed");
                }
            }
        }

        //stop blow shroom
        if (other.gameObject.tag == "Plant")
        {
            if (other.GetComponent<Shroom>())
            {
                if (other.GetComponent<Shroom>().blowing)
                {
                    other.GetComponent<Shroom>().blowing = false;

                    other.transform.SetParent(null);

                    other.transform.localScale = other.GetComponent<Shroom>().originalSize;

                    //Debug.Log("wind left shroom");
                }
            }
        }
    }

    //waits for wind particles to stop fully 
    IEnumerator DissipateWind()
    {
        windParticles.Stop();
        //unparent all my stupid seed children cuz i am fucking DEAD
        for(int i = 0; i < transform.childCount; i++)
        {
            transform.GetChild(i).SetParent(null);
        }
        yield return new WaitForSeconds(windParticles.main.duration);
        poolObj.ReturnToPool();
    }
}
