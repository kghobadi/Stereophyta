using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class for things that can be picked from plants
// i.e. fruits, seeds, etc. 
public class Pickable : AudioHandler {
    [Header("Sounds")]
    public AudioClip[] pickUps;
    public AudioClip[] nothingLeft;

    Inventory playerInventory;
    [Header("Pickable logic")]
    public List<Item> pickableObjects = new List<Item>();
    public string pickUpText;
    public Sprite pickableSprite;
    public bool available = true;
    public float promptOffset = 3;
    public int pickMin = 3, pickMax = 6;
    
    public override void Awake ()
    {
        base.Awake();
        playerInventory = FindObjectOfType<Inventory>();
	}

    public void Pick()
    {
        if (pickableObjects.Count > 0)
        {
            //pick amount 
            int pickAmount = Random.Range(pickMin, pickMax);

            //adds all my pickable objs to inventory 
            for (int i = 0; i < pickAmount; i++)
            {
                //check can pick..  
                if( i <= pickableObjects.Count - 1)
                {
                    if (pickableObjects[i] != null)
                    {
                        //item group starts as null
                        Item itemGroup = playerInventory.FindItemGroup(pickableObjects[i]);

                        //group is found    
                        if (itemGroup != null)
                        {
                            playerInventory.AddItemToGroup(itemGroup, pickableObjects[i].gameObject);

                            pickableObjects[i].gameObject.SetActive(false);

                            //remove picked obj from PickableObjs
                            pickableObjects.RemoveAt(i);
                        }
                        //none in inventory, add to inventory
                        else
                        {
                            playerInventory.AddItemToInventory(pickableObjects[i].gameObject, pickableObjects[i].itemSprite);

                            //remove picked obj from PickableObjs
                            pickableObjects.RemoveAt(i);
                        }
                    }
                }
            }

            //play pick up sound 
            PlayRandomSound(pickUps, myAudioSource.volume);

            //Debug.Log(gameObject.name + " was picked!");
        }
        else
        {
            //play pick up sound 
            PlayRandomSoundRandomPitch(nothingLeft, myAudioSource.volume);
        }
        
    }
}
