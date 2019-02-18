using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public struct GrowthStages
{
    public int growthDays;
    public GameObject stageModel;
}

public class Plont : MonoBehaviour {
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;

    Rigidbody plantBody;
    BoxCollider plantCollider;
    GameObject currentModel;

    public AudioSource plantSource, extraVoice;
    public AudioClip currentClip;
    ParticleSystem soundPlaying;
    ParticleSystem.MainModule soundsPlayer;
    public float emitFreq = 0.25f;
        public int emitCount;
    float emitTimer;

    Vector3 originalScale;
    public int myAge, currentStage, nextStage;
    public bool dayPassed, hasBeenWatered;
    public GrowthStages[] myGrowthStages;
    public AudioClip[] stageSounds;
    public AudioClip sicknessSound;
    Animator plantAnimator;

    public bool growing;
    public float growthSpeed;
    Vector3 newScale;
    
	void Start () {
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        //colliders and rigibodys
        plantBody = GetComponent<Rigidbody>();
        plantBody.isKinematic = true;
        plantCollider = GetComponent<BoxCollider>();
        plantAnimator = GetComponent<Animator>();

        //grab audio sources
        plantSource = GetComponent<AudioSource>();
        extraVoice = transform.GetChild(1).GetComponent<AudioSource>();

        //scale and set stages
        originalScale = transform.localScale;
        myAge = 0;
        currentStage = 0;
        soundPlaying = transform.GetChild(0).GetComponent<ParticleSystem>();
        soundPlaying.Stop();
        //call funcs
        PlayPlantingEffect();
        GrowPlant(true);
    }

    public void Update() {
        //counting days is hard work
        if (sun.dayCounter > sun.yesterday)
        {
            if (!dayPassed)
            {
                myAge++;

                hasBeenWatered = false;

                if (myAge == nextStage)
                {
                    GrowPlant(true);
                }

                dayPassed = true;
            }
        }

        if (sun.yesterday == sun.dayCounter)
        {
            dayPassed = false;
        }

        //turn sound particles on and off
        //if (plantSource.isPlaying || extraVoice.isPlaying)
        //{
        //    soundPlaying.Play();
        //    emitTimer -= Time.deltaTime;
        //    if (emitTimer < 0)
        //    {
        //        soundPlaying.Emit(emitCount);
        //        emitTimer = emitFreq;
        //    }
        //}
        //else
        //{
        //    soundPlaying.Stop();
        //}

        //lerps scale up as plants grow
        if (growing)
        {
            transform.localScale = Vector3.Lerp(transform.localScale, newScale, growthSpeed * Time.deltaTime);

            if(Vector3.Distance(transform.localScale, newScale) < 0.1f)
            {
                transform.localScale = newScale;
                growing = false;
            }
        }
	}

    public void GrowPlant(bool growOrShrink)
    {
        //if (plantAnimator.GetBool("sick") == true)
        //{
        //    plantSource.Stop();
        //    plantSource.loop = false;
        //    //n o more sick
        //    plantAnimator.SetBool("sick", false);
        //}
        //grow
        if (growOrShrink)
        {
            //Debug.Log("growing!!");
            //increment current stage based on number of growth stages
            if (currentStage < myGrowthStages.Length - 1)
            {
                currentStage++;
            } 
            //time to die!
            else
            {
                //gets sick until the player cuts it
                //plantAnimator.SetBool("sick", true);
                ////set current clip
                //currentClip = sicknessSound;
                //plantSource.loop = true;
                //plantSource.Play();
                Debug.Log("Rip " + gameObject.name);
                Destroy(gameObject);
            }
        }
        //shrink
        else
        {
            //Debug.Log("shrinking!!");
            //increment current stage based on number of growth stages
            if (currentStage > 1)
            {
                currentStage--;
            }
            //time to die!
            else
            {
                Debug.Log("Rip " + gameObject.name);
                Destroy(gameObject);
            }
        }
        

        //if there is a new model for this stage
        if (myGrowthStages[currentStage].stageModel)
        {
            //set new model
            if (currentModel)
            {
                currentModel.SetActive(false);
            }
            currentModel = myGrowthStages[currentStage].stageModel;
            currentModel.SetActive(true);
        }
        //just increase its height ok to original * current stage
        else
        {
            if (growOrShrink)
            {
                newScale = originalScale * currentStage;
                growing = true;
            }
            //shrink
            else
            {
                transform.localScale = originalScale * currentStage;
            }
        }


        //set nextStage
        nextStage = myAge + myGrowthStages[currentStage].growthDays;
        //set current clip
        currentClip = stageSounds[myAge];

        ParticleSystem.MainModule soundsPlayer = soundPlaying.main;
        soundsPlayer.duration = currentClip.length;
        //float randomSickness = Random.Range(0, 100);
        ////make the plant sick!
        //if (randomSickness < 5)
        //{
        //    plantAnimator.SetBool("sick", true);
        //    //set current clip
        //    currentClip = sicknessSound;
        //}
    }
    
    public void PlaySound()
    {
        if (!plantAnimator.GetBool("sick"))
        {
            plantSource.PlayOneShot(currentClip);
            soundPlaying.Play();
            plantAnimator.SetTrigger("wobble");
        }
    }

    //plays the dirt planting effect at start
    public void PlayPlantingEffect()
    {
        tpc.plantingEffects[tpc.plantingEffectCounter].transform.position = transform.position;
        tpc.plantingEffects[tpc.plantingEffectCounter].Play();

        if(tpc.plantingEffectCounter < tpc.plantingEffects.Count - 1)
        {
            tpc.plantingEffectCounter++;
        }
        else
        {
            tpc.plantingEffectCounter = 0;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && !plantSource.isPlaying )
        {
            //Debug.Log("player triggered");
            PlaySound();
        }
    }
}
