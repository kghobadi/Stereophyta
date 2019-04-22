using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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

    //seed inv
    public int currentSeed = 0;
    public GameObject currenSeedObj;

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

        //turn off other seeds
        for (int i = 0; i < seedStorage.Count; i++)
        {
            if (i != currentSeed)
                seedStorage[i].seedObj.SetActive(false);
        }
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


        //set new seed
        currenItemObj = myItems[currentItem];
        currenItemObj.SetActive(true);

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

        //Need to check if player has any of this seed type. 
        //if not, switch to it, but leave obj inactive
        //if so, normal switch
        //link this up to inventory UI


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
}
