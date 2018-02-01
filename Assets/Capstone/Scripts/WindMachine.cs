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
        Debug.Log(playerHolding);
        Debug.Log(interactable);

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

        if (transitionBack)
        {
            transform.localEulerAngles += new Vector3(0, 1, 0);
        }
        if (transitioned)
        {
            transform.localEulerAngles += new Vector3(0, -1, 0);
        }

        if(Vector3.Distance(_player.transform.position, transform.position) < withinDistanceActive && interactable)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                PickUpObject();
            }
        }

        if (Input.GetMouseButtonUp(0))
        {
            transitioned = false;
        }

        if (Input.GetMouseButtonUp(1))
        {
            transitionBack = false;
        }
    }

    public override void OnMouseOver()
    {
        if (!tpc.isHoldingSomething && !playerHolding)
        {
            base.OnMouseOver();
            if (Input.GetMouseButton(0))
            {
                transitioned = true;
                if(!soundBoard.isPlaying)
                    soundBoard.PlayOneShot(InteractSound);
            }
            if (Input.GetMouseButton(1))
            {
                transitionBack = true;
                if (!soundBoard.isPlaying)
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
