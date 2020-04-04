using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;
using Player;

[Serializable]
public class InventoryStorage
{
    public List<GameObject> seedObjects;
    //for saving count of seeds in inventory
    public List<int> inventorySeedCounts;
}

public class InventorySaver : MonoBehaviour {
    public InventoryStorage mySaveStorage;
    public bool canLoad;
    //player refs
    GameObject player;
    ThirdPersonController tpc;
    Inventory inventoryScript;
    private string gameDataFileName = "inventoryStorage";

    void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
    }

    void Start()
    {
        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetInt("sessionNumber") > 0 && tpc.savingAndLoadingEnabled)
        {
            LoadInventory();
        }
        //we actually haven't saved 
        else
        {
            PlayerPrefs.SetString("hasSaved", "no");
        }
    }

    public void SaveInventory()
    {
        //clear inventory list and readd based on number of seeds in player inventory
        mySaveStorage.inventorySeedCounts.Clear();

        //restore inventory seed counts
        for (int i = 0; i < inventoryScript.myItems.Count; i++)
        {
            mySaveStorage.inventorySeedCounts.Add(inventoryScript.myItems[i].GetComponent<Item>().itemCount);
        }

        //actual save to json functionality
        //set filepath
        string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);
        //save the save storage class into the file 
        string dataAsJson = JsonUtility.ToJson(mySaveStorage);
        //write the file
        File.WriteAllText(filePath, dataAsJson);
        //set current session in player prefs
        int currentSession = PlayerPrefs.GetInt("sessionNumber");
        PlayerPrefs.SetInt("sessionNumber", currentSession + 1);
        //has saved should now be true 
        PlayerPrefs.SetString("hasSaved", "yes");
    }

    public void LoadInventory()
    {
        //file to load
        string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);

        //check if it exists
        if (File.Exists(filePath))
        {
            //read it
            string dataAsJson = File.ReadAllText(filePath);

            //set save storage
            mySaveStorage = JsonUtility.FromJson<InventoryStorage>(dataAsJson);

            //set bool
            canLoad = true;
        }
        else
        {
            Debug.Log("Cannot load inventory save data!");
            canLoad = false;
        }

        //found the file and loaded 
        if (canLoad)
        {
            //set inventory item counts based on json data
            for (int i = 0; i < inventoryScript.myItems.Count; i++)
            {
                inventoryScript.myItems[i].GetComponent<Item>().itemCount = mySaveStorage.inventorySeedCounts[i];
            }

            Debug.Log("Loaded inventory save data!");
        }
    }
}
