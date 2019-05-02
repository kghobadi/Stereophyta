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
    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;
    SleepSave saveScript;
    public bool startingPlant;

    //physics 
    Rigidbody plantBody;
    BoxCollider plantCollider;
    GameObject currentModel;

    //sound controls
    public AudioSource plantSource, extraVoice;
    public AudioClip currentClip;
    ParticleSystem soundPlaying;
    ParticleSystem.MainModule soundsPlayer;
    public float emitFreq = 0.25f;
        public int emitCount;
    float emitTimer;

    Vector3 originalScale;
    //stages
    public int myAge, currentStage, nextStage;
    public bool dayPassed, hasBeenWatered;
    public GrowthStages[] myGrowthStages;
    public AudioClip[] stageSounds;
    public AudioClip sicknessSound;
    public Animator plantAnimator, extraAnimator;
    public bool animatorInChildren, hasExtraAnimator;

    public bool hasCropBundles;
    public GameObject[] cropBundles;
    //for spawning seeds when cut down
    public GameObject seedPrefab;
    public GameObject plantPrefab;

    public bool growing;
    public float growthSpeed;
    Vector3 newScale;
    public float seedSpawnChance = 10;

    public PlantType myPlantType;

   
    //mostly used for saving / loading 
    public enum PlantType
    {
        PIANO, SUCCULENTAR, GUITAR, BELL, TRIANGULAR,
    }
    
	void Start () {
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        saveScript = GameObject.FindGameObjectWithTag("SleepSave").GetComponent<SleepSave>();
        //add data to save script
        if (!startingPlant)
        {
            saveScript.mySaveStorage.plants.Add(gameObject);
            saveScript.mySaveStorage.plantScripts.Add(this);
            saveScript.mySaveStorage.plantType.Add(myPlantType.ToString());

            Debug.Log("added this plant to save storage");
        }

        //colliders and rigibodys
        plantBody = GetComponent<Rigidbody>();
        plantBody.isKinematic = true;
        plantCollider = GetComponent<BoxCollider>();
        if (!animatorInChildren)
        {
            plantAnimator = GetComponent<Animator>();
        }

        //grab audio sources
        plantSource = GetComponent<AudioSource>();
        extraVoice = transform.GetChild(1).GetComponent<AudioSource>();

        //scale and set stages
        originalScale = transform.localScale;
        myAge = 0;
        currentStage = 0;
        soundPlaying = transform.GetChild(0).GetComponent<ParticleSystem>();
        soundPlaying.Stop();

        //turn off all the crop bundles at start
        if (hasCropBundles)
        {
            for(int i = 0; i < cropBundles.Length; i++)
            {
                cropBundles[i].SetActive(false);
            }
        }

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

        //resets day passed when sun increments its day counter ahead of its yesterday int
        if (sun.yesterday == sun.dayCounter)
        {
            dayPassed = false;
        }

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
        //grow
        if (growOrShrink)
        {
            //increment current stage based on number of growth stages
            if (currentStage < myGrowthStages.Length - 1)
            {
                currentStage++;

                //if older than 1
                if(currentStage > 1)
                {
                    //random chance to spawn a seed each time plant ages
                    float randomSpawn = Random.Range(0, 100);

                    if (randomSpawn < seedSpawnChance)
                    {
                        SpawnSeed();
                    }
                }
               
            }
            //time to die!
            else
            {
                //a little less than total # of crop bundles on plant death
                int randomDrop = Random.Range(cropBundles.Length - 3, cropBundles.Length);
                //spawn a bunch of seeds and die
                for(int i = 0; i < randomDrop; i++)
                {
                    SpawnSeed();
                }

                //from old age
                Die();
            }

            //set active next crop bundle
            if (hasCropBundles)
            {
                if (currentStage <= cropBundles.Length - 1)
                    cropBundles[currentStage].SetActive(true);
            }
        }
        //shrink
        else
        {
            //has seeds to drop
            if (hasCropBundles)
            {
                //high chance to spawn seed when cut // always drops when plant is on last life
                float randomChance = Random.Range(0, 100);
                if(randomChance > 50 || currentStage == 1)
                {
                    CutCrop();
                }
            }

            //Debug.Log("shrinking!!");
            //increment current stage based on number of growth stages
            if (currentStage > 1)
            {
                currentStage--;
            }
            //time to die!
            else
            {
                //from cutting down
                Die();
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
                newScale = (originalScale * currentStage) / 2;
                growing = true;
            }
            //shrink
            else
            {
                transform.localScale = (originalScale * currentStage) / 2;
            }
        }


        //set nextStage
        nextStage = myAge + myGrowthStages[currentStage].growthDays;
        //set current clip
        currentClip = stageSounds[myAge];

        //set particles duration to our current audio clip's length
        ParticleSystem.MainModule soundsPlayer = soundPlaying.main;
        soundPlaying.Stop();
        soundsPlayer.duration = currentClip.length;
    }

    //generally only called by loading script
    public IEnumerator AgeAtStart(int ages)
    {
        yield return new WaitForSeconds(0.1f);

        for(int i = 0; i < ages; i++)
        {
            GrowPlant(true);
        }

        //Debug.Log("grew at start");
    }
    
    //plays current audio clip and wobbles plant
    public void PlaySound()
    {
        plantSource.PlayOneShot(currentClip);
        soundPlaying.Play();
        plantAnimator.SetTrigger("wobble");
        if(hasExtraAnimator)
            extraAnimator.SetTrigger("wobble");
    }

    //called when chop and when plant dies
    public void CutCrop()
    {
        if(cropBundles[currentStage].activeSelf)
            cropBundles[currentStage].SetActive(false);
        //SPAWN SEED HERE
        SpawnSeed();
    }

    void Die()
    {
        //Debug.Log("Rip " + gameObject.name);

        //go through sleep save lists and remove me from everything
        if (!startingPlant)
        {
            int indexToRemove = saveScript.mySaveStorage.plants.IndexOf(gameObject);
            saveScript.mySaveStorage.plants.Remove(gameObject);
            saveScript.mySaveStorage.plantScripts.Remove(this);
            saveScript.mySaveStorage.plantType.RemoveAt(indexToRemove);
        }
       

        Destroy(gameObject);
    }

    void SpawnSeed()
    {
        Vector3 spawnPos = cropBundles[currentStage - 1].transform.position + Random.insideUnitSphere * 3 + new Vector3(0, 1f, 0);
        GameObject newSeed = Instantiate(seedPrefab, spawnPos, Quaternion.Euler(player.transform.localEulerAngles));
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

            //player might knock a seed down
            float randomChanceToDropSeed = Random.Range(0f, 100f);

            if(randomChanceToDropSeed < 1f)
            {
                SpawnSeed();
            }
        }
    }
}
