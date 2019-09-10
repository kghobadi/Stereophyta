using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class WaterSplash : Rhythm {
    //player ref
    ThirdPersonController tpc;

    //watering can script ref
    WateringCan waterParent;

    //audio for splashing
    AudioSource splashAudio;
    public AudioClip[] splashSounds;
    public AudioClip[] oneNotes, twoNotes, threeNotes, fourNotes, fiveNotes;

    //obj refs
    Vector3 originalPosition;
    SphereCollider sphereCol;
    ParticleSystem splashEffect;
    ParticleSystem.MainModule splashMain;

    //only true when player uses watering can
    public bool splashing;

    void Awake () {
        waterParent = transform.parent.GetComponent<WateringCan>();
        splashAudio = GetComponent<AudioSource>();
        originalPosition = transform.localPosition;
        splashEffect = GetComponent<ParticleSystem>();
        sphereCol = GetComponent<SphereCollider>();
        splashEffect.Stop();
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        splashMain = splashEffect.main;
        sphereCol.enabled = false;
	}
    
    public IEnumerator Splash()
    {
        splashEffect.Play();
        sphereCol.enabled = true;
        int randomSplash = Random.Range(0, splashSounds.Length);
        splashAudio.PlayOneShot(splashSounds[randomSplash], 0.25f);
        splashing = true;
        yield return new WaitForSeconds(splashMain.duration);
        splashing = false;
        splashEffect.Stop();
        sphereCol.enabled = false;
        transform.localPosition = new Vector3(0, -30, 0);
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);

        //only trigger stuff when i am splashing from watering can
        if (splashing)
        {
            //Debug.Log("spash triggering");
            //for plants
            if (other.gameObject.tag == "Plant")
            {
                //plont
                if (other.GetComponent<Plont>())
                {
                    //play sound from plant
                    if (!other.gameObject.GetComponent<Plont>().plantSource.isPlaying)
                        other.gameObject.GetComponent<Plont>().PlaySound();

                    //if it hasn't been watered, grow and water
                    if (!other.gameObject.GetComponent<Plont>().hasBeenWatered)
                    {
                        other.gameObject.GetComponent<Plont>().WaterPlant();
                    }
                }

                //shroom
                if (other.GetComponent<Shroom>())
                {
                    //change rhythm possible
                    if (!other.GetComponent<Shroom>().changedRhythm)
                        other.GetComponent<Shroom>().SwitchRhythm();

                    other.GetComponent<Shroom>().ReleaseSpores();
                }
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

            //wind fan
            if (other.gameObject.tag == "WindMachines")
            {
                //dont want to change the tempo too many times
                if (!other.gameObject.GetComponent<WindMachine>().changedRhythm)
                {
                    other.gameObject.GetComponent<WindMachine>().IncreaseTempo();
                }
            }
        }
      

       
    }
}
