using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class RainSplash : Rhythm
{
    //cloud parent w raincloud script
    RainCloud cloudParent;

    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] oneNotes, twoNotes, threeNotes, fourNotes, fiveNotes;

    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ThirdPersonController tpc;

    SphereCollider sphereCol;
    public bool splashing;
    ParticleSystem.MainModule splashMain;

    void Awake()
    {   //set parent for rain 
        cloudParent = transform.parent.transform.parent.GetComponent<RainCloud>();

        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        sphereCol = GetComponent<SphereCollider>();
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        splashMain = splashEffect.main;
    }

    public IEnumerator Splash(Vector3 splashPosition)
    {
        transform.position = splashPosition;

        //particles
        splashEffect.Play();
        sphereCol.enabled = true;

        //audio
        int randomSplash = Random.Range(0, splashSounds.Length);
        splashAudio.PlayOneShot(splashSounds[randomSplash], 1f);
        splashAudio.clip = splashSounds[randomSplash];

        splashing = true;
        //Debug.Log("splashing");

        if(splashAudio.clip.length > splashEffect.main.duration)
        {
            //wait length of audio to return if it is longer
            yield return new WaitForSeconds(splashAudio.clip.length);
        }
        else
        {
            //wait length of splash effect if it is longer
            yield return new WaitForSeconds(splashEffect.main.duration);
        }
        
        splashing = false;
        splashEffect.Stop();
        sphereCol.enabled = false;
        transform.localPosition = originalPosition;
    }

    //handle trigger collisions with other objects
    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        if (other.gameObject.tag == "Plant" && splashing)
        {
            if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                other.gameObject.GetComponent<Plont>().PlaySound();

            //if it hasn't been watered, grow and water
            if (!other.gameObject.GetComponent<Plont>().hasBeenWatered)
            {
                other.gameObject.GetComponent<Plont>().GrowPlant(true);
                other.gameObject.GetComponent<Plont>().hasBeenWatered = true;
            }

            //if (other.gameObject.tag == "Animal")
            //{
            //    if (!other.gameObject.GetComponent<Crab>().animalAudio.isPlaying)
            //        other.gameObject.GetComponent<Crab>().PlaySound(other.gameObject.GetComponent<Crab>().running);
            //}
        }
    }
}
