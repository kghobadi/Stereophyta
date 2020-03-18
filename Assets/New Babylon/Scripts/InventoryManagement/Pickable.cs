using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class for things that can be picked from plants
// i.e. fruits, seeds, etc. 
public class Pickable : AudioHandler {
    //sun ref 
    Sun sun;

    [Header("Sounds")]
    public AudioClip[] pickUps;
    public AudioClip[] nothingLeft;

    Inventory playerInventory;
    [Header("Pickable logic")]
    public List<Item> pickableObjects = new List<Item>();
    public int activeItems;
    public string pickUpText;
    public Sprite pickableSprite;
    public bool available = true;
    public Vector3 promptOffset = new Vector3(0f, 3f,0f);
    public int pickMin = 3, pickMax = 6;

    //amounts that will regrow each day 
    public int regrowthMin = 1, regrowthMax = 2;
    
    public override void Awake ()
    {
        base.Awake();
        sun = FindObjectOfType<Sun>();
        playerInventory = FindObjectOfType<Inventory>();
	}

    void Start()
    {
        //set active items to count of pickable objs
        activeItems = pickableObjects.Count;
        //SUN EVENT LISTENER
        sun.newDay.AddListener(DayPass);
    }

    public void Pick()
    {
        if (activeItems > 0)
        {
            //pick amount 
            int pickAmount = Random.Range(pickMin, pickMax);

            //adds all my pickable objs to inventory 
            for (int i = 0; i < pickAmount; i++)
            {
                //check can pick..  
                if( i <= pickableObjects.Count - 1)
                {
                    //null check 
                    if (pickableObjects[i] != null)
                    {
                        //gameObj active
                        if (pickableObjects[i].gameObject.activeSelf)
                        {
                            //item group starts as null
                            Item itemGroup = playerInventory.FindItemGroup(pickableObjects[i]);

                            //group is found    
                            if (itemGroup != null)
                            {
                                //seed 
                                if (pickableObjects[i].itemType == Item.ItemType.SEED)
                                {
                                    //we want to just deactivate the shroom... (return to pool)
                                    if (pickableObjects[i].seedType == Item.SeedType.SHROOM)
                                    {
                                        Shroom shroomScript = GetComponent<Shroom>();

                                        shroomScript.CollectShroom();
                                    }
                                    else
                                    {
                                        //add pickable obj to item group 
                                        playerInventory.AddItemToGroup(itemGroup, pickableObjects[i].gameObject);

                                        //disable pickable obj
                                        if (pickableObjects[i].gameObject.activeSelf)
                                            pickableObjects[i].gameObject.SetActive(false);
                                    }
                                }
                                else
                                {
                                    //add pickable obj to item group 
                                    playerInventory.AddItemToGroup(itemGroup, pickableObjects[i].gameObject);

                                    //disable pickable obj
                                    if (pickableObjects[i].gameObject.activeSelf)
                                        pickableObjects[i].gameObject.SetActive(false);
                                }
                               
                                activeItems--;
                            }
                            //none in inventory, add to inventory
                            else
                            {
                                //seed 
                                if (pickableObjects[i].itemType == Item.ItemType.SEED)
                                {
                                    //need to ref Plont & spawn seed 
                                    if (pickableObjects[i].seedType == Item.SeedType.CROP)
                                    {
                                        Plont plontScript = GetComponent<Plont>();

                                        plontScript.SpawnSeed(pickableObjects[i].transform);

                                        //disable pickable obj 
                                        pickableObjects[i].gameObject.SetActive(false);
                                    }
                                    //we want to just deactivate the shroom... (return to pool)
                                    if (pickableObjects[i].seedType == Item.SeedType.SHROOM)
                                    {
                                        Shroom shroomScript = GetComponent<Shroom>();

                                        shroomScript.CollectShroom();
                                    }
                                }
                                //misc -- just add item to inventory (only a pic)
                                else if (pickableObjects[i].itemType == Item.ItemType.MISC)
                                {
                                    //adds item to inventory 
                                    playerInventory.AddItemToInventory(pickableObjects[i].gameObject, pickableObjects[i].itemSprite);

                                    //set parent, local pos
                                    pickableObjects[i].transform.SetParent(playerInventory.transform);
                                    pickableObjects[i].transform.localPosition = playerInventory.localSeedSpot;

                                    //disable pickable obj 
                                    pickableObjects[i].gameObject.SetActive(false);
                                }

                                activeItems--;
                            }
                        }
                        //add to pick amount and keep going through plants 
                        else
                        {
                            pickAmount++;
                        }
                    }
                }
                //break the loop once we exceed pickable objs count
                else
                {
                    break;
                }
            }

            //play pick up sound 
            PlayRandomSound(pickUps, myAudioSource.volume);

            //Debug.Log(gameObject.name + " was picked!");
        }
    }

    //adds pickable obj
    public void AddPickableObj(Item obj)
    {
        pickableObjects.Add(obj);
        activeItems++;
    }

    //removes pickable obj
    public void RemovePickableObj(Item obj)
    {
        pickableObjects.Remove(obj);
        activeItems--;
    }

    //every day regrows a certain amount 
    void DayPass()
    {
        int randomRegrowthAmount = Random.Range(regrowthMin, regrowthMax);

        int grown = 0;

        for (int i = 0; i < pickableObjects.Count; i++)
        {
            //less than amount to regrow
            if (grown < randomRegrowthAmount)
            {
                //check that pickable obj is not active 
                if (pickableObjects[i].gameObject.activeSelf == false)
                {
                    //regrow 
                    pickableObjects[i].gameObject.SetActive(true);
                    grown++;
                    activeItems++;
                }
            }
            //break from the loop
            else
            {
                return;
            }
        }
    }
}
