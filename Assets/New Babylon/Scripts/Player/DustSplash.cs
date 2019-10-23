using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using Items;

public class DustSplash : Rhythm {
    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] smallJumps, medJumps, bigJumps;
    Vector3 originalPosition;
    ParticleSystem splashEffect;
    ParticleSystem.MainModule splashMain;
    ThirdPersonController tpc;

    SphereCollider sphereCol;
    public bool splashing;

    Vector3 origScale;

    void Awake () {
        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        sphereCol = GetComponent<SphereCollider>();
        splashMain = splashEffect.main;
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        origScale = transform.localScale;
	}
    
    public IEnumerator Splash(int jumpType)
    {
        //set the dif colors
        switch (jumpType)
        {
            case 0:
                splashMain.startColor = tpc.smallJMat.color;
                PlayRandomSound(smallJumps);
                break;
            case 1:
                splashMain.startColor = tpc.midJMat.color;
                PlayRandomSound(medJumps);
                break;
            case 2:
                splashMain.startColor = tpc.bigJMat.color;
                PlayRandomSound(bigJumps);
                break;
        }
        transform.localScale = origScale * (jumpType + 1);
        splashEffect.Play();
        sphereCol.enabled = true;
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
            //plant
            if (other.GetComponent<Plont>())
            {
                //not already playing sound 
                if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                    other.gameObject.GetComponent<Plont>().PlaySound(1f);
            }
            //shroom
            if (other.GetComponent<Shroom>())
            {
                //change rhythm possible
                other.GetComponent<Shroom>().SwitchRhythm();
                other.GetComponent<Shroom>().ReleaseSpores();
            }

            //recursive tree 
            if (other.GetComponent<RecursiveBrancher>())
            {
                other.GetComponent<RecursiveBrancher>().PlaySounds();
            }
        }
        //when u jump on wind fan increase the rhythm
        if (other.gameObject.tag == "WindMachines")
        {
            other.gameObject.GetComponent<WindMachine>().IncreaseTempo();
        }
        //animals
        if (other.gameObject.tag == "Animal")
        {
            //crab
            if (other.gameObject.GetComponent<Crab>())
            {
                if (other.gameObject.GetComponent<Crab>().animalState != AnimalAI.AnimalAIStates.SLEEPING)
                {
                    other.gameObject.GetComponent<Crab>().Interrupt();
                }
            }
        }
    }

    void PlaySplashSound(int jumpType)
    {
        splashAudio.PlayOneShot(splashSounds[jumpType], 1f);
    }

    void PlayRandomSound(AudioClip[] sounds)
    {
        AudioClip clip = sounds[Random.Range(0, sounds.Length)];
        splashAudio.PlayOneShot(clip, 1f);
    }
}
