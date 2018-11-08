using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rhythm : MonoBehaviour {
    protected int enabledCounter = 0; // used to count # of enables

    public virtual void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            string plantType = other.gameObject.GetComponent<Plant>().plantSpecieName.ToString();

            if (plantType == "GUITAR")
            {
                other.gameObject.GetComponent<GuitarPlant>().PlaySound();
            }
            else if (plantType == "HORN")
            {
                other.gameObject.GetComponent<HornPlant>().PlaySound();
            }
            else if (plantType == "PIANO")
            {
                other.gameObject.GetComponent<PianoPlant>().PlaySound();
            }
        }
        else if (other.gameObject.tag == "Seed")
        {
            other.gameObject.GetComponent<fruitSeedNoInv>().PlaySound();
            Debug.Log("seed playing");
        }
    }
    public virtual void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            string plantType = other.gameObject.GetComponent<Plant>().plantSpecieName.ToString();

            if (plantType == "GUITAR")
            {
                other.gameObject.GetComponent<GuitarPlant>().PlaySound();
            }
            //else if (plantType == "HORN")
            //{
            //    other.gameObject.GetComponent<HornPlant>().PlaySound();
            //}
            //else if (plantType == "PIANO")
            //{
            //    other.gameObject.GetComponent<PianoPlant>().PlaySound();
            //}
        }
    }

    public virtual void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Plant")
        {
            string plantType = other.gameObject.GetComponent<Plant>().plantSpecieName.ToString();

        
        }
    }

    public virtual void OnEnable()
    {
        enabledCounter++;
        
    }

}
