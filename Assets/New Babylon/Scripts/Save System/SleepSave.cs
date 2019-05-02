using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;


[Serializable]
public class SaveStorage
{
    //for saving plants -- objects, scripts, plant type, their positions, and current ages
    public List<GameObject> plants;
    public List<Plont> plantScripts;
    public List<string> plantType;
    public List<Vector3> plantPositions;
    public List<int> plantAges;

    //for saving count of seeds in inventory
    public List<int> inventorySeedCounts;
   
}

[Serializable]
public class SleepSave : MonoBehaviour {

    public SaveStorage mySaveStorage;

    //for saving and file writing
    private string gameDataFileName = "islandStorage";
    public bool canLoad;

    //script ref to inventory
    Inventory inventoryScript;

    //use these to match up plant type with game object prefab -- these never change. set in editor
    public List<string> plantTypes;
    public List<GameObject> plantPrefabs;

    void Start () {
        inventoryScript = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();

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
            //Debug.Log("trying to load!");
            //generate plants based on json data
            for (int i = 0; i < mySaveStorage.plantAges.Count; i++)
            {
                //get index of plant type from plant types
                int index = plantTypes.IndexOf(mySaveStorage.plantType[i]);
                GameObject pPrefab = plantPrefabs[index];
                Vector3 spawnPos = mySaveStorage.plantPositions[i];

                //generate
                GameObject plont = Instantiate(pPrefab, spawnPos, Quaternion.identity);
                //don't want it to add itself to save storage 
                plont.GetComponent<Plont>().startingPlant = true;

                //instead we reset the first 2 lists with this new gameobjects info
                mySaveStorage.plants[i] = plont;
                mySaveStorage.plantScripts[i] = plont.GetComponent<Plont>();

                //age the plant the number of timems stored in the age list
                plont.GetComponent<Plont>().StartCoroutine(plont.GetComponent<Plont>().AgeAtStart(mySaveStorage.plantAges[i]));
            }

            //Debug.Log("regenerated plants!");

            //set inventory seed counts based on json data
            for (int i = 0; i  < inventoryScript.seedStorage.Count; i++)
            {
                //create temp ref
                SeedStorage seedStorageTemp = inventoryScript.seedStorage[i];
                //set seed count
                seedStorageTemp.seedCount = mySaveStorage.inventorySeedCounts[i];
                //set actual seed storage struct to temp values 
                inventoryScript.seedStorage[i] = seedStorageTemp;
            }

            Debug.Log("finished loading!");
        }
    }
}
