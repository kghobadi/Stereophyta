using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrumParticles : MonoBehaviour {

    Plant currentPlant;


    void OnParticleCollision(GameObject hit)
    {
        if (hit.tag == "Plant")
        {
            currentPlant = hit.GetComponent<Plant>();
            currentPlant.PlaySound();
        }
    }

}
