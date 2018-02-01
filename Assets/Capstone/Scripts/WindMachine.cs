using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : Interactable {

    public GameObject wind;
    GameObject windClone;

    public float timerTotal;
    float timer;
    public float windSpeed;
    public float distanceToDestroy;
    
    public AudioClip selectLower;


    int originalLayer;

    public override void Start () {
        base.Start();
        timer = timerTotal;
        windClone = Instantiate(wind, transform.position, Quaternion.identity, transform);
        interactable = true;


        originalLayer = gameObject.layer;
    }
	
	void Update () {

        if (playerHolding)
        {
            if (Input.GetMouseButtonDown(1))
            {
                DropObject();
            }
        }
        timer -= Time.deltaTime;
        if(timer < 0)
        {
            windClone = Instantiate(wind, transform.position, new Quaternion (0,0,0,0) , transform);
            timer = timerTotal;

            //grab timerTotal from RhythmLever
        }
    }

    public override void handleClickSuccess()
    {
        if(interactable && !tpc.isHoldingSomething)
        {
            base.handleClickSuccess();
            PickUpObject();
        }
    }



    public void PickUpObject()
    {
        transform.SetParent(rightArmObj.transform);

        transform.localPosition = Vector3.zero;
        transform.localEulerAngles = Vector3.zero;
        gameObject.layer = originalLayer;

        tpc.isHoldingSomething = true;
        playerHolding = true;
        interactable = false;
    }

    public void DropObject()
    {
        transform.localPosition -= new Vector3(0, 3, 0);
        transform.SetParent(null);

        tpc.isHoldingSomething = false;
        playerHolding = false;
        interactable = true;
    }
}
