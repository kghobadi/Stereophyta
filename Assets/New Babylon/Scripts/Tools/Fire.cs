using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fire : AudioHandler {
    Sun sun;
    [Header("Fire Settings")]
    public bool active;
    public ParticleSystem fireParticles;

	public override void Awake ()
    {
        base.Awake();

        sun = FindObjectOfType<Sun>();
        //deactivate fire when it's morning 
        sun.newDay.AddListener(DeactivateFire);
	}
	
	void Update ()
    {
		if(sun.timeState == Sun.TimeState.DUSK && !active)
        {
            //satil should come activate 
            ActivateFire();
        }

        //turn off fire in the morning 
        if(sun.timeState == Sun.TimeState.MORNING && active)
        {
            DeactivateFire();
        }
	}

    public void ActivateFire()
    {
        fireParticles.Play();
        myAudioSource.Play();
        active = true;
    }

    public void DeactivateFire()
    {
        fireParticles.Stop();
        myAudioSource.Stop();
        active = false;
    }
}
