using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class RainSplash : Rhythm {

    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] oneNotes, twoNotes, threeNotes, fourNotes, fiveNotes;

    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ThirdPersonController tpc;

	void Start () {
        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
	}
    
    public IEnumerator Splash()
    {
        splashEffect.Play();
        //splashAudio.outputAudioMixerGroup = tpc.plantingGroup; 
        int randomSplash = Random.Range(0, splashSounds.Length);
        splashAudio.PlayOneShot(splashSounds[randomSplash], 0.25f);
        yield return new WaitForSeconds(0.25f);
        splashEffect.Stop();
        transform.localPosition = originalPosition;
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        if (other.gameObject.tag == "Rock")
        {
            other.gameObject.GetComponent<Rock>().PlaySound();
        }
    }
}
