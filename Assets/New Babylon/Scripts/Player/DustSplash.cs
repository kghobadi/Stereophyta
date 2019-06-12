using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class DustSplash : Rhythm {
    AudioSource splashAudio;
    public AudioClip[] splashSounds;

    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ThirdPersonController tpc;

    SphereCollider sphereCol;
    public bool splashing;

    Vector3 origScale;

	void Awake () {
        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        sphereCol = GetComponent<SphereCollider>();
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        origScale = transform.localScale;
	}
    
    public IEnumerator Splash(int jumpType)
    {
        transform.localScale = origScale * (jumpType + 1);
        splashEffect.Play();
        sphereCol.enabled = true;
        splashing = true;
        PlaySplashSound(jumpType);
        yield return new WaitForSeconds(0.5f);
        splashing = false;
        splashEffect.Stop();
        sphereCol.enabled = false;
        transform.localPosition = new Vector3(0, -30, 0);
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        if (other.gameObject.tag == "Plant")
        {
            if(!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                other.gameObject.GetComponent<Plont>().PlaySound();
        }
        //when u jump on wind fan increase the rhythm
        if (other.gameObject.tag == "WindMachines")
        {
            other.gameObject.GetComponent<WindMachine>().IncreaseTempo();
        }
        if (other.gameObject.tag == "Animal")
        {
            if (!other.gameObject.GetComponent<Crab>().animalAudio.isPlaying)
                other.gameObject.GetComponent<Crab>().PlaySound(other.gameObject.GetComponent<Crab>().running);
        }
    }

    void PlaySplashSound(int jumpType)
    {
        splashAudio.PlayOneShot(splashSounds[jumpType], 1f);
    }
}
