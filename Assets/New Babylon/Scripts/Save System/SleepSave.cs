using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;
using TGS;


[Serializable]
public class SaveStorage
{
    //for saving plants -- objects, scripts, plant type, their positions, and current ages
    public List<GameObject> plants;
    public List<Plont> plantScripts;
    public List<string> plantType;
    public List<Vector3> plantPositions;
    public List<int> plantAges;
    //for saving plants on a grid
    public List<bool> plantedOnGrid;
    public List<int> cellIndeces;

    //for saving count of seeds in inventory
    public List<int> inventorySeedCounts;
}

[Serializable]
public class SleepSave : MonoBehaviour {

    public SaveStorage mySaveStorage;
    GameObject player;
    ThirdPersonController tpc;

    //for saving and file writing
    private string gameDataFileName = "islandStorage";
    public bool canLoad;
    public bool savingAndLoadingEnabled;

    //script ref to inventory
    Inventory inventoryScript;

    //use these to match up plant type with game object prefab -- these never change. set in editor
    public List<string> plantTypes;
    public List<GameObject> plantPrefabs;

    TerrainGridSystem tgs;

    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        inventoryScript = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
        tgs = tpc.currentTGS;

        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetInt("sessionNumber") > 0 && savingAndLoadingEnabled)
        {
            LoadGameData();
        }
    }

    public void SaveGameData()
    {
        //clear plants lists besides the initial game obj/script storage (these ones change)
        mySaveStorage.plantPositions.Clear();
        mySaveStorage.plantAges.Clear();
        //grid clear
        mySaveStorage.plantedOnGrid.Clear();
        mySaveStorage.cellIndeces.Clear();

        //set plant position and plant ages
        for (int i = 0; i < mySaveStorage.plants.Count; i++)
        {
            //check if plantScript stored is null
            if(mySaveStorage.plantScripts[i] != null)
            {
                //add plant ages
                mySaveStorage.plantAges.Add(mySaveStorage.plantScripts[i].myAge);
                //add plant position
                mySaveStorage.plantPositions.Add(mySaveStorage.plantScripts[i].transform.position);

                //is this plant on the grid?
                //on Grid
                if (mySaveStorage.plantScripts[i].plantedOnGrid)
                {
                    mySaveStorage.plantedOnGrid.Add(true);
                    mySaveStorage.cellIndeces.Add(mySaveStorage.plantScripts[i].cellIndex);
                }
                //off grid
                else
                {
                    mySaveStorage.plantedOnGrid.Add(false);
                    mySaveStorage.cellIndeces.Add(0);
                }
            }
            else
            {
                Debug.Log("plant was null!");
                //this plant must have been destroyed, remove if from all the lists
                mySaveStorage.plantScripts.RemoveAt(i);
                mySaveStorage.plants.RemoveAt(i);
                mySaveStorage.plantType.RemoveAt(i);
                //increment i down 1
                i--;
            }
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
                Plont plontScript = plont.GetComponent<Plont>();
                //don't want it to add itself to save storage 
                plontScript.startingPlant = true;

                //instead we reset the first 2 lists with this new gameobjects info
                mySaveStorage.plants[i] = plont;
                mySaveStorage.plantScripts[i] = plontScript;

                //age the plant the number of timems stored in the age list
                plontScript.StartCoroutine(plontScript.AgeAtStart(mySaveStorage.plantAges[i]));

                //check if the plant is on grid
                if (mySaveStorage.plantedOnGrid[i])
                {
                    //this is on the grid!
                    plontScript.plantedOnGrid = true;

                    //set cell & index
                    plontScript.cellIndex = mySaveStorage.cellIndeces[i];

                    //planted tag
                    tgs.CellSetTag(plontScript.cellIndex, 1);

                    //Sets texture to planted
                    tgs.CellToggleRegionSurface(plontScript.cellIndex, true, plontScript.plantedTexture);
                }
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

            //Debug.Log("finished loading!");
        }
    }
}
