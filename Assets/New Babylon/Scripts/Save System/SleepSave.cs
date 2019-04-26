using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;


[Serializable]
public class SaveStorage
{
    //for saving plants -- objects, scripts, their positions, and current ages
    public List<GameObject> plants;
    public List<Plont> plantScripts;
    public List<Vector3> plantPositions;
    public List<int> plantAges;

    //for saving count of seeds in inventory
    public List<int> inventorySeedCounts;
}

public class SleepSave : MonoBehaviour {

    public SaveStorage mySaveStorage;

    //for saving and file writing
    private string gameDataFileName = "islandStorage";
    public bool canLoad;

    //script ref to inventory
    Inventory inventoryScript;
    
    void Awake () {
        inventoryScript = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
	}

    void Start()
    {
        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetInt("sessionNumber") > 0)
        {
            LoadGameData();
        }
    }

    public void SaveGameData()
    {
        //clear plants lists besides the initial game obj/script storage (these ones change)
        mySaveStorage.plantPositions.Clear();
        mySaveStorage.plantAges.Clear();

        //set plant position and plant ages
        for(int i = 0; i < mySaveStorage.plants.Count; i++)
        {
            //add plant ages
            mySaveStorage.plantAges.Add(mySaveStorage.plantScripts[i].myAge);
            //add plant position
            mySaveStorage.plantPositions.Add(mySaveStorage.plantScripts[i].transform.position);
        }

        //clear inventory list and readd based on number of seeds in player inventory
        mySaveStorage.inventorySeedCounts.Clear();

        //restore inventory seed counts
        for (int i = 0; i < inventoryScript.seedStorage.Count; i++)
        {
            mySaveStorage.inventorySeedCounts.Add(inventoryScript.seedStorage[i].seedCount);
        }

        //actual save to json functionality

        //set filepath
        string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);
        //save the save storage class into the file 
        string dataAsJson = JsonUtility.ToJson(mySaveStorage);
        //write the file
        File.WriteAllText(filePath, dataAsJson);
        //adjust playerprefs so we know we save
        PlayerPrefs.SetInt("sessionNumber", 1);

        Debug.Log("called save");
    }

    public void LoadGameData()
    {
        //file to load
        string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);

        //check if it exists
        if (File.Exists(filePath))
        {
            //read it
            string dataAsJson = File.ReadAllText(filePath);

            //set save storage
            mySaveStorage = JsonUtility.FromJson<SaveStorage>(dataAsJson);

            //set bool
            canLoad = true;
        }
        else
        {
            Debug.Log("Cannot load save game data!");
            canLoad = false;
        }

        //we can load
        if (canLoad)
        {
            //generate plants based on json data
            for(int i = 0; i < mySaveStorage.plants.Count; i++)
            {
                //set prefab and spawn pos
                GameObject pPrefab = mySaveStorage.plantScripts[i].plantPrefab;
                Vector3 spawnPos = mySaveStorage.plantPositions[i];

                //generate
                GameObject plont = Instantiate(pPrefab, spawnPos, Quaternion.identity);

                //age the plant the number of timems stored in the age list
                for(int a = 0; a < mySaveStorage.plantAges[i]; a++)
                {
                    plont.GetComponent<Plont>().GrowPlant(true);
                }
            }

            //set inventory seed counts based on json data
            for(int i = 0; i  < inventoryScript.seedStorage.Count; i++)
            {
                //create temp ref
                SeedStorage seedStorageTemp = inventoryScript.seedStorage[i];
                //set seed count
                seedStorageTemp.seedCount = mySaveStorage.inventorySeedCounts[i];
            }

            Debug.Log("finished loading!");
        }
    }
}
