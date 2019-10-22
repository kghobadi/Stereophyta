using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour {
    //player control ref
    GameObject player;
    ThirdPersonController tpc;

    //Items inv
    [Header("Items Inv")]
    public int ItemTimeScale;
    public int currentItem = 0;
    public GameObject currentItemObj;
    public Item currentItemScript;
    public List<GameObject> myItems = new List<GameObject>();
    public Vector3 localSeedSpot;
    bool lastSwitch;

    //UI
    [Header("Items UI")]
    public GameObject ItemInvVisual;
    public Image currentItemImg, lastItemImg, nextItemImg, lastImg1, nextImg1;
    public Text itemCounter;
    public List<Sprite> ItemSprites = new List<Sprite>();
    public Sprite nadaSprite;
    public FadeUI[] ItemsUI;
    IEnumerator fadeItems;

    //for altering seed count text
    public float txtScale1 = 1f, txtScale2 = 0.8f, txtScale3 = 0.6f;

    //for controlling switching
    [Header("Input Resets for Switching")]
    public float inputTimer;
    public bool canSwitchItems;

    //audio
    [Header("Audio")]
    public AudioSource inventoryAudio;
    public AudioClip switchSeedsUp, switchSeedsDown, switchItems;
    //tempo indicator
    TempoIndication tempoIndicator;

    void Awake()
    { 
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryAudio = GetComponent<AudioSource>();
        tempoIndicator = GetComponent<TempoIndication>();
    }

    void Start () {
        //if have Items
        if(myItems.Count > 0)
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
       
        ItemInvVisual.SetActive(false);
        fadeItems = FadeOutItemsVis();
    }
	
	void Update () {
        //timer for switching Items
        inputTimer -= Time.deltaTime;
        if(inputTimer < 0)
        {
            canSwitchItems = true;
        }
        
        if (!tpc.menuOpen)
        {
            //switch current item +
            if ((Input.GetAxis("SwitchItem") > 0 || Input.GetKey(KeyCode.E)) && canSwitchItems && myItems.Count > 1)
            {
                SwitchItem(true, true);
            }
            //switch current item -
            if ((Input.GetAxis("SwitchItem") < 0 || Input.GetKey(KeyCode.Q)) && canSwitchItems && myItems.Count > 1)
            {
                SwitchItem(false, true);
            }

            //auto switch to next seed with a count if you run out of item
            if (currentItemScript.itemCount == 0 && myItems.Count > 1 && currentItemScript.CheckSeedPlanting())
            {
                SwitchItem(lastSwitch, false);
            }

            //input for switching player rhythm
            if (Input.GetKeyDown(KeyCode.LeftAlt)) 
            {
                ItemTimeScale = DecreaseListCounter(ItemTimeScale, 5);
                tempoIndicator.SetVisualTempo(ItemTimeScale);
            }

            //input for switching player rhythm
            if (Input.GetKeyDown(KeyCode.RightAlt))
            {
                ItemTimeScale = IncreaseListCounter(ItemTimeScale, 5);
                tempoIndicator.SetVisualTempo(ItemTimeScale);
            }
        }
        
        //fade out quick menus while sleeping
        if (tpc.sleeping)
        {
            StopAllCoroutines();

            for (int i = 0; i < ItemsUI.Length; i++)
            {
                ItemsUI[i].fadingIn = false;
                ItemsUI[i].fadingOut = true;
            }
        }

        SetItemText();
    }

    //alter count of current seed
    void SetItemText()
    {
        //set seed counter in inv UI
        if(currentItemScript.itemType == Item.ItemType.SEED)
        {
            itemCounter.text = currentItemScript.itemCount.ToString();

            switch (itemCounter.text.Length)
            {
                case 0:
                    itemCounter.rectTransform.localScale = new Vector3(txtScale1, txtScale1, txtScale1);
                    break;
                case 1:
                    itemCounter.rectTransform.localScale = new Vector3(txtScale1, txtScale1, txtScale1);
                    break;
                case 2:
                    itemCounter.rectTransform.localScale = new Vector3(txtScale2, txtScale2, txtScale2);
                    break;
                case 3:
                    itemCounter.rectTransform.localScale = new Vector3(txtScale3, txtScale3, txtScale3);
                    break;
            }
        }
        //when it's a tool we don't need a count.
        else
        {
            itemCounter.text = "";
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

        bool foundItem = true;
        //keep looping until we find one with a count 
        while(myItems[currentItem].GetComponent<Item>().itemCount < 1)
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
            if(currentItem == lastItem)
            {
                break;
            }
        }

        //set new Item
        currentItemObj = myItems[currentItem];
        currentItemObj.SetActive(true);
        currentItemScript = currentItemObj.GetComponent<Item>();

        //if its a tool or the seed's count is > 0
        if(currentItemScript.itemType == Item.ItemType.TOOL || currentItemScript.itemCount > 0)
            SetItemSprite();
        //set seed selected 
        if(currentItemScript.itemType == Item.ItemType.SEED)
            currentItemScript.SelectSeed();

        //reset timer so not infinite switch
        inputTimer = 0.25f;
        canSwitchItems = false;

        if(audio)
            inventoryAudio.PlayOneShot(switchItems);
    }

    public void SetItemSprite()
    {
        //change inv visuals
        currentItemImg.sprite = ItemSprites[currentItem];
        
        //more than one item
        if(myItems.Count > 1)
        {
            //last img
            if (currentItem > 0)
            {
                lastItemImg.sprite = ItemSprites[currentItem - 1];
            }
            else
            {
                lastItemImg.sprite = ItemSprites[myItems.Count - 1];
            }
            //next img
            if (currentItem < myItems.Count - 1)
            {
                nextItemImg.sprite = ItemSprites[currentItem + 1];
            }
            else
            {
                nextItemImg.sprite = ItemSprites[0];
            }
            //last img 1
            if(currentItem - 1 > 0)
            {
                lastImg1.sprite = ItemSprites[currentItem - 2];
            }
            else
            {
                lastImg1.sprite = ItemSprites[myItems.Count - 2];
            }
            //next img 1
            if((currentItem + 1) < myItems.Count - 1)
            {
                nextImg1.sprite = ItemSprites[currentItem + 2];
            }
            else
            {
                nextImg1.sprite = ItemSprites[1];
            }
        }
        //only one item so all the sprites are nothing
        else if(myItems.Count == 1)
        {
            lastItemImg.sprite = nadaSprite;
            nextItemImg.sprite = nadaSprite;
        }
        
        //Items vis
        if(fadeItems != null)
            StopCoroutine(fadeItems);
        fadeItems = FadeOutItemsVis();
        StartCoroutine(fadeItems);
    }

    //Count up a list 
    int IncreaseListCounter(int counter, int total)
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
    int DecreaseListCounter(int counter, int total)
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
    int CheckPlayerHasItem()
    {
        int itemCounter = 0;
        //loop thru item counts
        for(int i = 0; i < myItems.Count; i++)
        {
            if(myItems[i].GetComponent<Item>().itemCount > 0)
            {
                itemCounter++;
            }
        }

        return itemCounter;
    }

    //adds seed type to inv
    public void AddItemToInventory(GameObject item, Sprite itemSprite)
    {
        //add to lists
        myItems.Add(item);
        ItemSprites.Add(itemSprite);
        //set item count to 1 
        Item itemScript = item.GetComponent<Item>();
        itemScript.itemCount = 1;

        //if it's a seed
        if(itemScript.itemType == Item.ItemType.SEED)
        {
            //set parent and pos
            item.transform.SetParent(transform);
            item.transform.localPosition = localSeedSpot;

            //set new seed index in seed & plant
            itemScript.SetSeedIndex(myItems.Count - 1);
        }
    }

    //switches to gameObject item
    public void SwitchToItem(GameObject item)
    {
        //turn off all items 
        DeactivateAllItems();
        //set new current item 
        currentItemObj = item;
        currentItem = myItems.IndexOf(currentItemObj);
        currentItemScript = currentItemObj.GetComponent<Item>();
        //set sprite 
        SetItemSprite();
    }

    //remove seed type from inv
    public void RemoveItemFromInventory(int index)
    {
        //turn off
        myItems[index].SetActive(false);
        //remove from lists
        myItems.RemoveAt(index);
        ItemSprites.RemoveAt(index);
    }

    //deactivate all Items 
    void DeactivateAllItems()
    {
        for (int i = 0; i < myItems.Count; i++)
        {
            myItems[i].SetActive(false);
        }
    }

    //fade in and out Items inv
    IEnumerator FadeOutItemsVis()
    {
        if (!ItemInvVisual.activeSelf)
        {
            ItemInvVisual.SetActive(true);
        }
        
        for (int i = 0; i < ItemsUI.Length; i++)
        {
            ItemsUI[i].FadeIn();
        }

        yield return new WaitForSeconds(2f);

        for (int i = 0; i < ItemsUI.Length; i++)
        {
            ItemsUI[i].FadeOut();
        }
    }

}
