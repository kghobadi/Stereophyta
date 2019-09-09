﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//This script adds audio prefabs to all the trees painted on this Terrain. 
//It parents these objects to the treeAudioParent
public class AudioGeneration : MonoBehaviour
{
    // prefab & parent
    public GameObject audioSourcePrefab, treeAudioParent;
    //list of generated audio source game objects 
    public List<GameObject> treeAudioSources = new List<GameObject>();

    [HideInInspector]
    public Terrain terrain;
    
    void Start()
    {
        terrain = GetComponent<Terrain>();

        //assign the positions by grabbing terrain data and multiplying by terrain size + terrain world pos
        for (int i = 0; i < terrain.terrainData.treeInstances.Length; i++)
        {
            Vector3 genPos = new Vector3(terrain.terrainData.treeInstances[i].position.x * terrain.terrainData.size.x + terrain.transform.position.x,
                terrain.terrainData.treeInstances[i].position.y * terrain.terrainData.size.y + terrain.transform.position.y,
                terrain.terrainData.treeInstances[i].position.z * terrain.terrainData.size.z + terrain.transform.position.z);

            treeAudioSources.Add(Instantiate(audioSourcePrefab, genPos, Quaternion.identity, treeAudioParent.transform));
        }
    }

}