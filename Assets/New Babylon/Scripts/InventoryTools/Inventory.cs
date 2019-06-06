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
    public int currentItem = 0;
    public GameObject currenItemObj;
    public List<GameObject> myItems = new List<GameObject>();
    //UI
    public GameObject toolInvVisual;
    public Image currentToolImg, lastToolImg, nextToolImg;
    public Sprite[] toolSprites;
    public FadeUI[] toolsUI;
    IEnumerator fadeTools;

    //seed inv
    public int currentSeed = 0;
    public GameObject currenSeedObj;
    public GameObject seedInvVisual;
    //UI
    public Image currentSeedImg, lastSeedImg, nextSeedImg;
    public Text seedCounter;
    public Sprite[] seedSprites;
    public FadeUI[] seedsUI;
    IEnumerator fadeSeeds;

    public List<SeedStorage> seedStorage = new List<SeedStorage>();

    float inputTimer;
    bool canSwitchInv;
    
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        
        currenItemObj = myItems[currentItem];
        currenSeedObj = seedStorage[currentSeed].seedObj;
        currenSeedObj.GetComponent<Seed>().seedSelected = true;

        //turn off all other items
        for (int i = 0; i < myItems.Count; i++)
        {
            if(i != currentItem)
                myItems[i].SetActive(false);
        }
        toolInvVisual.SetActive(false);
        fadeTools = FadeOutToolsVis();
        
        //turn off other seeds
        for (int i = 0; i < seedStorage.Count; i++)
        {
            if (i != currentSeed)
                seedStorage[i].seedObj.SetActive(false);
        }
        seedInvVisual.SetActive(false);
        fadeSeeds = FadeOutSeedVis();
    }
	
	void Update () {
        inputTimer -= Time.deltaTime;
        if(inputTimer < 0)
        {
            canSwitchInv = true;
        }

        if (!tpc.menuOpen)
        {

            //switch current item +
            if ((Input.GetAxis("SwitchItem") > 0 || Input.GetKeyDown(KeyCode.E)) && canSwitchInv)
            {
                SwitchItem(true);
            }
            //switch current item -
            if ((Input.GetAxis("SwitchItem") < 0 || Input.GetKeyDown(KeyCode.Q)) && canSwitchInv && !currenSeedObj.GetComponent<Seed>().planting)
            {
                SwitchSeed(true);
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
    }

    public void SwitchItem(bool posOrNeg)
    {
        currenItemObj.SetActive(false);

        //switch pos
        if (posOrNeg)
        {
            //increment item counter
            if (currentItem < myItems.Count - 1)
            {
                currentItem++;
            }
            else
            {
                currentItem = 0;
            }
        }
        //switch neg
        else
        {
            //increment item counter
            if (currentItem > 0)
            {
                currentItem--;
            }
            else
            {
                currentItem = myItems.Count - 1;
            }
        }


        //set new tool
        currenItemObj = myItems[currentItem];
        currenItemObj.SetActive(true);

        //change inv visuals
        currentToolImg.sprite = toolSprites[currentItem];
        //for wrapping counter
        if(currentItem > 0)
        {
            lastToolImg.sprite = toolSprites[currentItem - 1];
        }
        else
        {
            lastToolImg.sprite = toolSprites[myItems.Count - 1];
        }
        //wrapping counter
        if(currentItem < myItems.Count - 1)
        {
            nextToolImg.sprite = toolSprites[currentItem + 1];
        }
        else
        {
            nextToolImg.sprite = toolSprites[0];
        }

        //tools vis
        StopCoroutine(fadeTools);
        fadeTools = FadeOutToolsVis();
        StartCoroutine(fadeTools);

        //reset timer so not infinite switch
        inputTimer = 0.1f;
        canSwitchInv = false;
    }

   public void SwitchSeed(bool posOrNeg)
    {
        currenSeedObj.GetComponent<Seed>().seedSelected = false;
        currenSeedObj.SetActive(false);

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
            currenSeedObj.GetComponent<Seed>().seedSelected = true;
        }
        //switch seed again -- this causes a StackOverflow if there's no seeds in your inv
        else
        {
            SwitchSeed(true);
        }

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
        //set seed counter in inv UI
        seedCounter.text = seedStorage[currentSeed].seedCount.ToString();

        //seed vis 
        StopCoroutine(fadeSeeds);
        fadeSeeds = FadeOutSeedVis();
        StartCoroutine(fadeSeeds);
        //reset timer so not infinite switch
        inputTimer = 0.1f;
        canSwitchInv = false;
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
