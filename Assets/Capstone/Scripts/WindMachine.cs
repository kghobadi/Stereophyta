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

    public bool transitioned, transitionBack;
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
            if (Input.GetKeyDown(KeyCode.Space))
            {
                DropObject();
            }
        }
        timer -= Time.deltaTime;
        if(timer < 0)
        {
            windClone = Instantiate(wind, transform.position, new Quaternion (0,0,0,0) , transform);
            timer = timerTotal;
        }

        if (transitioned)
        {
            transform.localEulerAngles += new Vector3(0, 90, 0);
            transitioned = false;
        }
        if (transitionBack)
        {
            transform.localEulerAngles += new Vector3(0, -90, 0);
            transitionBack = false;
        }

        if(Vector3.Distance(_player.transform.position, transform.position) < withinDistanceActive && interactable)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                PickUpObject();
            }
        }
	}

    public override void handleClickSuccess()
    {
        if(!tpc.isHoldingSomething && !playerHolding)
        {
            base.handleClickSuccess();
            transitioned = true;
        }
    }

    public override void OnMouseOver()
    {
        base.OnMouseOver();
        if (!tpc.isHoldingSomething && !playerHolding)
        {
            if (Input.GetMouseButtonDown(1))
            {
                transitionBack = true;
                soundBoard.PlayOneShot(selectLower);
            }
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
        transform.position -= new Vector3(0, -3, 0);
        transform.SetParent(null);

        tpc.isHoldingSomething = false;
        playerHolding = false;
        interactable = true;
    }
}
