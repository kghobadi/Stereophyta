using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Rain: MonoBehaviour {
    TerrainGridSystem tgs;

    public ParticleSystem rainEffect;
    
    public Texture2D wateredTexture;

    NewPlantLife currentPlant;

    AudioSource rainSource;
    public AudioClip slightShower, downPour, heavyRain;

    private GameObject bed;
    private Bed sleepScript;
    
    WorldManager worldMan;

    void Start () {

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

        rainSource = GetComponent<AudioSource>();

        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;
        
        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();
        rainEffect = GetComponent<ParticleSystem>();

        rainEffect.Stop();
        rainSource.Stop();
    }
	
	// Update is called once per frame
	void Update () {
       
            if (!worldMan.isRaining)
            {
            //stop rain

            rainEffect.Stop();
            rainSource.Stop();
        }
        
        
	}

    void OnParticleCollision(GameObject hit)
    {
        if(hit.tag == "sequencer")
        {

            currentPlant = hit.GetComponent<NewPlantLife>();
            if (!currentPlant.hasBeenWateredToday)
                {
                    currentPlant.hasBeenWateredToday = true;
                    currentPlant.hasBeenWatered = true;

                    //to change ground texture to water texture
                    Cell tree = tgs.CellGetAtPosition(hit.transform.position, true);
                    int index = currentPlant.cellIndex;
                    tgs.CellToggleRegionSurface(index, true, wateredTexture);

                }
            }
    }

    public void RainType()
    {
        ParticleSystem.MainModule rainModule = rainEffect.main;
        ParticleSystem.EmissionModule rainEmitter = rainEffect.emission;
        switch (worldMan.rainType)
        {
            case 1:
                Debug.Log("light rain");
                rainSource.clip = slightShower;
                rainEmitter.rateOverTime = 15;
                rainModule.simulationSpeed = 2;
                break;
            case 2:
                Debug.Log("downpour");
                rainSource.clip = downPour;
                rainEmitter.rateOverTime = 50;
                rainModule.simulationSpeed = 3;
                break;
            case 3:
                Debug.Log("heavy rain");
                rainSource.clip = heavyRain;
                rainEmitter.rateOverTime = 15;
                rainModule.simulationSpeed = 100;
                break;
        }
        rainEffect.Play();
        rainSource.Play();
    }
    
}
