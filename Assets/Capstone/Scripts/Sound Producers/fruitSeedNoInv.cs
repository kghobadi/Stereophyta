using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fruitSeedNoInv : Interactable {

    public bool pickedByPlayer = false;

    AudioSource seedSource;
    public AudioClip plantNote;

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

    Vector3 targetPos, origScale, throwForce;

    ParticleSystem notesPlaying;

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
        seedSource = GetComponent<AudioSource>();

        notesPlaying = GetComponentInChildren<ParticleSystem>();
        notesPlaying.Stop();

        if (pickedByPlayer)
        {
            PickUpSeed();
        }
        
    }

    public override void handleClickSuccess()
    {
        if(interactable && !tpc.isHoldingSomething)
        {
            base.handleClickSuccess();
            PickUpSeed();
        }

    }
    
    public override void Update () {
        base.Update();

        seedSource.outputAudioMixerGroup = tpc.plantingGroup;

        //if player is holding another object, this can't be interactable
        currentSeedCount = tpc.seedLine.Count;
        if (!inSeedLine && !playerHolding && !planting && !throwing /*&& tpc.seedLine.Count < tpc.seedMax*/) //change this to if(tpc.seedLine.Count < seedMax)
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
            if (Input.GetMouseButtonDown(1) && tpc.canUseSeed)
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
                if (canPlant && tpc.canUseSeed)
                {
                    planting = true;
                    playerHolding = false;
                    tpc.seedLine.Remove(gameObject);
                    inSeedLine = false;
                    //tpc.blubAnimator.setBool("planting", true);
                }
                //throwCounter += Time.deltaTime;

                //if(throwCounter > tpc.throwMin && throwCounter < tpc.throwMax)
                //{
                //    //rotate player arm joints back for charging throw position
                //    //seed should rotateAround player head
                //    transform.RotateAround(_player.transform.position, _player.transform.right, -1);
                //}
                //if(throwCounter > tpc.throwMax && tpc.canUseSeed)
                //{
                //    playerHolding = false;
                //    inSeedLine = false;
                //    tpc.seedLine.Remove(gameObject);
                //    transform.SetParent(null);
                //    yVelocity = tpc.gravity;
                //    //gameObject.AddComponent<TrailRenderer>();
                //    throwing = true;
                //    //rotate player arms back super quick for throw animation
                //}
            }

            //if (Input.GetMouseButtonUp(1))
            //{
            //    if (throwCounter < tpc.throwMin)
            //    {

            //    }
            //    if (throwCounter > tpc.throwMin && tpc.canUseSeed)
            //    {
            //        playerHolding = false;
            //        inSeedLine = false;
            //        tpc.seedLine.Remove(gameObject);
            //        transform.SetParent(null);
            //        throwing = true;
            //        //gameObject.AddComponent<TrailRenderer>();
            //        yVelocity = tpc.gravity;
            //        //rotate player arms back super quick for throw animation
            //    }
            //}
        }
        else if (inSeedLine && !playerHolding && currentSpot!= 0)
        {
            if(currentSpot == 1)
            {
                if (seedSource.isPlaying)
                {
                    targetPos = _player.transform.localPosition - new Vector3(0, 0, 1) + new Vector3(0, 1, 0);
                    notesPlaying.Emit(1);
                }
                else
                {
                    targetPos = _player.transform.localPosition - new Vector3(0, 0, 1);
                }
                followSpeed = followSpeedOrig;
                transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            }
            else
            {
                if (seedSource.isPlaying)
                {
                    notesPlaying.Emit(1);
                    targetPos = tpc.seedLine[currentSpot - 1].transform.position - new Vector3(0, 0, 1) + new Vector3(0, 1 - (currentSpot / 10), 0);
                } 
                else
                {
                    targetPos = tpc.seedLine[currentSpot - 1].transform.position - new Vector3(0, 0, 1);
                }
                followSpeed = followSpeedOrig - (currentSpot /1.5f);
                transform.LookAt(new Vector3(targetPos.x, transform.position.y, targetPos.z));
            }
            transform.position = Vector3.MoveTowards(transform.position, targetPos, followSpeed * Time.deltaTime);
            

            //childed approach, almost works, but everything becomes rigid and auto moves 
            //if (currentSpot == 1)
            //{
            //    transform.SetParent(_player.transform);
            //    targetPos = new Vector3(0, 0, -2);
            //    followSpeed = followSpeedOrig;
            //    transform.LookAt(new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z));
            //}
            //else
            //{
            //    transform.SetParent(tpc.seedLine[currentSpot - 1].transform);
            //    targetPos = new Vector3(0, 0, -1);
            //    followSpeed = followSpeedOrig - (currentSpot / 1.5f);
            //    transform.LookAt(new Vector3(transform.parent.position.x, transform.position.y, transform.parent.position.z));
            //}
            //transform.localPosition = Vector3.MoveTowards(transform.localPosition, targetPos, followSpeed * Time.deltaTime);
        }

        else if (planting)
        {
            PlantSeed();
            
        }
        //else if (throwing)
        //{
        //    ThrowSeed();
        //}
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
        tpc.seedLine.Add(this.gameObject);
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
        //yield return new WaitForSeconds(0.5f);

    }

    public void PlantSeed()
    {
        tpc.canUseSeed = false;
        //player cant move while seed falls to ground
        if (!adjustedRotation)
        {
            float mouseX = Input.mousePosition.x;

            float mouseY = Input.mousePosition.y;

            //float cameraDif = Camera.main.transform.position.y - _player.transform.position.y;

            Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, 30));

            Vector3 LookDirection = new Vector3(worldpos.x, _player.transform.position.y, worldpos.z);

            _player.transform.LookAt(LookDirection);

            adjustedRotation = true;

            fruitBody.isKinematic = false;

            bCollider.isTrigger = false;
        }
        
        tpc.enabled = false;
        
        transform.Translate(0, fallingSpeed * Time.deltaTime, 0);
        
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
        if (planting)
        {
            if(collision.gameObject.tag == "Ground")
            {
                //spawn plant
                plantClone = Instantiate(plants, transform.position + new Vector3(0, heightAdjustment,0), Quaternion.identity);
                plantClone.GetComponent<AudioSource>().outputAudioMixerGroup = tpc.plantingGroup;

                //set bools
                planting = false;
                tpc.enabled = true;
                tpc.canUseSeed = true;

                //destroy
                Destroy(gameObject);
            }
            
        }
    }

        public void PlaySound()
    {
        if (!seedSource.isPlaying)
        {
            seedSource.PlayOneShot(plantNote);
        }
    }


}
