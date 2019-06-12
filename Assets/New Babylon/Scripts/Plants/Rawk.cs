using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public struct RawkGrowthStages
{
    public int growthDays;
    public GameObject stageModel;
}

public class Rawk : MonoBehaviour {
    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;
    SleepSave saveScript;
    public bool startingRock;

    //physics 
    Rigidbody rockBody;
    SphereCollider rockCollider;
    GameObject currentModel;

    //sound controls
    public AudioSource rockSource, extraVoice;
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
    public RawkGrowthStages[] myGrowthStages;
    public AudioClip[] stageSounds;
    public Animator rockAnimator, extraAnimator;
    public bool animatorInChildren, hasExtraAnimator;

    //for spawning crystals when mined
    public GameObject crystalPrefab;
    public GameObject plantPrefab;

    public bool growing;
    public float growthSpeed;
    Vector3 newScale;
    public float crystalSpawnChance = 10;

    public RockType myRockType;

    //mostly used for saving / loading 
    public enum RockType
    {
        GREENITE, PURPLON,
    }
    
	void Start () {
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        saveScript = GameObject.FindGameObjectWithTag("SleepSave").GetComponent<SleepSave>();
        //add data to save script
        //if (!startingPlant)
        //{
        //    saveScript.mySaveStorage.plants.Add(gameObject);
        //    saveScript.mySaveStorage.plantScripts.Add(this);
        //    saveScript.mySaveStorage.plantType.Add(myPlantType.ToString());

        //    Debug.Log("added this plant to save storage");
        //}

        //colliders and rigibodys
        rockBody = GetComponent<Rigidbody>();
        rockBody.isKinematic = true;
        rockCollider = GetComponent<SphereCollider>();
        if (!animatorInChildren)
        {
            rockAnimator = GetComponent<Animator>();
        }

        //grab audio sources
        rockSource = GetComponent<AudioSource>();
        extraVoice = transform.GetChild(1).GetComponent<AudioSource>();

        //scale and set stages
        originalScale = transform.localScale;
        myAge = 0;
        currentStage = 0;
        soundPlaying = transform.GetChild(0).GetComponent<ParticleSystem>();
        soundPlaying.Stop();
        

        //call funcs
        PlayPlantingEffect();
        GrowRock(true);
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
                    GrowRock(true);
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

    //don't die from old age
    //just grow a bit slowly compared to crops
    //turn on a new rock around main rock?
    //have up to 6 transforms surrounding main rock for 'growthPositions'
    //as it grows bigger in scale, main rock has chance to spawn new rocks around it
    //these rocks respect system of elders. 
    //eldest rock cannot border any other elders
    //this way things will naturally grow in 'grids' of hexes (if the transforms are laid out symmetrically)
    //we will also see equal distributions of size in layers in relation to eldest rocks
    //  0 0      0 1
    // 0 2 1 0  0 2 0 
    //  1 1 2 0  0 1
    // 2 being an elder rock.

    public void GrowRock(bool growOrShrink)
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

                    if (randomSpawn < crystalSpawnChance)
                    {
                        SpawnCrystal();
                    }
                }
               
            }
            //time to die!
            else
            {
                //a little less than total # of crop bundles on plant death
                int randomDrop = Random.Range(0, currentStage);
                //spawn a bunch of seeds and die
                for(int i = 0; i < randomDrop; i++)
                {
                    SpawnCrystal();
                }
            }

           
        }
        //shrink
        else
        {
            //mining causes it to shrink

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
            GrowRock(true);
        }

        //Debug.Log("grew at start");
    }
    
    //plays current audio clip and wobbles plant
    public void PlaySound()
    {
        rockSource.PlayOneShot(currentClip);
        soundPlaying.Play();
        rockAnimator.SetTrigger("reverberate");
        if(hasExtraAnimator)
            extraAnimator.SetTrigger("reverberate");
    }

    //called when chop and when plant dies
    public void MineCrystal()
    {
       //spawn crystal
    }

    void Die()
    {
        //Debug.Log("Rip " + gameObject.name);

        //go through sleep save lists and remove me from everything
        //if (!startingPlant)
        //{
        //    int indexToRemove = saveScript.mySaveStorage.plants.IndexOf(gameObject);
        //    saveScript.mySaveStorage.plants.Remove(gameObject);
        //    saveScript.mySaveStorage.plantScripts.Remove(this);
        //    saveScript.mySaveStorage.plantType.RemoveAt(indexToRemove);
        //}
       

        Destroy(gameObject);
    }

    void SpawnCrystal()
    {
        //Vector3 spawnPos = cropBundles[currentStage - 1].transform.position + Random.insideUnitSphere * 3 + new Vector3(0, 1f, 0);
        //GameObject newSeed = Instantiate(seedPrefab, spawnPos, Quaternion.Euler(player.transform.localEulerAngles));
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
        if (other.gameObject.tag == "Player" && !rockSource.isPlaying )
        {
            //Debug.Log("player triggered");
            PlaySound();
        }
    }
}
