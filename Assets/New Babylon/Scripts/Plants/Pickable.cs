using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class for things that can be picked from plants
// i.e. fruits, seeds, etc. 
public class Pickable : AudioHandler {
    Inventory playerInventory;
    public List<Item> pickableObjects = new List<Item>();
    public string pickUpText;
    public bool available = true;
    public AudioClip[] pickUps;

    public float promptOffset = 3;
    public int pickMin =3, pickMax = 6;

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
                        //check for a group for this item 
                        Item itemGroup = playerInventory.CheckForMiscItem(pickableObjects[i].miscType);

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
            PlayRandomSoundRandomPitch(pickUps, myAudioSource.volume);

            //Debug.Log(gameObject.name + " was picked!");
        }
        
    }
}
