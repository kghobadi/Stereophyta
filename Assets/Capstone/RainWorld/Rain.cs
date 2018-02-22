using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rain : MonoBehaviour
{
    //TerrainGridSystem tgs;

    ParticleSystem rainEffect;

    //public Texture2D wateredTexture;

    //NewPlantLife currentPlant;

    //AudioSource rainSource;
    //public AudioClip slightShower, downPour, heavyRain;

    private GameObject bed;

    //UnityEngine.XR.WSA.WorldManager worldMan;

    float timer = 0, randomRotateDirection = 1;
    public float lifeTime, moveSpeed;
    float remainder;

    Transform cloud;

    void Start()
    {
        rainEffect = GetComponent<ParticleSystem>();

        // worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<UnityEngine.XR.WSA.WorldManager>();

        // rainSource = GetComponent<AudioSource>();

        //TerrainGridSystem reference
        //tgs = TerrainGridSystem.instance;

        bed = GameObject.FindGameObjectWithTag("Bed");

        rainEffect = GetComponent<ParticleSystem>();

        // rainEffect.Stop();
        //rainSource.Stop();

        lifeTime = Random.Range(40, 100);
        moveSpeed = Random.Range(2.5f, 6.0f);


        cloud = transform.GetChild(0);
        cloud.eulerAngles = new Vector3(0, Random.Range(0, 360), 0);
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;

        if (timer > lifeTime)
            Destroy(this.gameObject);

        transform.Translate(Vector3.forward * Time.deltaTime * moveSpeed);

        remainder = timer % 8;
        if (remainder < 0.2f)
        {
            //            print("KAS SUCKS");
            float randy = Random.Range(0, 100);
            if (randy > 50)
                randomRotateDirection = Random.Range(0, 2.0f);
            else
                randomRotateDirection = Random.Range(-2.0f, 0);


        }

        transform.Rotate(Vector3.up * Time.deltaTime * moveSpeed * 0.3f * randomRotateDirection);

        if ((randomRotateDirection > 0 && transform.localScale.x < 2) || (randomRotateDirection < 0 && transform.localScale.x > 0.4f))
            transform.localScale += Vector3.one * Time.deltaTime * moveSpeed * 0.0025f * randomRotateDirection;

        //if (!worldMan.isRaining)
        //{
        //    //stop rain

        //    rainEffect.Stop();
        //    rainSource.Stop();
        //}


    }


    //SHOULD MAYBE DO THIS WITH A RAYCAST INSTEAD? CHECKING EACH PARTICLE'S COLLISION MIGHT BE TOO EXPENSIVE
    void OnParticleCollision(GameObject hit)
    {
        if (hit.tag == "Plant")
        {

            //currentPlant = hit.GetComponent<NewPlantLife>();
            //if (!currentPlant.hasBeenWateredToday)
            //    {
            //        currentPlant.hasBeenWateredToday = true;
            //        currentPlant.hasBeenWatered = true;

            //        //to change ground texture to water texture
            //        Cell tree = tgs.CellGetAtPosition(hit.transform.position, true);
            //        int index = currentPlant.cellIndex;
            //        tgs.CellToggleRegionSurface(index, true, wateredTexture);

            //    }
        }
    }

    public void RainType()
    {
        ParticleSystem.MainModule rainModule = rainEffect.main;
        ParticleSystem.EmissionModule rainEmitter = rainEffect.emission;
        //switch (worldMan.rainType)
        //{
        //    case 1:
        //        Debug.Log("light rain");
        //        rainSource.clip = slightShower;
        //        rainEmitter.rateOverTime = 15;
        //        rainModule.simulationSpeed = 2;
        //        break;
        //    case 2:
        //        Debug.Log("downpour");
        //        rainSource.clip = downPour;
        //        rainEmitter.rateOverTime = 50;
        //        rainModule.simulationSpeed = 3;
        //        break;
        //    case 3:
        //        Debug.Log("heavy rain");
        //        rainSource.clip = heavyRain;
        //        rainEmitter.rateOverTime = 15;
        //        rainModule.simulationSpeed = 100;
        //        break;
        //}
        rainEffect.Play();
        //rainSource.Play();
    }

}
