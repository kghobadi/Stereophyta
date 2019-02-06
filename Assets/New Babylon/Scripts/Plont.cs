using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public struct GrowthStages
{
    public int growthDays;
    public GameObject stageModel;
    public AudioClip stageSound;
}

public class Plont : Interactive {
    Sun sun;

    Rigidbody plantBody;
    BoxCollider plantCollider;
    GameObject currentModel;

    public AudioSource plantSource;
    public AudioClip currentClip;
    ParticleSystem soundPlaying;
    public float emitFreq=0.25f;
    float emitTimer;

    Vector3 originalScale;
    public int myAge, currentStage, nextStage;
    public bool dayPassed, hasBeenWatered;
    public GrowthStages[] myGrowthStages;

    Animator plantAnimator;
    
	void Start () {
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();

        plantBody = GetComponent<Rigidbody>();
        plantBody.isKinematic = true;
        plantCollider = GetComponent<BoxCollider>();
        plantSource = GetComponent<AudioSource>();

        originalScale = transform.localScale;
        myAge = 0;
        currentStage = 0;
        soundPlaying = transform.GetChild(0).GetComponent<ParticleSystem>();
        soundPlaying.Stop();

        plantAnimator = GetComponent<Animator>();

        GrowPlant(true);
    }
	
	 public override void Update () {
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

        if(sun.yesterday == sun.dayCounter)
        {
            dayPassed = false;
        }
        
        //turn sound particles on and off
        if (plantSource.isPlaying)
        {
            emitTimer -= Time.deltaTime;
            if(emitTimer < 0)
            {
                soundPlaying.Emit(1);
                emitTimer = emitFreq;
            }
        }
	}

    public void GrowPlant(bool growOrShrink)
    {
        //grow
        if (growOrShrink)
        {
            Debug.Log("growing!!");
            //increment current stage based on number of growth stages
            if (currentStage < myGrowthStages.Length - 1)
                currentStage++;
            else
            {
                //time to die!
                Debug.Log("Rip " + gameObject.name);
                Destroy(gameObject);
            }
        }
        //shrink
        else
        {
            Debug.Log("shrinking!!");
            //increment current stage based on number of growth stages
            if (currentStage > 1)
                currentStage--;
            else
            {
                //time to die!
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
            transform.localScale = originalScale * currentStage;
        }
        

        //set nextStage
        nextStage = myAge + myGrowthStages[currentStage].growthDays;
        //set current clip
        currentClip = myGrowthStages[currentStage].stageSound;
    }
    
    public void PlaySound()
    {
        plantSource.PlayOneShot(currentClip);
        plantAnimator.SetTrigger("wobble");
    }
}
