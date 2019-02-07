using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class WaterSplash : Rhythm {
    WateringCan waterParent;
    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] oneNotes, twoNotes, threeNotes, fourNotes, fiveNotes;

    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ThirdPersonController tpc;

    SphereCollider sphereCol;
    public bool splashing;

	void Awake () {
        waterParent = transform.parent.GetComponent<WateringCan>();
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
        int randomSplash = Random.Range(0, splashSounds.Length);
        splashAudio.PlayOneShot(splashSounds[randomSplash], 0.25f);
        splashing = true;
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

            //if it hasn't been watered, grow and water
            if (!other.gameObject.GetComponent<Plont>().hasBeenWatered)
            {
                other.gameObject.GetComponent<Plont>().GrowPlant(true);
                other.gameObject.GetComponent<Plont>().hasBeenWatered = true;
            }
        }
    }
}
