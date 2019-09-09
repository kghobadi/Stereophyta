using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

[System.Serializable]
public struct GrowthStages
{
    public int growthDays;
    public AudioClip[] stageAudioClips;
}

public class Plont : MonoBehaviour {
    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;
    SleepSave saveScript;
    public bool startingPlant;

    //tgs logic
    [Header("TGS")]
    public TerrainGridSystem tgs;
    Zone myZone;
    GridManager gridMan;
    public bool plantedOnGrid;
    public int cellIndex;

    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D wateredTexture;
    public Texture2D plantedTexture;

    //physics 
    Rigidbody plantBody;
    BoxCollider plantCollider;

    //sound controls
    [HideInInspector]
    public AudioSource plantSource, extraVoice;
    [Header("Audio")]
    public AudioClip currentClip;
    ParticleSystem soundPlaying;
    ParticleSystem.MainModule soundsPlayer;
    public float emitFreq = 0.25f;
        public int emitCount;

    //stages
    [Header("Growth Stages")]
    public int myAge;
    public int currentStage;
    public int nextStage;
    public bool dayPassed, hasBeenWatered;
    public GrowthStages[] myGrowthStages;
    public AudioClip[] stageSounds;
    public AudioClip sicknessSound;
    public Animator plantAnimator, extraAnimator;
    public bool animatorInChildren, hasExtraAnimator;
    public bool growing;
    public float growthSpeed;
    Vector3 originalScale;
    Vector3 newScale;

    [Header("Crop Bundles")]
    public GameObject[] cropBundles;
    [Header("Prefab Refs")]
    //for spawning seeds when cut down
    public GameObject seedPrefab;
    public GameObject plantPrefab;
    public float seedSpawnChance = 10;
    public ObjectPooler seedPooler;
    public ObjectPooler plontPooler;

    public PlantType myPlantType;
    //mostly used for saving / loading 
    public enum PlantType
    {
        PIANO, BLISTERPIANO, SUCCULENTAR, GUITAR, EGUITAR, NEGUITAR, BELL, TRIANGULAR, TRUMPET
    }
    
	void Start () {
        Random.InitState(System.DateTime.Now.Millisecond);
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        saveScript = GameObject.FindGameObjectWithTag("SleepSave").GetComponent<SleepSave>();

        //tgs refs
        tgs = tpc.currentTGS;
        myZone = tpc.currentZone;
        gridMan = tgs.transform.parent.GetComponent<GridManager>();
        groundTexture = gridMan.groundTexture;
        wateredTexture = gridMan.wateredTexture;

        //add data to save script
        if (!startingPlant)
        {
            saveScript.mySaveStorage.plants.Add(gameObject);
            saveScript.mySaveStorage.plantScripts.Add(this);
            saveScript.mySaveStorage.plantType.Add(myPlantType.ToString());
            //Debug.Log("added this plant to save storage");
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
        for (int i = 0; i < cropBundles.Length; i++)
        {
            cropBundles[i].SetActive(false);
        }

        //get the obj pooler
        FindObjPoolers();
        if (GetComponent<PooledObject>())
        {
            plontPooler = GetComponent<PooledObject>().m_ObjectPooler;
        }
       
        //call funcs
        PlayPlantingEffect();
        GrowPlant(true);
    }

    void FindObjPoolers()
    {
        GameObject[] objPools = GameObject.FindGameObjectsWithTag("ObjectPool");

        for (int i = 0; i < objPools.Length; i++)
        {
            if (objPools[i].GetComponent<ObjectPooler>().objectPrefab == seedPrefab)
            {
                seedPooler = objPools[i].GetComponent<ObjectPooler>();
            }
        }
    }

    public void Update() {
        
        //counting days is hard work
        if (sun.dayCounter > sun.yesterday)
        {
            if (!dayPassed)
            {
                //increment age (within stage)
                myAge++;

                //reset watered vars
                hasBeenWatered = false;

                //ground texture
                if (plantedOnGrid)
                {
                    tgs.CellToggleRegionSurface(cellIndex, true, plantedTexture);
                }
                
                //reached next stage, grow
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
                //set active next crop bundle
                if (cropBundles[currentStage] != null)
                    cropBundles[currentStage].SetActive(true);

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

                //set growing 
                newScale = (originalScale * currentStage) / 1.5f;
                growing = true;

                SetNextStage();
            }
            //time to die!
            else
            {
                //a little less than total # of crop bundles on plant death
                int randomDrop = Random.Range(cropBundles.Length - 3, cropBundles.Length);
                //spawn a bunch of seeds and die
                for (int i = 0; i < randomDrop; i++)
                {
                    SpawnSeed();
                }

                //from old age
                Die();
            }
        }
        //shrink
        else
        {
            //high chance to spawn seed when cut // always drops when plant is on last life
            float randomChance = Random.Range(0, 100);
            if (randomChance > 50 || currentStage == 1)
            {
                CutCrop();
            }
            
            //Debug.Log("shrinking!!");
            //increment current stage based on number of growth stages
            if (currentStage > 1)
            {
                currentStage--;

                //set scale to lower value 
                transform.localScale = (originalScale * currentStage) / 1.5f;

                SetNextStage();
            }
            //time to die!
            else
            {
                //from cutting down
                Die();
            }
        }
    }

    //sets the growth and audio vars for next stage 
    void SetNextStage()
    {
        //set nextStage
        nextStage = myAge + myGrowthStages[currentStage].growthDays;
        //set current clip randomly out of available stage audio clips 
        int clipCount = myGrowthStages[currentStage].stageAudioClips.Length;
        if (clipCount > 0)
        {
            currentClip = myGrowthStages[currentStage].stageAudioClips[Random.Range(0, clipCount)];
        }
        //only one sound, just set it 
        else
        {
            currentClip = stageSounds[currentStage];
        }

        //set particles duration to our current audio clip's length
        StartCoroutine(WaitToSetParticles());
    }

    //this is to fix that assertion error i was getting constantly
    IEnumerator WaitToSetParticles()
    {
        ParticleSystem.MainModule soundsPlayer = soundPlaying.main;
        soundPlaying.Stop();

        yield return new WaitUntil(() => soundPlaying.isPlaying == false);

        soundsPlayer.duration = currentClip.length;
    }

    //public call for age on start 
    public void Age(int ages)
    {
        StartCoroutine(AgeAtStart(ages));
    }

    //generally only called by loading script or spawner 
    IEnumerator AgeAtStart(int ages)
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

    //called by water or rains
    public void WaterPlant()
    {
        GrowPlant(true);
        tgs.CellToggleRegionSurface(cellIndex, true, wateredTexture);
        hasBeenWatered = true;
    }

    void Die()
    {
        //remove plant from grid
        if (plantedOnGrid)
        {
            //nothing planted tag
            tgs.CellSetTag(cellIndex, 0);
            //ground texture
            tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
        }

        //Debug.Log("Rip " + gameObject.name);
        if (!startingPlant)
        {
            //go through sleep save lists and remove me from everything
            int indexToRemove = saveScript.mySaveStorage.plants.IndexOf(gameObject);
            saveScript.mySaveStorage.plants.Remove(gameObject);
            saveScript.mySaveStorage.plantScripts.Remove(this);
            saveScript.mySaveStorage.plantType.RemoveAt(indexToRemove);
        }
        //auto drop seeds on death
        else
        {
            SpawnSeed();
        }

        //return to pool or destroy if no pool
        if (plontPooler)
        {
            plontPooler.ReturnObject(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    //spawn seed from object pooler script 
    void SpawnSeed()
    {
        Vector3 spawnPos = cropBundles[currentStage - 1].transform.position + Random.insideUnitSphere * 3 + new Vector3(0, 1f, 0);
        GameObject newSeed = seedPooler.GrabObject();
        newSeed.GetComponent<Seed>().plontPooler = plontPooler;
        newSeed.transform.position = spawnPos;
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

    public void AdjustHeight()
    {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, Vector3.down, out hit, 35f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                //Debug.Log("adjusting " + hit.point);
                transform.position = hit.point;
            }
        }
    }
}
