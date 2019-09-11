using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

//seed storage info -- helps us count multiple seeds
[System.Serializable]
public struct SeedStorage
{
    public GameObject seedObj;
    public int seedCount;
}

public class Inventory : MonoBehaviour {
    //player control ref
    GameObject player;
    ThirdPersonController tpc;

    //tools inv
    [Header("Tools Inv")]
    public int toolTimeScale;
    public int currentTool = 0;
    public GameObject currentToolObj;
    public List<GameObject> myTools = new List<GameObject>();
    //UI
    [Header("Tools UI")]
    public GameObject toolInvVisual;
    public Image currentToolImg, lastToolImg, nextToolImg;
    public List<Sprite> toolSprites = new List<Sprite>();
    public Sprite nadaSprite;
    public FadeUI[] toolsUI;
    IEnumerator fadeTools;

    //seed inv
    [Header("Seed Inv")]
    public Vector3 localSeedSpot;
    public int currentSeed = 0;
    public GameObject currenSeedObj;
    public List<SeedStorage> seedStorage = new List<SeedStorage>();

    //UI
    [Header("Seed UI")]
    public GameObject seedInvVisual;
    public Image currentSeedImg, lastSeedImg, nextSeedImg;
    public Text seedCounter;
    public List<Sprite> seedSprites = new List<Sprite>();
    public FadeUI[] seedsUI;
    IEnumerator fadeSeeds;
    //for altering seed count text
    public float seedTxtScale1 = 1f, seedTxtScale2 = 0.8f, seedTxtScale3 = 0.6f;
    public float seedTxtPos1 = 69f, seedTxtPos2 = 50f, seedTxtPos3 = 45f;

    //for controlling switching
    [Header("Input Resets for Switching")]
    public float inputTimerT;
    public float inputTimerS;
    public bool canSwitchTools, canSwitchSeeds;

    //audio
    [Header("Audio")]
    public AudioSource inventoryAudio;
    public AudioClip switchSeedsUp,switchSeedsDown, switchTools;

    //rhythm indicator
    [Header("Player Rhythm Indicator")]
    public SpriteRenderer rhythmSR;
    Animator rhythmIndicator;
    FadeSprite rhythmFader;
    float disappearTimer, disappearTimerTotal = 1f;
    //timers for how long indicator appears
    public bool changedRhythm;

    void Awake()
    {
        //Debug.Log("hello I am here PLEASE FIND ME !");  
    }

    void Start () {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //if have tools
        if(myTools.Count > 0)
        {
            //set tool
            currentToolObj = myTools[currentTool];
            //turn off all other tools
            for (int i = 0; i < myTools.Count; i++)
            {
                if (i != currentTool)
                    myTools[i].SetActive(false);
            }
        }
       
        toolInvVisual.SetActive(false);
        fadeTools = FadeOutToolsVis();

        //set current item
        currenSeedObj = seedStorage[currentSeed].seedObj;
        currenSeedObj.GetComponent<Seed>().seedState = Seed.SeedStates.SEEDSELECTED;

        //turn off other seeds
        for (int i = 0; i < seedStorage.Count; i++)
        {
            //if (i != currentSeed)
                seedStorage[i].seedObj.SetActive(false);
        }
        seedInvVisual.SetActive(false);
        fadeSeeds = FadeOutSeedVis();

        inventoryAudio = GetComponent<AudioSource>();

        //rhythm indicator
        rhythmIndicator = rhythmSR.GetComponent<Animator>();
        rhythmFader = rhythmSR.GetComponent<FadeSprite>();
    }
	
	void Update () {
        //timer for switching tools
        inputTimerT -= Time.deltaTime;
        if(inputTimerT < 0)
        {
            canSwitchTools = true;
        }

        //timer for switching seeds
        inputTimerS -= Time.deltaTime;
        if (inputTimerS < 0)
        {
            canSwitchSeeds = true;
        }

        if (!tpc.menuOpen)
        {
            //switch current item +
            if ((Input.GetAxis("SwitchItem") > 0 || Input.GetKeyDown(KeyCode.E)) && canSwitchTools && myTools.Count > 1)
            {
                SwitchTool(true);
            }
            //switch current item -
            if ((Input.GetAxis("SwitchItem") < 0 || Input.GetKeyDown(KeyCode.Q)) && canSwitchSeeds 
                && currenSeedObj.GetComponent<Item>().CheckSeedPlanting() && CheckPlayerHasSeed() >= 2)
            {
                SwitchSeed(true);
            }

            //auto switch to next seed with a count if you run out of seeds
            if(seedStorage[currentSeed].seedCount == 0 && CheckPlayerHasSeed() >= 1 && !currenSeedObj.GetComponent<Item>().CheckSeedPlanting())
            {
                SwitchSeed(true);
            }

            //input for switching player rhythm
            if (Input.GetKeyDown(KeyCode.LeftAlt)) 
            {
                if (toolTimeScale > 0)
                {
                    toolTimeScale--;
                }
                else
                {
                    toolTimeScale = 4;
                }

                SetVisualRhythm();
            }

            //input for switching player rhythm
            if (Input.GetKeyDown(KeyCode.RightAlt))
            {
                if (toolTimeScale < 4)
                {
                    toolTimeScale++;
                }
                else
                {
                    toolTimeScale = 0;
                }

                SetVisualRhythm();
            }
        }

        //for rhythm visual
        if (changedRhythm)
        {
            disappearTimer -= Time.deltaTime;

            //fade out visual
            if (disappearTimer < 0)
            {
                rhythmFader.FadeOut();
                changedRhythm = false;
            }
        }

        //fade out quick menus while sleeping
        if (tpc.sleeping)
        {
            StopAllCoroutines();

            for (int i = 0; i < toolsUI.Length; i++)
            {
                toolsUI[i].fadingIn = false;
                toolsUI[i].fadingOut = true;
            }

            for (int i = 0; i < seedsUI.Length; i++)
            {
                seedsUI[i].fadingIn = false;
                seedsUI[i].fadingOut = true;
            }
        }

        SetSeedText();
    }

    //called whenever rhythm is changed;
    public void SetVisualRhythm()
    {
        rhythmIndicator.SetInteger("Level", toolTimeScale);

        changedRhythm = true;
        disappearTimer = disappearTimerTotal;

        rhythmFader.FadeIn();
    }

    //alter count of current seed
    void SetSeedText()
    {
        //set seed counter in inv UI
        seedCounter.text = seedStorage[currentSeed].seedCount.ToString();

        switch (seedCounter.text.Length)
        {
            case 0:
                seedCounter.rectTransform.localScale = new Vector3(seedTxtScale1, seedTxtScale1, seedTxtScale1);
                seedCounter.rectTransform.localPosition = new Vector3(seedTxtPos1, -60.5f, 0);
                break;
            case 1:
                seedCounter.rectTransform.localScale = new Vector3(seedTxtScale1, seedTxtScale1, seedTxtScale1);
                seedCounter.rectTransform.localPosition = new Vector3(seedTxtPos1, -60.5f, 0);
                break;
            case 2:
                seedCounter.rectTransform.localScale = new Vector3(seedTxtScale2, seedTxtScale2, seedTxtScale2);
                seedCounter.rectTransform.localPosition = new Vector3(seedTxtPos2, -60.5f, 0);
                break;
            case 3:
                seedCounter.rectTransform.localScale = new Vector3(seedTxtScale3, seedTxtScale3, seedTxtScale3);
                seedCounter.rectTransform.localPosition = new Vector3(seedTxtPos3, -60.5f, 0);
                break;
        }
    }

    //switches thru tools
    public void SwitchTool(bool posOrNeg)
    {
        currentToolObj.SetActive(false);

        //switch pos
        if (posOrNeg)
        {
            //increment item counter
            if (currentTool < myTools.Count - 1)
            {
                currentTool++;
            }
            else
            {
                currentTool = 0;
            }
        }
        //switch neg
        else
        {
            //increment item counter
            if (currentTool > 0)
            {
                currentTool--;
            }
            else
            {
                currentTool = myTools.Count - 1;
            }
        }


        //set new tool
        currentToolObj = myTools[currentTool];
        currentToolObj.SetActive(true);

        SetToolSprite();

        //reset timer so not infinite switch
        inputTimerT = 0.1f;
        canSwitchTools = false;

        inventoryAudio.PlayOneShot(switchTools);
    }

    public void SetToolSprite()
    {
        //change inv visuals
        currentToolImg.sprite = toolSprites[currentTool];
        
        //more than one item
        if(myTools.Count > 1)
        {
            //for wrapping counter
            if (currentTool > 0)
            {
                lastToolImg.sprite = toolSprites[currentTool - 1];
            }
            else
            {
                lastToolImg.sprite = toolSprites[myTools.Count - 1];
            }
            //wrapping counter
            if (currentTool < myTools.Count - 1)
            {
                nextToolImg.sprite = toolSprites[currentTool + 1];
            }
            else
            {
                nextToolImg.sprite = toolSprites[0];
            }
        }
        //only one item so all the sprites are nothing
        else if(myTools.Count == 1)
        {
            lastToolImg.sprite = nadaSprite;
            nextToolImg.sprite = nadaSprite;
        }
        

        //tools vis
        if(fadeTools != null)
            StopCoroutine(fadeTools);
        fadeTools = FadeOutToolsVis();
        if(gameObject.activeSelf)
            StartCoroutine(fadeTools);
    }

    //switch thru seeds
   public void SwitchSeed(bool posOrNeg)
    {
        if(currenSeedObj != null)
        {
            if (currenSeedObj.activeSelf && CheckPlayerHasSeed() > 1)
            {
                currenSeedObj.GetComponent<Item>().DeselectSeed();
                currenSeedObj.SetActive(false);
            }
        }

        //switch pos
        if (posOrNeg)
        {
            CountSeedUp();
        }
        //switch neg
        else
        {
            CountSeedDown();
        }

        //set new seed
        currenSeedObj = seedStorage[currentSeed].seedObj;
        //if seed count of this seed > 0
        if(seedStorage[currentSeed].seedCount > 0)
        {
            currenSeedObj.SetActive(true);
            currenSeedObj.GetComponent<Item>().SelectSeed();
        }
        //switch seed again -- this causes a StackOverflow if there's no seeds in your inv
        else
        {
            SwitchSeed(true);
        }

        SetSeedSprite();
      
        //play switch sound 
        if (posOrNeg && inputTimerS < 0)
        {
            inventoryAudio.PlayOneShot(switchSeedsUp);
        }
        else if (!posOrNeg &&  inputTimerS < 0)
        {
            inventoryAudio.PlayOneShot(switchSeedsDown);
        }

        //reset timer so not infinite switch
        inputTimerS = 0.1f;
        canSwitchSeeds = false;

    }

    public void SetSeedSprite()
    {
        //change inv visuals
        currentSeedImg.sprite = seedSprites[currentSeed];
        //for wrapping counter
        if (currentSeed > 0)
        {
            lastSeedImg.sprite = seedSprites[currentSeed - 1];
        }
        else
        {
            lastSeedImg.sprite = seedSprites[seedStorage.Count - 1];
        }
        //wrapping counter
        if (currentSeed < seedStorage.Count - 1)
        {
            nextSeedImg.sprite = seedSprites[currentSeed + 1];
        }
        else
        {
            nextSeedImg.sprite = seedSprites[0];
        }


        //seed vis 
        if(fadeSeeds != null)
            StopCoroutine(fadeSeeds);
        fadeSeeds = FadeOutSeedVis();
        if (gameObject.activeSelf)
            StartCoroutine(fadeSeeds);
    }

    void CountSeedUp()
    {
        //increment item counter
        if (currentSeed < seedStorage.Count - 1)
        {
            currentSeed++;
        }
        else
        {
            currentSeed = 0;
        }
    }

    void CountSeedDown()
    {
        //increment item counter
        if (currentSeed > 0)
        {
            currentSeed--;
        }
        else
        {
            currentSeed = seedStorage.Count - 1;
        }
    }

    //called to check seed counts
    int CheckPlayerHasSeed()
    {
        int seedCounter = 0;
        //loop thru seed counts
        for(int i = 0; i < seedStorage.Count; i++)
        {
            if(seedStorage[i].seedCount > 0)
            {
                seedCounter++;
            }
        }

        return seedCounter;
    }

    //adds seed type to inv
    public void AddSeedToInventory(GameObject seed, Sprite seedInvSprite)
    {
        //new seed seedstorage struct
        SeedStorage newSeed;
        newSeed.seedObj = seed;
        newSeed.seedCount = 1;

        //add to lists
        seedStorage.Add(newSeed);
        seedSprites.Add(seedInvSprite);

        //set parent and pos
        seed.transform.SetParent(transform);
        seed.transform.localPosition = localSeedSpot;

        //set new seed index in seed & plant
        seed.GetComponent<Item>().SetSeedIndex(seedStorage.Count - 1);
    }

    //remove seed type from inv
    public void RemoveSeedFromInventory(int index)
    {
        //turn off
        seedStorage[index].seedObj.SetActive(false);
        //remove from lists
        seedStorage.RemoveAt(index);
        seedSprites.RemoveAt(index);
    }

    //fade in and out Tools inv
    IEnumerator FadeOutToolsVis()
    {
        if (!toolInvVisual.activeSelf)
        {
            toolInvVisual.SetActive(true);
        }
        
        for (int i = 0; i < toolsUI.Length; i++)
        {
            toolsUI[i].fadingIn = true;
            toolsUI[i].fadingOut = false;
        }

        yield return new WaitForSeconds(2f);

        for (int i = 0; i < toolsUI.Length; i++)
        {
            toolsUI[i].fadingIn = false;
            toolsUI[i].fadingOut = true;
        }
    }

    //fade in and out Seed inv
    IEnumerator FadeOutSeedVis()
    {
        if (!seedInvVisual.activeSelf)
        {
            seedInvVisual.SetActive(true);
        }

        for(int i = 0; i < seedsUI.Length; i++)
        {
            seedsUI[i].fadingIn = true;
            seedsUI[i].fadingOut = false;
        }

        yield return new WaitForSeconds(2f);
        
        for (int i = 0; i < seedsUI.Length; i++)
        {
            seedsUI[i].fadingIn = false;
            seedsUI[i].fadingOut = true;
        }
    }

}
