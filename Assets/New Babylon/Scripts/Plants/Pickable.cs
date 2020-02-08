using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class for things that can be picked from plants
// i.e. fruits, seeds, etc. 
public class Pickable : AudioHandler {
    Inventory playerInventory;
    public Item[] pickableObjects;
    public string pickUpText;
    public bool available = true;
    public AudioClip[] pickUps;

    public override void Awake ()
    {
        base.Awake();
        playerInventory = FindObjectOfType<Inventory>();
	}

    public void Pick()
    {
        if (available)
        {
            //adds all my pickable objs to inventory 
            for (int i = 0; i < pickableObjects.Length; i++)
            {
                //check for a group for this item 
                Item itemGroup = playerInventory.CheckForMiscItem(pickableObjects[i].miscType);

                //group is found    
                if (itemGroup != null)
                {
                    playerInventory.AddItemToGroup(itemGroup, pickableObjects[i].gameObject);
                }
                //none in inventory, add to inventory
                else
                {
                    playerInventory.AddItemToInventory(pickableObjects[i].gameObject, pickableObjects[i].itemSprite);
                }
            }

            //play pick up sound 
            PlayRandomSoundRandomPitch(pickUps, myAudioSource.volume);

            available = false;
        }
        
    }
}
