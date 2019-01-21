using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {
    //player control ref
    GameObject player;
    ThirdPersonController tpc;

    //normal inv
    public int currentItem = 0;
    public GameObject currenItemObj;
    public List<GameObject> myItems = new List<GameObject>();
    float inputTimer;
    bool canSwitchInv;

    //seed inv
    public int currentSeed = 0;
    public GameObject currentSeedObj;
    public List<GameObject> mySeeds = new List<GameObject>();
    
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        currentSeedObj = mySeeds[currentSeed];
        currentSeedObj.GetComponent<Seed>().seedSelected = true;
        currenItemObj = myItems[currentItem];

        //turn off all other items
        for(int i = 0; i < myItems.Count; i++)
        {
            if(i != currentItem)
                myItems[i].SetActive(false);
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
            if ((Input.GetAxis("SwitchItem") > 0 || Input.GetAxis("Mouse ScrollWheel") > 0) && canSwitchInv)
            {
                SwitchItem(true);
            }
            //switch current item -
            if ((Input.GetAxis("SwitchItem") < 0 || Input.GetAxis("Mouse ScrollWheel") < 0) && canSwitchInv)
            {
                SwitchItem(false);
            }

            //checks for switching seeds
            if(currenItemObj.GetComponent<Item>().itemType == Item.ItemType.SEED && tpc.playerCanMove)
            {
                //switch current seed if we are holding seed Itemtype
                if (Input.GetButtonDown("SwitchSeed"))
                {
                    SwitchSeed(true);
                }

                //switch seed neg
                if (Input.GetKeyDown(KeyCode.Q))
                {
                    SwitchSeed(false);
                }
                //switch seed pos
                if (Input.GetKeyDown(KeyCode.E))
                {
                    SwitchSeed(true);
                }
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
        inputTimer = 0.25f;
        canSwitchInv = false;
    }

    public void SwitchSeed(bool posOrNeg)
    {

        if (posOrNeg)
        {
            //rotate all the seeds equally around player body
            for (int i = 0; i < mySeeds.Count; i++)
            {
                mySeeds[i].transform.RotateAround(tpc.transform.position, transform.up, 360 / mySeeds.Count);
            }
        }
        else
        {
            //rotate all the seeds equally around player body
            for (int i = 0; i < mySeeds.Count; i++)
            {
                mySeeds[i].transform.RotateAround(tpc.transform.position, transform.up, -360 / mySeeds.Count);
            }
        }

        currentSeedObj.GetComponent<Seed>().seedSelected = false;

        if (posOrNeg)
        {
            //increment seed counter up
            if (currentSeed < mySeeds.Count - 1)
            {
                currentSeed++;
            }
            else
            {
                currentSeed = 0;
            }
        }
        else
        {
            //increment seed counter down
            if (currentSeed > 0)
            {
                currentSeed--;
            }
            else
            {
                currentSeed = mySeeds.Count - 1;
            }
        }
       

        //set new seed
        currentSeedObj = mySeeds[currentSeed];
        currentSeedObj.GetComponent<Seed>().seedSelected = true;
    }
}
