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

	void Awake () {
        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        sphereCol = GetComponent<SphereCollider>();
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
	}
    
    public IEnumerator Splash()
    {
        splashEffect.Play();
        sphereCol.enabled = true;
        splashing = true;
        PlaySplashSound();
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

        if (other.gameObject.tag == "Animal")
        {
            if (!other.gameObject.GetComponent<Crab>().animalAudio.isPlaying)
                other.gameObject.GetComponent<Crab>().PlaySound(other.gameObject.GetComponent<Crab>().running);
        }
    }

    void PlaySplashSound()
    {
        int randomSplash = Random.Range(0, splashSounds.Length);
        splashAudio.PlayOneShot(splashSounds[randomSplash], 1f);
    }
}
