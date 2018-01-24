using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Fruit : Interactable {
    public bool feedAnimal;
    public AudioClip animalEats;
    public bool hasFallen;
    public bool onGround;

    public GameObject seed;
    public GameObject seedClone;

    public float fullyGrownXScale;
    float fullyGrownYScale;
    float fullyGrownZScale;
    public float growthMetric;

    Rigidbody rb;
    public int decompositionDaysMin;
    public int decompositionDaysMax;
    int decompositionDay;

    inventoryMan inventMan;

    private GameObject sun;
    private Sun sunScript;

    TerrainGridSystem tgs;
    public float hungerValue;


    public override void Start()
    {
        base.Start();

        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        
        //randomizes fullyGrown
        float randomAdd = Random.Range(-0.1f, 0.1f);
        fullyGrownXScale += randomAdd;

        //Random decompDay
        decompositionDay = Random.Range(decompositionDaysMin, decompositionDaysMax);

        //Inventory Manager reference
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = false;
        inventMan.interactable = false;
        interactable = false;

        gameObject.name = "fruit" + seed.name;

        //Grabs rigidbody and sets to kinematic
        rb = GetComponent<Rigidbody>();
        rb.isKinematic = true;

        //TerrainGridSystem ref
        tgs = TerrainGridSystem.instance;
        
    }

    void Update()
    {
        //Checks if it has been picked up and equipped
        if (inventMan.underPlayerControl)
        {
            onGround = false;
            //should turn On rb when drop from Invent
            //If player clicks on animal. May need to restructure this so that it's a raycast as well, we'll see.
            if (feedAnimal)
            {
                inventMan.underPlayerControl = false;

                //NEED TO find a way to set parent to animal, carry it around a while, then poop it out (set active)
                seedClone = Instantiate(seed, transform.position, Quaternion.identity);
                seedClone.transform.position = seedClone.transform.position + new Vector3(-0.5f, 0, -0.5f);

                Destroy(gameObject);
                soundBoard.PlayOneShot(animalEats); //THIS SHOULD BE MUSICAL AND ON CLOCK
            }
        }
        else {
            //always rotates in worldspace
            transform.Rotate(0, 1, 0 * Time.deltaTime);

            //Checks if it has not fallen yet, and grows fruit
            if (!onGround && !hasFallen)
                FruitGrowth();

            //When it has fallen, we turn on rigidbody
            if (hasFallen && !onGround)
            {
                rb.isKinematic = false;

            }
            
            //when it has hit the ground, we want it to be interactable
            if (onGround)
            {
                inventMan.interactable = true;
                interactable = true;
            }

        }
    }

    //this function will grow Fruit by local scale in update at growthMetric until it reaches fullyGrownXScale
    void FruitGrowth()
    {
        
            if (transform.localScale.x < fullyGrownXScale)
            {
                transform.localScale *= (growthMetric);
            }
            else if (transform.localScale.x > fullyGrownXScale)
            {
                hasFallen = true;
            //startScale = transform.localScale;
            //inventMan.startScale = transform.localScale;
        }

    }

    //Checks if fruit has collided with ground
    void OnCollisionEnter(Collision collision)
    {
        rb.isKinematic = true;
        if(collision.gameObject.tag == "Ground")
        {
            onGround = true;
            
            //Checks what ground tile this is using collision point
            Vector3 collisionPoint = collision.contacts[0].point;
            Cell groundTile = tgs.CellGetAtPosition(collisionPoint,true);
            int cellIndex = tgs.CellGetIndex(groundTile);

            //Starts Decompose using ground tile
            StartCoroutine(Decompose(groundTile, cellIndex, tgs.CellGetTag(cellIndex)));
            

        }

       
    }

    //Causes fruit to decay and either plant a seed on a fertile tile, or leave behind a seed for pick up
    IEnumerator Decompose(Cell newTile, int index, int tagIndex)
    {
        //for loops waits given # of days
        for(int i = 0; i < decompositionDay; i++)
        {
           // yield return new WaitUntil(() => sunScript.dayPassed == true);

        }
        if (tagIndex == 1)
        {
            seedClone = Instantiate(seed, transform.position, Quaternion.identity);
            //may need to alter seed Y pos here
            seedClone.transform.position = new Vector3(tgs.CellGetPosition(index).x, transform.position.y, tgs.CellGetPosition(index).z);
            yield return new WaitForSeconds(0.5f);

            //Sets seed counter to 0, skipping animation, and plants seed on tile
            seedClone.GetComponent<Seed>().counter = 0;
            seedClone.GetComponent<Seed>().PlantSeed(newTile, index);

            //Destroys fruit
            Destroy(gameObject);
        }
        else
        {
            //Spawns seed on normal tile
            seedClone = Instantiate(seed, transform.position, Quaternion.identity);
            Destroy(gameObject);
        }

    }

}
