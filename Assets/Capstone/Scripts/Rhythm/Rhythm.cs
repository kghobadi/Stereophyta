using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rhythm : MonoBehaviour {
    int enabledCounter = 0; // used to count # of enables

    public virtual void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plant>().PlaySound();
        }
        if (other.gameObject.tag == "Seed")
        {
            other.gameObject.GetComponent<fruitSeedNoInv>().PlaySound();
        }
    }
    public virtual void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plant>().PlaySound();
        }
    }

    public virtual void OnEnable()
    {
        enabledCounter++;
    }

}
