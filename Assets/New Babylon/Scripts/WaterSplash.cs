using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class WaterSplash : Rhythm {

    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] oneNotes, twoNotes, threeNotes, fourNotes, fiveNotes;

    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ThirdPersonController tpc;

	void Awake () {
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
        yield return new WaitUntil(() => splashAudio.isPlaying == false);
        splashEffect.Stop();
        transform.localPosition = originalPosition;
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plont>().PlaySound();

            //if it hasn't been watered, grow and water
            if (!other.gameObject.GetComponent<Plont>().hasBeenWatered)
            {
                other.gameObject.GetComponent<Plont>().GrowPlant(true);
                other.gameObject.GetComponent<Plont>().hasBeenWatered = true;
            }
        }
    }
}
