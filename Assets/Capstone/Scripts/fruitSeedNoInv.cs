using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fruitSeedNoInv : Interactable {
 

    public GameObject plants;
    GameObject plantClone;

    public int plantingRadius;
    
    
    int originalLayer;

    bool planting, adjustedRotation;

    public float fallingSpeed; //how fast seed falls to ground
    public float heightAdjustment; //how high must this plant be instantiated

    public override void Start () {
        base.Start();
        originalLayer = gameObject.layer;
    }

    public override void handleClickSuccess()
    {
        if(interactable && !tpc.isHoldingSomething)
        {
            base.handleClickSuccess();
            PickUpObject();
        }

    }
    
    void Update () {
        //if player is holding another object, this can't be interactable
        if(tpc.isHoldingSomething == false)
        {
            interactable = true;
        }
        else
        {
            interactable = false;
        }

        if (playerHolding)
        {
            if (Input.GetMouseButtonDown(1) && transform.position.y < 10)
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
                    
                }
            }
        }
        else if (planting)
        {
            PlantSeed();
        }
        else
        {
            transform.localEulerAngles += new Vector3(0, 1, 0);
        }
        
    }

    public void PickUpObject()
    {
        transform.SetParent(rightArmObj.transform);

        transform.localPosition = Vector3.zero;
        transform.localEulerAngles = Vector3.zero;
        transform.localScale = transform.localScale * 2;
        gameObject.layer = originalLayer;

        tpc.isHoldingSomething = true;
        playerHolding = true;
    }

    public void PlantSeed()
    {
        //player cant move while seed falls to ground
        if (!adjustedRotation)
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                _player.transform.LookAt(hit.point);
                adjustedRotation = true;
            }
        }
        tpc.enabled = false;
        transform.Translate(0, fallingSpeed * Time.deltaTime, 0);
        if(transform.position.y < 0) //this will need to check collision with terrain eventually
        {
            //spawn plant
            plantClone = Instantiate(plants, transform.position + new Vector3(0, heightAdjustment, 0), Quaternion.identity);
            plantClone.transform.localScale = new Vector3 (plantClone.transform.localScale.x, plantClone.transform.localScale.y * 3, plantClone.transform.localScale.z);
            //set bools
            planting = false;
            tpc.enabled = true;
            tpc.isHoldingSomething = false;

            gateScript.interactableObjects.Remove(gameObject);
            gateScript.interactionsNecessaryTotal--;
            //destroy
            Destroy(gameObject);

        }
    }

    //allows player to walk through seed  to pick it up
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && interactable)
        {
            PickUpObject();
            soundBoard.PlayOneShot(InteractSound);
        }
    }
}
