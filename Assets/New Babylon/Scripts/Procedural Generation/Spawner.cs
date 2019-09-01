using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {
    [Header("Spawner Objects & Type")]
    public ObjectPooler objectPooler;
    public GameObject[] generatedObjs;
    public GenerationType generationType;
    public enum GenerationType
    {
        RANDOM, SQUARE, PAIRS, GROUPS,
    }

    //for RANDOM
    [Header("RANDOM")]
    public int generationAmount;
    public float generationRadius;

    //for SQUARE
    [Header("SQUARE")]
    public int gridSizeX;
    public int gridSizeY;
    public float distBetweenX, distBetweenY;
    
	void Start () {
        generatedObjs = new GameObject[generationAmount];
        GenerateObjects();
	}
	
    //switch statement tells us which way to generate
    public void GenerateObjects()
    {
        switch (generationType)
        {
            case GenerationType.RANDOM:
                GenerateRandom();
                break;
            case GenerationType.SQUARE:
                GenerateSquare();
                break;
            case GenerationType.PAIRS:
                GeneratePairs();
                break;
            case GenerationType.GROUPS:
                GenerateGroups();
                break;
        }
    }

    //generate objects in a random unit circle 
    void GenerateRandom()
    {
        for(int i = 0; i < generationAmount;i++)
        {
            Vector2 xz = Random.insideUnitCircle * generationRadius;

            Vector3 spawnPos = transform.position + new Vector3(xz.x, 0, xz.y);

            generatedObjs[i] = objectPooler.GrabObject();

            generatedObjs[i].transform.position = spawnPos;
        }
    }

    //generate objects in a square grid pattern 
    void GenerateSquare()
    {
        //set to size of the grid we will be making 
        generatedObjs = new GameObject[(gridSizeX  + 1) * (gridSizeY  + 1)];

        for (int i = 0, y = 0; y <= gridSizeY; y++)
        {
            for (int x = 0; x <= gridSizeX; x++, i++)
            {
                generatedObjs[i] = objectPooler.GrabObject();

                Vector3 spawnPos = new Vector3(x * distBetweenX, transform.position.y, y * distBetweenY) + transform.position;

                generatedObjs[i].transform.position = spawnPos;
            }
        }
    }

    //generate objects in semi-random pairs 
    void GeneratePairs()
    {

    }

    //generate objects in semi-random groups 
    void GenerateGroups()
    {

    }
}
