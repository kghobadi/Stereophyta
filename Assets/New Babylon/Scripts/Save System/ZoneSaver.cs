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
    [Header("Plonts")]
    public List<Plont> plantScripts;
    public List<string> plantType;
    public List<Vector3> plantPositions;
    public List<int> plantAges;
    //for saving plants on a grid
    public List<bool> plantedOnGrid;
    public List<int> cellIndeces;
    [Header("Shrooms")]
    public List<Shroom> shroomScripts;
    public List<string> shroomType;
    public List<Vector3> shroomPositions;
    //for saving plants on a grid
    public List<bool> shroomsOnGrid;
    public List<int> shroomCellIndeces;
}

[Serializable]
public class ZoneSaver : MonoBehaviour
{
    public SaveStorage mySaveStorage;
    GameObject player;
    ThirdPersonController tpc;
    Zone myZone;
    TerrainGridSystem tgs;

    //for saving and file writing
    public string gameDataFileName;
    public bool canLoad;
    
    //use these to match up plant type with game object prefab -- these never change. set in editor
    [Header("Plant & Shroom Types/Poolers")]
    public List<string> plantTypes;
    public List<ObjectPooler> plantPoolers;

    public List<string> shroomTypes;
    public List<ObjectPooler> shroomPoolers;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        myZone = GetComponent<Zone>();
        tgs = myZone.zoneTGS;
        gameDataFileName = myZone.zoneName + "Storage";
    }

    public void SaveGameData()
    {
        //clear plants lists besides the initial game obj/script storage (these ones change)
        //mySaveStorage.plantPositions.Clear();
        //mySaveStorage.plantAges.Clear();
        ////grid clear
        //mySaveStorage.plantedOnGrid.Clear();
        //mySaveStorage.cellIndeces.Clear();
        ////clear shroom lists 
        //mySaveStorage.shroomPositions.Clear();
        //mySaveStorage.shroomsOnGrid.Clear();
        //mySaveStorage.shroomCellIndeces.Clear();

        //SavePlants();
        //SaveShrooms();

        ////actual save to json functionality
        ////set filepath
        //string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);
        ////save the save storage class into the file 
        //string dataAsJson = JsonUtility.ToJson(mySaveStorage);
        ////write the file
        //File.WriteAllText(filePath, dataAsJson);
        ////adjust playerprefs so we know we save
        //int currentVisits = PlayerPrefs.GetInt(myZone.zoneName + "Visits");
        //PlayerPrefs.SetInt(myZone.zoneName + "Visits", currentVisits + 1);

        //Debug.Log(myZone.zoneName + " saved");
    }

    void SavePlants()
    {
        //set plant position and plant ages
        for (int i = 0; i < mySaveStorage.plantScripts.Count; i++)
        {
            //check if plantScript stored is null
            if (mySaveStorage.plantScripts[i] != null)
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
                mySaveStorage.plantType.RemoveAt(i);
                //increment i down 1
                i--;
            }
        }
    }

    void SaveShrooms()
    {
        //set shroom position 
        for (int i = 0; i < mySaveStorage.shroomScripts.Count; i++)
        {
            //check if plantScript stored is null
            if (mySaveStorage.shroomScripts[i] != null)
            {
                //add plant position
                mySaveStorage.shroomPositions.Add(mySaveStorage.shroomScripts[i].transform.position);

                //is this plant on the grid?
                //on Grid
                if (mySaveStorage.shroomScripts[i].plantedOnGrid)
                {
                    mySaveStorage.shroomsOnGrid.Add(true);
                    mySaveStorage.shroomCellIndeces.Add(mySaveStorage.shroomScripts[i].cellIndex);
                }
                //off grid
                else
                {
                    mySaveStorage.shroomsOnGrid.Add(false);
                    mySaveStorage.shroomCellIndeces.Add(0);
                }
            }
            else
            {
                Debug.Log("shroom was null!");
                //this plant must have been destroyed, remove if from all the lists
                mySaveStorage.shroomScripts.RemoveAt(i);
                mySaveStorage.shroomType.RemoveAt(i);
                //increment i down 1
                i--;
            }
        }
    }

    public void LoadGameData()
    {
        //file to load
        //string filePath = Path.Combine(Application.streamingAssetsPath, gameDataFileName);

        ////check if it exists
        //if (File.Exists(filePath))
        //{
        //    //read it
        //    string dataAsJson = File.ReadAllText(filePath);

        //    //set save storage
        //    mySaveStorage = JsonUtility.FromJson<SaveStorage>(dataAsJson);

        //    //set bool
        //    canLoad = true;
        //}
        //else
        //{
        //    Debug.Log("Cannot load save game data!");
        //    canLoad = false;
        //}

        ////we can load
        //if (canLoad)
        //{
        //    LoadPlants();
        //    LoadShrooms();

        //    Debug.Log("loaded " + myZone.zoneName);
        //}
    }

    void LoadPlants()
    {
        //generate plants based on json data
        for (int i = 0; i < mySaveStorage.plantAges.Count; i++)
        {
            //get index of plant type from plant types 
            int index = plantTypes.IndexOf(mySaveStorage.plantType[i]);
            //grab plont from pooler
            GameObject plont = plantPoolers[index].GrabObject();
            //set plont pos
            Vector3 spawnPos = mySaveStorage.plantPositions[i];
            plont.transform.position = spawnPos;
            //set plont script
            Plont plontScript = plont.GetComponent<Plont>();

            //instead we reset the first 2 lists with this new gameobjects info
            mySaveStorage.plantScripts[i] = plontScript;

            //age the plant the number of timems stored in the age list
            plontScript.Age(mySaveStorage.plantAges[i], 0.1f);

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
    }

    void LoadShrooms()
    {
        //generate plants based on json data
        for (int i = 0; i < mySaveStorage.shroomType.Count; i++)
        {
            //get index of plant type from plant types 
            int index = shroomTypes.IndexOf(mySaveStorage.shroomType[i]);
            //grab plont from pooler
            GameObject shroom = shroomPoolers[index].GrabObject();
            //set plont pos
            Vector3 spawnPos = mySaveStorage.shroomPositions[i];
            shroom.transform.position = spawnPos;
            //set plont script
            Shroom shroomScript = shroom.GetComponent<Shroom>();

            //instead we reset the first 2 lists with this new gameobjects info
            mySaveStorage.shroomScripts[i] = shroomScript;

            //check if the plant is on grid
            if (mySaveStorage.shroomsOnGrid[i])
            {
                //this is on the grid!
                shroomScript.plantedOnGrid = true;

                //set cell & index
                shroomScript.cellIndex = mySaveStorage.shroomCellIndeces[i];

                //planted tag
                tgs.CellSetTag(shroomScript.cellIndex, 1);

                //Sets texture to planted
                tgs.CellToggleRegionSurface(shroomScript.cellIndex, true, shroomScript.plantedTexture);
            }
        }
    }


    //adds a designated plant to the lists 
    public void AddPlant(Plont plant)
    {
        if (!mySaveStorage.plantScripts.Contains(plant))
        {
            mySaveStorage.plantScripts.Add(plant);
            mySaveStorage.plantType.Add(plant.myPlantType.ToString());
            mySaveStorage.plantAges.Add(plant.currentStage);
        }
    }

    //removes a designated plant from the lists 
    public void RemovePlant(Plont plant)
    {
        if (mySaveStorage.plantScripts.Contains(plant))
        {
            int indexToRemove = mySaveStorage.plantScripts.IndexOf(plant);
            mySaveStorage.plantScripts.Remove(plant);
            mySaveStorage.plantType.RemoveAt(indexToRemove);
        }
    }

    //adds a designated shroom to the lists 
    public void AddShroom(Shroom shroom)
    {
        if (!mySaveStorage.shroomScripts.Contains(shroom))
        {
            mySaveStorage.shroomScripts.Add(shroom);
            mySaveStorage.shroomType.Add(shroom.shroomType.ToString());
        }
    }

    //removes a designated shroom from the lists 
    public void RemoveShroom(Shroom shroom)
    {
        if (mySaveStorage.shroomScripts.Contains(shroom))
        {
            int indexToRemove = mySaveStorage.shroomScripts.IndexOf(shroom);
            mySaveStorage.shroomScripts.Remove(shroom);
            mySaveStorage.shroomType.RemoveAt(indexToRemove);
        }
    }
}
