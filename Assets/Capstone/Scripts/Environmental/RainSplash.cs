using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class RainSplash : Rhythm {

    AudioSource splashAudio;
    public int currentSound;
    public AudioClip[] splashSounds;

    Vector3 originalPosition;
    ParticleSystem splashEffect;

	void Start () {
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        splashEffect.Stop();
        int randomSplash = Random.Range(0, splashSounds.Length);
        currentSound = randomSplash;
	}
    
    public IEnumerator Splash()
    {
        splashEffect.Play();
        splashAudio.PlayOneShot(splashSounds[currentSound]);
        yield return new WaitForSeconds(0.25f);
        splashEffect.Stop();
        transform.localPosition = originalPosition;
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        splashAudio.outputAudioMixerGroup = other.GetComponent<AudioSource>().outputAudioMixerGroup;

        if (other.gameObject.tag == "Rock")
        {
            other.gameObject.GetComponent<Rock>().PlaySound();
        }
    }
}
