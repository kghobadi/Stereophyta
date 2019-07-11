using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rhythm : MonoBehaviour {
    protected int enabledCounter = 0; // used to count # of enables

    public virtual void OnTriggerEnter(Collider other)
    {
        //plant tag
        if (other.gameObject.tag == "Plant")
        {
            //plont plays sound
            if (other.gameObject.GetComponent<Plont>())
            {
                other.gameObject.GetComponent<Plont>().PlaySound();
            }

            //shroom should release spores
            if (other.gameObject.GetComponent<Shroom>())
            {
                //might want switch rhythm to only have a chance to happen if this is annoying 
                other.gameObject.GetComponent<Shroom>().SwitchRhythm();
                other.gameObject.GetComponent<Shroom>().ReleaseSpores();
            }
        }
        else if (other.gameObject.tag == "Tree")
        {
            other.gameObject.GetComponent<AncientTree>().PlaySound();
            //Debug.Log("Tree played sound");
        }

        //seed plays sound, starts reacting to physics
        if (other.gameObject.tag == "Seed")
        {
            Seed seedScript = other.gameObject.GetComponent<Seed>();

            seedScript.seedSource.PlayOneShot(seedScript.dropSeed);

            seedScript.seedBody.isKinematic = false;

            Debug.Log("seed enter wind");
        }
    }
    

    public virtual void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            //string plantType = other.gameObject.GetComponent<Plant>().plantSpecieName.ToString();

            //if (plantType == "GUITAR")
            //{
            //    other.gameObject.GetComponent<GuitarPlant>().PlaySound();
            //}

            //repeatedly play notes while wind is on it
            //if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
            //    other.gameObject.GetComponent<Plont>().PlaySound();

        }

        //push seed while on it
        if(other.gameObject.tag == "Seed")
        {
            Seed seedScript = other.gameObject.GetComponent<Seed>();

            Vector3 force = -transform.forward;

            seedScript.seedBody.AddForce(force);

            Debug.Log("wind pushing seed, seed vel = " + seedScript.seedBody.velocity);
        }
    }

    public virtual void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Plant")
        {
           // string plantType = other.gameObject.GetComponent<Plant>().plantSpecieName.ToString();

        
        }

        //seed plays sound, stops reacting to physics
        if (other.gameObject.tag == "Seed")
        {
            Seed seedScript = other.gameObject.GetComponent<Seed>();

            seedScript.seedSource.PlayOneShot(seedScript.spawnPlant);

            seedScript.seedBody.isKinematic = true;

            Debug.Log("seed exit wind");
        }
    }

    public virtual void OnEnable()
    {
        enabledCounter++;
        
    }

}
