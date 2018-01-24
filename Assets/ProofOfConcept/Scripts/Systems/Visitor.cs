using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Visitor : MonoBehaviour
{
    Transform player;

    public float moveSpeed;
    Vector3 chosenPosition;
    int waitingDays;
    int waitDayCounter;

    public bool isCatHead;

    public int decider;

    Sun sunScript;
    Bed bedScript;
    WorldManager worldMan;
    public bool enteringGarden, listening, thanking, leaving;

    GardenCheck gardenChecker;
    Animator animater;


    public SpriteRenderer heart;
    public Sprite circleSprite, squareSprite, triSprite;
    public Color heartColor;

    public ParticleSystemRenderer particleHumanRend;
    public Material circleSkin, squareSkin, triSkin;


    public enum LookingForPlant
    {
        CIRCLE, SQUARE, TRIANGLE
    }
    public LookingForPlant targetPlants;
    public int desiredPlantAmount;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        sunScript = GameObject.FindGameObjectWithTag("Sun").GetComponent<Sun>();
        bedScript = GameObject.FindGameObjectWithTag("Bed").GetComponent<Bed>();
        gardenChecker = GameObject.FindGameObjectWithTag("GardenChecker").GetComponent<GardenCheck>();

        animater = GetComponent<Animator>();


        chosenPosition = worldMan.gardenViewingPositions[decider].position;

        transform.LookAt(worldMan.gardenCenter.position);
        enteringGarden = true;

        Random.InitState(System.DateTime.Now.Millisecond);

        int randy = Random.Range(0, 3);
        if (randy == 0)
            targetPlants = LookingForPlant.CIRCLE;
        if (randy == 1)
            targetPlants = LookingForPlant.SQUARE;
        if (randy == 2)
            targetPlants = LookingForPlant.TRIANGLE;

        desiredPlantAmount += Random.Range(0, 3);

        if (targetPlants == LookingForPlant.CIRCLE)
        {
            particleHumanRend.material = circleSkin;
            heart.sprite = circleSprite;

        }

        if (targetPlants == LookingForPlant.SQUARE)
        {
            particleHumanRend.material = squareSkin;
            heart.sprite = squareSprite;

        }

        if (targetPlants == LookingForPlant.TRIANGLE)
        {
            particleHumanRend.material = triSkin;
            heart.sprite = triSprite;

        }

        waitingDays = Random.Range(2, 4);




    }

    void Update()
    {
        if (bedScript.dayPassed)
        {
            waitDayCounter++;
        }
        if (enteringGarden)
        {
            //play walking animation
            animater.SetBool("walking", true);
            animater.SetBool("bowing", false);
            if (transform.position != chosenPosition)
            {
                FindPos(chosenPosition);
            }
            else
            {
                decider = Random.Range(0, worldMan.visitorSpawns.Length);
                if (isCatHead)
                {
                    chosenPosition = worldMan.visitorSpawns[decider].position - new Vector3(0, 6, 0);
                }
                else
                {
                    chosenPosition = worldMan.visitorSpawns[decider].position;
                }
                enteringGarden = false;
                listening = true;
            }
        }
        if (listening)
        {
            transform.LookAt(worldMan.gardenCenter.position);
            //play listening animation MAKE LISTENING ANIMATION
            animater.SetBool("walking", false);
            animater.speed = 0;
            //animater.SetBool("bowing", true);




            if (waitDayCounter >= 1)
            {

                gardenChecker.CheckGarden();
                //look at target plants 


                if (targetPlants == LookingForPlant.CIRCLE)
                {
                    if (gardenChecker.circleCounter >= desiredPlantAmount)
                    {
                        Debug.Log("I HAVE FOUND THE MEANING");
                        thanking = true;
                        //animation change, person 'recovers'
                    }
                    else
                    {
                        leaving = true;
                        Debug.Log("WHERE ARE MY PLANTS?");
                    }
                }
                if (targetPlants == LookingForPlant.TRIANGLE)
                {
                    if (gardenChecker.triangleCounter >= desiredPlantAmount)
                    {
                        Debug.Log("I HAVE FOUND THE MEANING");
                        thanking = true;
                        listening = false;
                        //animation change, person 'recovers'
                    }
                    else
                    {
                        leaving = true;
                        listening = false;
                        Debug.Log("WHERE ARE MY PLANTS?");
                    }
                }
                if (targetPlants == LookingForPlant.SQUARE)
                {
                    if (gardenChecker.squareCounter >= desiredPlantAmount)
                    {
                        Debug.Log("I HAVE FOUND THE MEANING");
                        thanking = true;
                        listening = false;
                        //animation change, person 'recovers'
                    }
                    else
                    {
                        leaving = true;
                        listening = false;
                        Debug.Log("WHERE ARE MY PLANTS?");
                    }
                }
            }





        }

        if (thanking)
        {

            if (animater.speed != 1)
                animater.speed = 1;

            animater.SetBool("bowing", true);

            if (sunScript.isMidday || waitingDays == waitDayCounter)
            {
                thanking = false;
                leaving = true;
            }
        }

        if (leaving)
        {
            transform.LookAt(chosenPosition);

            if (animater.speed != 1)
                animater.speed = 1;
            //play walking animation
            animater.SetBool("walking", true);
            animater.SetBool("bowing", false);
            if (transform.position != chosenPosition)
            {
                FindPos(chosenPosition);
            }
            else
            {
                Destroy(gameObject);
            }
        }

        fadeInHeart();
    }

    void FindPos(Vector3 position)
    {
        if (!isCatHead)
            transform.position = Vector3.MoveTowards(transform.position, position, moveSpeed * Time.deltaTime);
        else
            transform.position = Vector3.MoveTowards(transform.position, position - (Vector3.down * 2), moveSpeed * Time.deltaTime);
    }

    void fadeInHeart()
    {

        float dist = Vector3.Distance(player.position, heart.transform.position);

        heart.color = heartColor - new Color(0, 0, 0, dist * .1f);

    }
}
