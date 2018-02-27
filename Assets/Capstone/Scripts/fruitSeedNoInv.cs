using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fruitSeedNoInv : Interactable {
 

    public GameObject plants;
    GameObject plantClone;

    public int plantingRadius;
    
    int originalLayer;

    bool inSeedLine, planting, throwing, adjustedRotation, throwToPlant;

    public float fallingSpeed; //how fast seed falls to ground
    public float heightAdjustment; //how high must this plant be instantiated

    float throwCounter, yVelocity, followSpeedOrig, followSpeed;

    Rigidbody fruitBody;
    BoxCollider bCollider;

    int lastLineLength, currentSeedCount, currentSpot, lastSpot;

    Vector3 targetPos, origScale;

    public override void Start () {
        base.Start();
        originalLayer = gameObject.layer;
        fruitBody = GetComponent<Rigidbody>();
        fruitBody.isKinematic = true;
        bCollider = GetComponent<BoxCollider>();
        currentSpot = -1;
        origScale = transform.localScale;
        followSpeedOrig = 15f;
        followSpeed = followSpeedOrig;
    }

    public override void handleClickSuccess()
    {
        if(interactable && !tpc.isHoldingSomething)
        {
            base.handleClickSuccess();
            PickUpSeed();
        }

    }
    
    void Update () {
        //if player is holding another object, this can't be interactable
        currentSeedCount = tpc.seedLine.Count;
        if (!inSeedLine && !playerHolding && !planting && !throwing && tpc.seedLine.Count < tpc.seedMax) //change this to if(tpc.seedLine.Count < seedMax)
        {
            interactable = true;
        }
        else
        {
            currentSpot = tpc.seedLine.IndexOf(gameObject);
            interactable = false;
        }

        if (playerHolding)
        {
            if (Input.GetMouseButton(1))
            {
                throwCounter += Time.deltaTime;

                if(throwCounter > tpc.throwMin && throwCounter < tpc.throwMax)
                {
                    //rotate player arm joints back for charging throw position
                    //seed should rotateAround player head
                    transform.RotateAround(_player.transform.position, _player.transform.right, -1);
                }
                if(throwCounter > tpc.throwMax)
                {
                    playerHolding = false;
                    inSeedLine = false;
                    tpc.seedLine.Remove(gameObject);
                    transform.SetParent(null);
                    yVelocity = tpc.gravity;
                    //gameObject.AddComponent<TrailRenderer>();
                    throwing = true;
                    //rotate player arms back super quick for throw animation
                }
            }

            if (Input.GetMouseButtonUp(1))
            {
                if(throwCounter < tpc.throwMin)
                {
                    bool canPlant = true;
                    Collider[] hitColliders = Physics.OverlapSphere(transform.position, plantingRadius);
                    int i = 0;
                    while (i < hitColliders.Length)
                    {
                        if (hitColliders[i].gameObject.tag == "Plant")
                        {
                            canPlant = false;
                        }
                        i++;
                    }
                    if (canPlant)
                    {
                        planting = true;
                        playerHolding = false;
                        tpc.seedLine.Remove(gameObject);
                        inSeedLine = false;
                        //tpc.blubAnimator.setBool("planting", true);
                    }
                }
                if(throwCounter > tpc.throwMin)
                {
                    playerHolding = false;
                    inSeedLine = false;
                    tpc.seedLine.Remove(gameObject);
                    transform.SetParent(null);
                    throwing = true;
                    //gameObject.AddComponent<TrailRenderer>();
                    yVelocity = tpc.gravity;
                    //rotate player arms back super quick for throw animation
                }
            }
        }
        else if (inSeedLine && !playerHolding && currentSpot!= 0)
        {
            if(currentSpot == 1)
            {
                transform.SetParent(_player.transform);
                transform.localPosition = new Vector3(0, 0, -2);
            }
            else 
            {
                targetPos = tpc.seedLine[currentSpot - 1].transform.position - new Vector3(0, 0, 1);
                followSpeed = followSpeedOrig - (currentSpot /1.5f);
            }
            transform.position = Vector3.MoveTowards(transform.position, targetPos, followSpeed * Time.deltaTime);
            transform.LookAt(new Vector3(targetPos.x, transform.position.y, targetPos.z));
        }

        else if (planting)
        {
            PlantSeed();
        }
        else if (throwing)
        {
            ThrowSeed();
        }
        else
        {
            transform.localEulerAngles += new Vector3(0, 1, 0);
        }


        if (currentSeedCount != lastLineLength && inSeedLine)
        {
            CheckPlaceInLine();
        }

        lastLineLength = tpc.seedLine.Count;
        lastSpot = tpc.seedLine.IndexOf(gameObject);
    }

    public void PickUpSeed()
    {
        tpc.seedLine.Add(gameObject);
        inSeedLine = true;
        if (tpc.seedLine.Count == 1)
        {
            transform.SetParent(rightArmObj.transform);
            transform.localPosition = Vector3.zero;
            transform.localEulerAngles = Vector3.zero;
            gameObject.layer = originalLayer;

            playerHolding = true;
        }
        else
        {
            transform.position = _player.transform.position;
            transform.localEulerAngles = Vector3.zero;
            for (int i = 0; i <= tpc.seedLine.IndexOf(gameObject); i++)
            {
                //transform.localPosition += new Vector3(0, 0, -1);
                transform.localScale *= 0.9f;
            }
        }
    }

    public void CheckPlaceInLine()
    {
        inSeedLine = true;
            if (currentSpot != lastSpot && lastSpot != -1)
            {
                if (currentSpot == 0)
                {
                    transform.SetParent(rightArmObj.transform);
                    transform.localPosition = Vector3.zero;
                    transform.localEulerAngles = Vector3.zero;
                    gameObject.layer = originalLayer;

                    playerHolding = true;
                }
                else
                {
                    if (currentSpot < lastSpot)
                    {
                        transform.localScale *= 1.1f;
                    }
                    if (currentSpot > lastSpot)
                    {
                        transform.localScale *= 0.9f;
                    }
                }
        }

    }

    public void PlantSeed()
    {
        //player cant move while seed falls to ground
        if (!adjustedRotation)
        {
            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            float cameraDif = Camera.main.transform.position.y - _player.transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif));

            Vector3 LookDirection = new Vector3(worldpos.x, _player.transform.position.y, worldpos.z);

            _player.transform.LookAt(LookDirection);

            adjustedRotation = true;
        }
        if (!throwToPlant)
        {
            tpc.enabled = false;
        }
        transform.Translate(0, fallingSpeed * Time.deltaTime, 0);
        if(transform.position.y < tpc.startingHeight) //this will need to check collision with terrain eventually
        {
            //spawn plant
            plantClone = Instantiate(plants, transform.position + new Vector3(0, heightAdjustment, 0), Quaternion.identity);
            plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;
            
            //set bools
            planting = false;
            tpc.enabled = true;
            //tpc.isHoldingSomething = false;

            if(gateScript != null)
            {
                gateScript.interactableObjects.Remove(gameObject);
                gateScript.interactionsNecessaryTotal--;
            }
            //destroy
            Destroy(gameObject);

        }
    }

    public void ThrowSeed()
    {
        if (!adjustedRotation)
        {
            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            float cameraDif = Camera.main.transform.position.y - _player.transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif));

            Vector3 LookDirection = new Vector3(worldpos.x, _player.transform.position.y, worldpos.z);

            _player.transform.LookAt(LookDirection);

            adjustedRotation = true;
        }
        fruitBody.isKinematic = false;
        bCollider.isTrigger = false;
        yVelocity -= tpc.throwStrengthMultiplier * Time.deltaTime;
        fruitBody.AddForce(_player.transform.forward * (tpc.throwStrength + throwCounter * tpc.throwStrengthMultiplier) + new Vector3(0, yVelocity, 0));
        
        //throw seed in an arc, using throwStrength to determine how far it will go
        //when it collides with the ground, bounce a lil up
        //set booleans
        // throwing = false, playerHolding = false, inSeedLine = false;
    }

    //allows player to walk through seed  to pick it up
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && interactable)
        {
            PickUpSeed();
            soundBoard.PlayOneShot(InteractSound);
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if (throwing)
        {
            fruitBody.isKinematic = true;
            bCollider.isTrigger = true;
            throwing = false;

            if (collision.gameObject.tag == "Ground")
            {
                throwToPlant = true;
                planting = true;
                throwing = false;
            }
            else
            {
                throwCounter = 0;
                transform.localScale = origScale;
                transform.position = new Vector3(transform.position.x, tpc.startingHeight + 1, transform.position.z);
                adjustedRotation = false;
            }
        }
        
            
        //Destroy(GetComponent<TrailRenderer>());
    }


}
