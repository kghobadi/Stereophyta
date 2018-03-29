using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodRhythm : MonoBehaviour {
 

    public virtual void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<GodPlant>().PlaySound();
        }
    }
    public virtual void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<GodPlant>().PlaySound();
        }
    }
}
