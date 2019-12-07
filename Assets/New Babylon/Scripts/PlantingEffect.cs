using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantingEffect : MonoBehaviour {
    ParticleSystem myParticles;

    private void Start()
    {
        myParticles = GetComponent<ParticleSystem>();
    }

    void Update () {
		if(transform.parent == null && (myParticles.isStopped || !myParticles.isPlaying))
        {
            Destroy(gameObject);
        }
	}
}
