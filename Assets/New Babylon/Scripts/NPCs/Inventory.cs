using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace NPC
{
    public class Inventory : MonoBehaviour
    {
        //player control ref
        GameObject player;
        ThirdPersonController tpc;

        //Items inv
        [Header("Items Inv")]
        public int currentItem = 0;
        public GameObject currentItemObj;
        public Item currentItemScript;
        public List<GameObject> myItems = new List<GameObject>();
        public Vector3 localSeedSpot;
        bool lastSwitch;

        //tempo indicator
        TempoIndication tempoIndicator;

        void Awake()
        {
            //player refs
            player = GameObject.FindGameObjectWithTag("Player");
            tpc = player.GetComponent<ThirdPersonController>();
            tempoIndicator = tpc.GetComponent<TempoIndication>();
        }

        void Start()
        {
            //if have Items
            if (myItems.Count > 0)
            {
                //set Item
                currentItemObj = myItems[currentItem];
                currentItemScript = currentItemObj.GetComponent<Item>();

                //if it's a seed, select it 
                if (currentItemScript.itemType == Item.ItemType.SEED)
                {
                    currentItemScript.SelectSeed();
                }

                //turn off all other Items
                for (int i = 0; i < myItems.Count; i++)
                {
                    if (i != currentItem)
                        myItems[i].SetActive(false);
                }
            }
        }

        void Update()
        {
            if (currentItemScript != null)
            {
                //auto switch to next seed with a count if you run out of item
                if (currentItemScript.itemCount == 0 && myItems.Count > 1 && currentItemScript.CheckSeedPlanting())
                {
                    SwitchItem(lastSwitch, false);
                }
            }
            else
            {
                //switch to first & only item 
                if (myItems.Count == 1)
                {
                    SwitchToItem(myItems[0]);
                }
            }
        }
        
        //switches thru Items
        public void SwitchItem(bool posOrNeg, bool audio)
        {
            DeactivateAllItems();
            lastSwitch = posOrNeg;
            int lastItem = currentItem;

            //increment currentItem 
            if (posOrNeg)
            {
                currentItem = IncreaseListCounter(currentItem, myItems.Count);
            }
            else
            {
                currentItem = DecreaseListCounter(currentItem, myItems.Count);
            }

            //keep looping until we find one with a count 
            while (myItems[currentItem].GetComponent<Item>().itemCount < 1)
            {
                //increment currentItem 
                if (posOrNeg)
                {
                    currentItem = IncreaseListCounter(currentItem, myItems.Count);
                }
                else
                {
                    currentItem = DecreaseListCounter(currentItem, myItems.Count);
                }

                //escape while loop if we have no items 
                if (currentItem == lastItem)
                {
                    break;
                }
            }

            //set new Item
            currentItemObj = myItems[currentItem];
            currentItemObj.SetActive(true);
            currentItemScript = currentItemObj.GetComponent<Item>();

            //if its a tool or the seed's count is > 0
            if (currentItemScript.itemType == Item.ItemType.TOOL)
            {

            }
            //set seed selected 
            if (currentItemScript.itemType == Item.ItemType.SEED)
            {
                currentItemScript.SelectSeed();
            }
        }

        //Count up a list 
        public int IncreaseListCounter(int counter, int total)
        {
            if (counter < total - 1)
            {
                counter++;
            }
            else
            {
                counter = 0;
            }

            return counter;
        }

        //Count down a list 
        public int DecreaseListCounter(int counter, int total)
        {
            if (counter > 0)
            {
                counter--;
            }
            else
            {
                counter = total - 1;
            }

            return counter;
        }

        //called to check item counts
        int CheckNPCHasItem()
        {
            int itemCounter = 0;
            //loop thru item counts
            for (int i = 0; i < myItems.Count; i++)
            {
                if (myItems[i].GetComponent<Item>().itemCount > 0)
                {
                    itemCounter++;
                }
            }

            return itemCounter;
        }

        //adds new item type to inv
        public void AddItemToInventory(GameObject item, Sprite itemSprite)
        {
            //add to lists
            myItems.Add(item);
            //set item count to 1 
            Item itemScript = item.GetComponent<Item>();
            itemScript.itemCount = 1;
        }

        //looks in inventory Items to see if there is a Tool of this type
        public Item CheckForCropType(Plont.PlantType cropSeed)
        {
            Item seedGroup = null;

            for (int i = 0; i < myItems.Count; i++)
            {
                //return first crop type that matches the crop type 
                if (myItems[i].GetComponent<Item>().itemType == Item.ItemType.SEED
                    && myItems[i].GetComponent<Item>().seedType == Item.SeedType.CROP
                    && myItems[i].GetComponent<Item>().cropType == cropSeed)
                {
                    seedGroup = myItems[i].GetComponent<Item>();
                    return seedGroup;
                }
            }

            //returns null if we never find that tool type 
            return seedGroup;
        }

        //looks in inventory Items to see if there is a Tool of this type
        public Item CheckForShroomType(Shroom.ShroomType shroom)
        {
            Item seedGroup = null;

            for (int i = 0; i < myItems.Count; i++)
            {
                //return first shroom type that matches the shroom 
                if (myItems[i].GetComponent<Item>().itemType == Item.ItemType.SEED
                    && myItems[i].GetComponent<Item>().seedType == Item.SeedType.SHROOM
                    && myItems[i].GetComponent<Item>().shroomType == shroom)
                {
                    seedGroup = myItems[i].GetComponent<Item>();
                    return seedGroup;
                }
            }

            //returns null if we never find that tool type 
            return seedGroup;
        }

        //looks in inventory Items to see if there is a Tool of this type
        public Item CheckForToolType(Item.ToolType tool)
        {
            Item toolGroup = null;

            for (int i = 0; i < myItems.Count; i++)
            {
                //return first toolgroup that matches the tool type 
                if (myItems[i].GetComponent<Item>().toolType == tool)
                {
                    toolGroup = myItems[i].GetComponent<Item>();
                    return toolGroup;
                }
            }

            //returns null if we never find that tool type 
            return toolGroup;
        }


        //looks in inventory Items to see if there is a Tool of this type
        public Item CheckForMiscItem(Item.MiscType misc)
        {
            Item miscGroup = null;

            for (int i = 0; i < myItems.Count; i++)
            {
                //return first miscgroup that matches the misc type 
                if (myItems[i].GetComponent<Item>().miscType == misc)
                {
                    miscGroup = myItems[i].GetComponent<Item>();
                    return miscGroup;
                }
            }

            //returns null if we never find that misc type 
            return miscGroup;
        }

        //add item to an already acquired item type (for tools)
        public void AddItemToGroup(Item itemGroup, GameObject itemToAdd)
        {
            itemGroup.itemCount++;
            itemGroup.toolGroup.Add(itemToAdd);
        }

        //switches to gameObject item
        public void SwitchToItem(GameObject item)
        {
            //turn off all items 
            DeactivateAllItems();
            //set new current item 
            currentItemObj = item;
            currentItemObj.SetActive(true);
            currentItem = myItems.IndexOf(currentItemObj);
            currentItemScript = currentItemObj.GetComponent<Item>();
            //select that SHIT 
            if (currentItemScript.itemType == Item.ItemType.SEED)
            {
                currentItemScript.SelectSeed();
            }
        }

        //remove seed type from inv
        public void RemoveItemFromInventory(int index)
        {
            //turn off
            myItems[index].SetActive(false);
            //remove from lists
            myItems.RemoveAt(index);
        }

        //remove seed type from inv
        public void RemoveObjFromInventory(GameObject obj)
        {
            int index = myItems.IndexOf(obj);
            //remove from lists
            myItems.RemoveAt(index);
        }

        //deactivate all Items 
        void DeactivateAllItems()
        {
            for (int i = 0; i < myItems.Count; i++)
            {
                myItems[i].SetActive(false);

                Item item = myItems[i].GetComponent<Item>();

                if (item.toolGroup.Count > 0)
                {
                    DeactivateToolGroup(item);
                }
            }
        }

        //deactivates an item tool group 
        void DeactivateToolGroup(Item item)
        {
            if (item.toolGroup.Count > 0)
            {
                for (int t = 0; t < item.toolGroup.Count; t++)
                {
                    item.toolGroup[t].gameObject.SetActive(false);
                }
            }
        }
    }
}
