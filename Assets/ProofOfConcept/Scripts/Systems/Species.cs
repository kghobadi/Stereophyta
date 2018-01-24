using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Template for each Specie

public class Species : MonoBehaviour
{
    public AnimalSpecies animalSpecieName;
    public PlantSpecies plantSpecieName;
    public Dictionary<string, AudioClip> audioSchemaAnimal;
    public Dictionary<string, AudioClip> audioSchemaPlant;

    string keyCodeString;

    public void Awake()
    {
        audioSchemaAnimal = new Dictionary<string, AudioClip>(){
            { "baby", (AudioClip) Resources.Load("Audio/" + animalSpecieName.ToString() + "/clip1")}, 
            { "adult", (AudioClip) Resources.Load("Audio/" + animalSpecieName.ToString() + "/clip2")}, 
            { "old", (AudioClip) Resources.Load("Audio/" + animalSpecieName.ToString() + "/clip3")}, 
            { "dead", (AudioClip) Resources.Load("Audio/" + animalSpecieName.ToString() + "/clip4")}, 
        };

        audioSchemaPlant = new Dictionary<string, AudioClip>(){
            { "sapling", (AudioClip) Resources.Load("Audio/" + plantSpecieName.ToString() + "/clip1")},
            { "young", (AudioClip) Resources.Load("Audio/" + plantSpecieName.ToString() + "/clip1")},
            { "adult", (AudioClip) Resources.Load("Audio/" + plantSpecieName.ToString() + "/clip2")}, 
            { "old", (AudioClip) Resources.Load("Audio/" + plantSpecieName.ToString() + "/clip3")}, 
            { "dead", (AudioClip) Resources.Load("Audio/" + plantSpecieName.ToString() + "/clip4")}, 
        };


    }

    //Enum list of Species names 
    public enum AnimalSpecies
    {
        FROG, DOG, DONKEY, ROBIN,
    }

    public enum PlantSpecies
    {
        OAK, WALNUT, APPLE,
    }


 


}

