using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

[System.Serializable]
public struct TreeGrowthStages
{
    public int growthDays;
    public AudioClip[] stageAudioClips;
}

public class Treent : MonoBehaviour
{
    //player and sun ref
    Sun sun;
    GameObject player;
    ThirdPersonController tpc;
    //SleepSave saveScript;
    public bool startingPlant;

    //tgs logic
    [Header("TGS")]
    public TerrainGridSystem tgs;
    GridManager gridMan;
    public bool plantedOnGrid;
    public int cellIndex;

    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D wateredTexture;
    public Texture2D plantedTexture;

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

    public TreeType myTreeType;
    //mostly used for saving / loading 
    public enum TreeType
    {
        CYLINDAR, CUBERTO, PYRADON,
    }

    void Start()
    {
        //tgs refs
        tgs = TerrainGridSystem.instance;
        gridMan = tgs.transform.parent.GetComponent<GridManager>();
        groundTexture = gridMan.groundTexture;
        wateredTexture = gridMan.wateredTexture;

        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        //saveScript = GameObject.FindGameObjectWithTag("SleepSave").GetComponent<SleepSave>();

        AdjustHeight();
        
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
        GrowPlant(true);
    }

    public void Update()
    {

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
                if (currentStage > 1)
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
                //set active next crop bundle
                cropBundles[currentStage].SetActive(true);
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
            }
            //time to die!
            else
            {
                //from cutting down
                Die();
            }

            //set scale to lower value 
            transform.localScale = (originalScale * currentStage) / 1.5f;
        }

        //set nextStage
        nextStage = myAge + myGrowthStages[currentStage].growthDays;
        //set current clip
        currentClip = stageSounds[currentStage];

        //set particles duration to our current audio clip's length
        StartCoroutine(WaitToSetParticles());
    }

    //this is to fix that assertion error i was getting constantly
    IEnumerator WaitToSetParticles()
    {
        ParticleSystem.MainModule soundsPlayer = soundPlaying.main;
        soundPlaying.Stop();

        yield return new WaitUntil(() => soundPlaying.isStopped == true);

        soundsPlayer.duration = currentClip.length;
    }

    //generally only called by loading script
    public IEnumerator AgeAtStart(int ages)
    {
        yield return new WaitForSeconds(0.1f);

        for (int i = 0; i < ages; i++)
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
        if (hasExtraAnimator)
            extraAnimator.SetTrigger("wobble");
    }

    //called when chop and when plant dies
    public void CutCrop()
    {
        if (cropBundles[currentStage].activeSelf)
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

        //auto drop seeds on death
        else
        {
            SpawnSeed();
        }


        Destroy(gameObject);
    }

    //spawn seed from object pooler script 
    void SpawnSeed()
    {
        Vector3 spawnPos = cropBundles[currentStage - 1].transform.position + Random.insideUnitSphere * 3 + new Vector3(0, 1f, 0);
        GameObject newSeed = seedPooler.GrabObject();
        newSeed.transform.position = spawnPos;
    }
    

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && !plantSource.isPlaying)
        {
            //Debug.Log("player triggered");
            PlaySound();

            //player might knock a seed down
            float randomChanceToDropSeed = Random.Range(0f, 100f);

            if (randomChanceToDropSeed < 1f)
            {
                SpawnSeed();
            }
        }
    }

    void AdjustHeight()
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
