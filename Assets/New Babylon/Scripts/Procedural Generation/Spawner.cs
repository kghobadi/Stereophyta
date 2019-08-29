using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {

    public ObjectPooler objectPooler;

    public int generationAmount;
    public GenerationType generationType;
    public enum GenerationType
    {
        RANDOM, SQUARE, PAIRS, GROUPS,
    }

	void Start () {
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

    }

    //generate objects in a square grid pattern 
    void GenerateSquare()
    {

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
