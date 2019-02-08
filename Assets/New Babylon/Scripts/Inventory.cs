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
    
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        
        currenItemObj = myItems[currentItem];
        if (currenItemObj.GetComponent<Item>().itemType == Item.ItemType.SEED)
        {
            currenItemObj.GetComponent<Seed>().seedSelected = true;
        }

        //turn off all other items
        for (int i = 0; i < myItems.Count; i++)
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

        }

    }

    public void SwitchItem(bool posOrNeg)
    {
        //if seed, turn off
        if(currenItemObj.GetComponent<Item>().itemType == Item.ItemType.SEED)
        {
            currenItemObj.GetComponent<Seed>().seedSelected = false;
        }
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
        //set seed active
        if (currenItemObj.GetComponent<Item>().itemType == Item.ItemType.SEED)
        {
            currenItemObj.GetComponent<Seed>().seedSelected = true;
        }

        //reset timer so not infinite switch
        inputTimer = 0.25f;
        canSwitchInv = false;
    }

   
}
