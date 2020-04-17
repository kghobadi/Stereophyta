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
    int enableCounter;

    //tgs logic
    [HideInInspector] public TerrainGridSystem tgs;
    [HideInInspector] public GridManager gridMan;
    [HideInInspector] public Zone myZone;
    [Header("TGS")]
    public bool plantedOnGrid;
    public int cellIndex;

    //All possible texture references. 
    Texture2D groundTexture;
    Texture2D wateredTexture;
    [HideInInspector]
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
    public bool ageAtStart;
    public int ageMin, ageMax;
    public bool hasBeenWatered;
    public GrowthStages[] myGrowthStages;
    public GameObject[] cropBundles;
    public AudioClip[] stageSounds;
    public Animator plantAnimator, extraAnimator;
    public bool animatorInChildren, hasExtraAnimator;
    public bool growing;
    public float growthSpeed;
    Vector3 originalScale;
    Vector3 newScale;

    //death effect
    [Header("Death Effect")]
    public bool dying;
    public Material plantDeath;
    List<MeshRenderer> pRenderers = new List<MeshRenderer>();
    Material[] origMats;
    float tpLerper;
    float deathStart = -5f, deathEnd = 20f;
    public float deathLerpSpeed = 1f;
    
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

    //pickable stuff
    Pickable pickable;

    void Awake()
    {
        //hail the sun
        sun = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //tgs refs
        if (tgs != null)
        {
            tgs = tpc.currentTGS;
            gridMan = tgs.transform.parent.GetComponent<GridManager>();
        }
        myZone = tpc.currentZone;

        //colliders and rigibodys
        plantBody = GetComponent<Rigidbody>();
        plantCollider = GetComponent<BoxCollider>();
        if (!animatorInChildren)
        {
            plantAnimator = GetComponent<Animator>();
        }
        pickable = GetComponent<Pickable>();

        FetchRenderers();

        //grab audio sources
        plantSource = GetComponent<AudioSource>();
        extraVoice = transform.GetChild(1).GetComponent<AudioSource>();
        soundPlaying = transform.GetChild(0).GetComponent<ParticleSystem>();

        //get the obj poolers
        FindObjPoolers();
    }

    //finds all the renderers in the plant and adds them to pRenderers list 
    void FetchRenderers()
    {
        //renderer & mats
        for (int i = 2; i < transform.childCount; i++)
        {
            Transform child = transform.GetChild(i);

            //child has renderer
            if (child.GetComponent<MeshRenderer>())
            {
                //add it 
                pRenderers.Add(child.GetComponent<MeshRenderer>());
            }
            //child has children
            if (child.childCount > 0)
            {
                //grab all renderers from child & below
                MeshRenderer[] allChildRenderers = child.GetComponentsInChildren<MeshRenderer>();
                // add all renderers to pRenderers
                for (int t = 0; t < allChildRenderers.Length; t++)
                {
                    //add it 
                    pRenderers.Add(allChildRenderers[t]);
                }
            }
        }
        //set mats array to same size as pRenderers and set mats 
        origMats = new Material[pRenderers.Count];
        for (int i = 0; i < pRenderers.Count; i++)
        {
            origMats[i] = pRenderers[i].material;
        }
    }

    void Start () {
        //randomness
        Random.InitState(System.DateTime.Now.Millisecond);

        //SUN EVENT LISTENER
        sun.newDay.AddListener(DayPass);

        //add to zone list 
        if(myZone == null)
            myZone = tpc.currentZone;
        if (!myZone.plants.Contains(gameObject))
            myZone.plants.Add(gameObject);
        transform.SetParent(myZone.plantParent);

        //set tgs textures 
        if (gridMan)
        {
            groundTexture = gridMan.groundTexture;
            wateredTexture = gridMan.wateredTexture;
            plantedTexture = gridMan.plantedTexture;
        }

        //add data to save script
        myZone.zoneSaver.AddPlant(this);
        
        //scale and set stages
        originalScale = transform.localScale;
        plantBody.isKinematic = true;
        myAge = 0;
        currentStage = 0;
        soundPlaying.Stop();

        //turn off all the crop bundles at start
        for (int i = 0; i < cropBundles.Length; i++)
        {
            cropBundles[i].SetActive(false);
        }
        
        // higher chance to spawn seeds, plant grows as fast as possible 
        if (plantedOnGrid)
        {
            seedSpawnChance += 25f;

            //bring growth days down 
            for(int i = 0; i < myGrowthStages.Length; i++)
            {
                if(myGrowthStages[i].growthDays > 2)
                {
                    myGrowthStages[i].growthDays = 2;
                }
            }
        }

        //randomly age at start 
        if (ageAtStart)
        {
            int randomAge = Random.Range(ageMin, ageMax);
            AgeAtStart(randomAge, 0.1f);
        }
        else
        {
            //call funcs
            GrowPlant(true, true);
        }
    }
    
    //use to reset plant 
    void OnEnable()
    {
        if(enableCounter > 0)
        {
            if (myAge > 0)
            {
                ResetPlantAge();
            }
        }

        enableCounter++;
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

        if (GetComponent<PooledObject>())
        {
            plontPooler = GetComponent<PooledObject>().m_ObjectPooler;
        }
    }

    void Update() {
        
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

        //lerps plantdeath material then call death
        if (dying)
        {
            //lerp mat Tp value 
            tpLerper = Mathf.Lerp(tpLerper, deathEnd, Time.deltaTime * deathLerpSpeed);

            //loop thru all our renderers
            for (int i = 0; i < pRenderers.Count; i++)
            {
                //get mat
                Material mat = pRenderers[i].material;
                //set tp value
                mat.SetFloat("_Teleport", tpLerper);
            }

            //revert to orig scale 
            transform.localScale = Vector3.Lerp(transform.localScale, Vector3.zero, deathLerpSpeed * Time.deltaTime);

            //check for end
            if (tpLerper > deathEnd - 0.1f)
            {
                Die();
            }
        }
    }

    //called when sun invokes NewDay()
    public void DayPass()
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
            GrowPlant(true, true);
        }

        //Debug.Log("plant day passed");
    }

    //called within Plont or by other objects 
    public void GrowPlant(bool growOrShrink, bool spawnSeeds)
    {
        //grow
        if (growOrShrink)
        {
            Grow(spawnSeeds);
        }
        //shrink
        else
        {
            Shrink();
        }
    }

    void Grow(bool spawnsSeeds)
    {
        //increment current stage based on number of growth stages
        if (currentStage < myGrowthStages.Length - 1)
        {
            currentStage++;

            //if older than 1
            if (currentStage > 1)
            {
                //set active next crop bundle
                if(currentStage < cropBundles.Length - 1)
                {
                    if (cropBundles[currentStage] != null)
                    {
                        cropBundles[currentStage].SetActive(true);
                        if (pickable)
                            pickable.AddPickableObj(cropBundles[currentStage].GetComponent<Item>());
                    }
                }

                //random chance to spawn a seed each time plant ages
                float randomSpawn = Random.Range(0, 100);

                if (randomSpawn < seedSpawnChance && spawnsSeeds)
                {
                    SpawnSeed(cropBundles[currentStage - 1].transform);
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
                SpawnSeed(cropBundles[currentStage - 1].transform);
            }

            //from old age
            SetDeathEffect();
        }
    }

    void Shrink()
    {
        //high chance to spawn seed when cut // always drops when plant is on last life
        CutCrop();

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

    //reset age to 0 and size to original 
    public void ResetPlantAge()
    {
        myAge = 0;
        currentStage = 0;
        transform.localScale = originalScale;
        plantAnimator.enabled = true;
        plantBody.isKinematic = true;
        hasBeenWatered = false;
        for(int i = 0; i < pRenderers.Count; i++)
        {
            pRenderers[i].material = origMats[i];
        }
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
    public void Age(int ages, float waitTime)
    {
        StartCoroutine(AgeAtStart(ages, waitTime));
    }

    //generally only called by loading script or spawner 
    IEnumerator AgeAtStart(int ages, float wait)
    {
        yield return new WaitForSeconds(wait);

        for(int i = 0; i < ages; i++)
        {
            GrowPlant(true, false);
        }

        //Debug.Log("grew at start");
    }
    
    //plays current audio clip and wobbles plant
    public void PlaySound(float volume)
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
        float randomChance = Random.Range(0, 100);
        if (randomChance > 50 || currentStage == 1)
        {
            //SPAWN SEED HERE
            SpawnSeed(cropBundles[currentStage - 1].transform);
        }

        //deactivate crop bundle 
        if (cropBundles[currentStage - 1] != null)
        {
            cropBundles[currentStage - 1].SetActive(false);
            pickable.RemovePickableObj(cropBundles[currentStage - 1].GetComponent<Item>());
        }
    }

    //called by water or rains
    public void WaterPlant()
    {
        GrowPlant(true, true);
        if(tgs)
            tgs.CellToggleRegionSurface(cellIndex, true, wateredTexture);
        hasBeenWatered = true;
    }

    //change mat & start lerping to deeath 
    void SetDeathEffect()
    {
        for(int i = 0; i < pRenderers.Count; i++)
        {
            pRenderers[i].material = plantDeath;
        }

        tpLerper = deathStart;
        dying = true;
    }

    public void Die()
    {
        //stop dying...
        dying = false;

        //remove plant from grid
        if (plantedOnGrid)
        {
            //nothing planted tag
            tgs.CellSetTag(cellIndex, 0);
            //ground texture
            tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
        }
        
        //remove from save list and spawn seed 
        myZone.zoneSaver.RemovePlant(this);

        //remove from zone list 
        if (myZone.plants.Contains(gameObject))
            myZone.plants.Remove(gameObject);

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
    public void SpawnSeed(Transform objPos)
    {
        Vector3 spawnPos = objPos.position + Random.insideUnitSphere * 1 + new Vector3(0, 1, 0);
        GameObject newSeed = seedPooler.GrabObject();
        newSeed.transform.position = spawnPos;
        newSeed.GetComponent<Seed>().plontPooler = plontPooler;
        newSeed.GetComponent<Seed>().SeedFall();
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && !plantSource.isPlaying )
        {
            //when player runs thru me 
            if (tpc.running)
            {
                PlaySound(1f);

                //player might knock a seed down
                float randomChanceToDropSeed = Random.Range(0f, 100f);

                if (randomChanceToDropSeed < 1f)
                {
                    SpawnSeed(cropBundles[currentStage - 1].transform);
                }
            }
            //walking
            else
            {
                PlaySound(0.25f);
            }
        }
    }

    public void AdjustHeight()
    {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                //Debug.Log("adjusting " + hit.point);
                transform.position = hit.point;
            }
        }
    }

}
