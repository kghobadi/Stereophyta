using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace NPC
{
    //manages Tasks that an NPC can assign the player 
    public class TaskManager : MonoBehaviour
    {
        //controller & inventory refs 
        Controller npcController;
        ThirdPersonController tpc;
        Player.Inventory playerInventory;
        Player.TaskManager pTaskManager;

        //list of active & complete tasks 
        public List<Task> activeTasks = new List<Task>();
        public List<Task> completedTasks = new List<Task>();
        [Tooltip("How far NPC looks to check for Planted items")]
        public float visionRadius = 75f;

        void Awake()
        {
            //private refs
            npcController = GetComponent<Controller>();
            tpc = FindObjectOfType<ThirdPersonController>();    
            playerInventory = FindObjectOfType<Player.Inventory>();
            pTaskManager = FindObjectOfType<Player.TaskManager>();

            //add listeners
            playerInventory.addedNewItem.AddListener(CheckTaskCompletion);
            playerInventory.addedItemToGroup.AddListener(CheckTaskCompletion);
            playerInventory.removedItem.AddListener(CheckTaskCompletion);
            playerInventory.removedItemFromGroup.AddListener(CheckTaskCompletion);
            tpc.enteredZone.AddListener(CheckTaskCompletion);
        }
        
        //called from monologue manager if a monologue contains task references 
        public void AssignTask(Task task)
        {
            activeTasks.Add(task);
        }
        
        //use this to check on a task's completion when player picks up an item 
        public void CheckTaskCompletion()
        {
            //loop through active tasks
            for(int i = 0; i < activeTasks.Count; i++)
            {
                //task ref
                Task task = activeTasks[i];

                //FETCH
                if(task.taskType == Task.TaskType.FETCH)
                {
                    //check player's items 
                    Item item = CheckForItem(task, true);

                    //Debug.Log("checking fetch task");

                    //found item
                    if (item != null)
                    {
                        //Debug.Log("fetch item not null");
                        //player completed task!
                        if (item.itemCount >= task.desiredItemCount)
                        {
                            //Debug.Log("completed fetch ");
                            Complete(task);
                        }
                    }
                }

                //PLANT
                else if (task.taskType == Task.TaskType.PLANT)
                {
                    //NPC scans around them for plants 
                    int amount = CheckForPlants(task);
                    if (amount >= task.desiredItemCount)
                    {
                        Complete(task);
                    }
                }


                //PLANT
                else if (task.taskType == Task.TaskType.CUT)
                {
                    //NPC scans around them for plants 
                    int amount = CheckForPlants(task);
                    if (amount <= task.desiredItemCount)
                    {
                        Complete(task);
                    }
                }

                //GOTO
                else if (task.taskType == Task.TaskType.GOTO)
                {
                    //complete!
                    if(tpc.currentZone.zoneName == task.zoneName)
                    {
                        Complete(task);
                    }
                }
            }

            //Debug.Log("checking tasks");
        }
        
        //check for item in player inventory 
        //TRUE for player, FALSE for NPC 
        public Item CheckForItem(Task task, bool playerOrNPC)
        {
            //set up item ref 
            Item item = null;

            //SEED check
            if (task.itemType == Item.ItemType.SEED)
            {
                //CROP check
                if (task.seedType == Item.SeedType.CROP)
                {
                    if(playerOrNPC)
                        item = playerInventory.CheckForCropType(task.cropType);
                    else
                        item = npcController.Inventory.CheckForCropType(task.cropType);
                }
                //SHROOM check 
                else if (task.seedType == Item.SeedType.SHROOM)
                {
                    if(playerOrNPC)
                        item = playerInventory.CheckForShroomType(task.shroomType);
                    else
                        item = npcController.Inventory.CheckForShroomType(task.shroomType);
                }
            }
            //TOOL check
            else if (task.itemType == Item.ItemType.TOOL)
            {
                if(playerOrNPC)
                    item = playerInventory.CheckForToolType(task.toolType);
                else
                    item = npcController.Inventory.CheckForToolType(task.toolType);
            }
            //MISC check 
            else if (task.itemType == Item.ItemType.MISC)
            {
                if(playerOrNPC)
                    item = playerInventory.CheckForMiscItem(task.miscType);
                else
                    item = npcController.Inventory.CheckForMiscItem(task.miscType);
            }

            return item;
        }

        //check for plants in a spot 
        public int CheckForPlants(Task task)
        {
            //0 plant amount 
            int plantAmount = 0;
            //overlap sphere 
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, visionRadius);
           
            //loop through colliders 
            for (int i = 0;  i < hitColliders.Length; i ++)
            {
                //crop check 
                if (hitColliders[i].GetComponent<Plont>())
                {
                    Plont crop = hitColliders[i].GetComponent<Plont>();
                    if (crop.myPlantType == task.cropType)
                    {
                        plantAmount++;
                        Debug.Log(gameObject.name + " sees a crop!");
                    }
                    
                }
                //shroom check 
                else if (hitColliders[i].GetComponent<Shroom>())
                {
                    Shroom shroom = hitColliders[i].GetComponent<Shroom>();
                    if (shroom.shroomType == task.shroomType)
                    {
                        plantAmount++;
                        Debug.Log(gameObject.name + " sees a shroom!");
                    }
                }
                //item
                else if (hitColliders[i].GetComponent<Item>())
                {
                    Item item = hitColliders[i].GetComponent<Item>();

                    
                }
                i++;
            }

            //return int 
            return plantAmount;
        }

        //called CheckTaskCompletion finds a complete task
        public void Complete(Task task)
        {
            //check Task outcomes and trigger them 
            if (task.triggersMonologues)
            {
                //activate monologue triggers
                for(int i = 0; i < task.monologueIndeces.Length; i++)
                {
                    npcController.Monologues.wmManager.allMonologues[task.monologueIndeces[i]].mTrigger.gameObject.SetActive(true);
                }
            }

            //move to completed list
            activeTasks.Remove(task);
            completedTasks.Add(task);
        }

        //called inside MonologueManager
        public void FulfillTask(Task task)
        {
            // transfer item from player inventory to Npc inventory 
            if (task.taskType == Task.TaskType.FETCH)
            {
                //item group refs 
                Item myItemGroup = CheckForItem(task, false);
                Item playerItemGroup = CheckForItem(task, true);

                //null -- add it from player's inventory 
                if (myItemGroup == null)
                {
                    //GO ref
                    GameObject itemClone;
                    //pull a new items from that objects pool  
                    ObjectPooler objPooler = null;
                    if (playerItemGroup.GetComponent<PooledObject>())
                        objPooler = playerItemGroup.GetComponent<PooledObject>().m_ObjectPooler;
                    if (objPooler)
                    {
                        itemClone = objPooler.GrabObject();
                    }
                    else
                    {
                        itemClone = Instantiate(playerItemGroup.gameObject);
                    }
                    //name item obj
                    itemClone.name = task.itemName;
                    //set my item group
                    myItemGroup = itemClone.GetComponent<Item>();
                    //add to NPC inventory 
                    npcController.Inventory.AddItemToInventory(myItemGroup.gameObject, myItemGroup.itemSprite);
                }

                //add to count desired amount
                myItemGroup.itemCount += task.desiredItemCount;
                //subtract from player's group 
                playerItemGroup.itemCount -= task.desiredItemCount;

                //if we have gone below 0, remove item from p inventory 
                if (playerItemGroup.itemCount <= 0)
                {
                    playerInventory.RemoveObjFromInventory(playerItemGroup.gameObject);
                }
            }
        }
    }
}
