using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindMachine : Interactable {

    public GameObject wind;
    GameObject windClone;
    
    public float windSpeed;
    public float distanceToDestroy;
    public int timeScale;

    bool showRhythm;
    public AudioClip selectLower;
    Transform windMachineModel;

    int originalLayer;

    private void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;
    }

    private void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    void OnThirtySecond(BeatArgs e)
    {
        switch(timeScale)
        {
            case 0:
                if (e.TickMask[TickValue.Measure])
            {
                // rhythm creation / beat visual
                showRhythm = true;
            }
            break;
            case 1:
                if (e.TickMask[TickValue.Quarter])
            {
                // rhythm creation / beat visual
                showRhythm = true;
            }
            break;
            case 2:
                if (e.TickMask[TickValue.Eighth])
            {
                // rhythm creation / beat visual
                showRhythm = true;
            }
            break;
            case 3:
                if (e.TickMask[TickValue.Sixteenth])
            {
                // rhythm creation / beat visual
                showRhythm = true;
            }
            break;
            case 4:
                if (e.TickMask[TickValue.ThirtySecond])
            {
                // rhythm creation / beat visual
                showRhythm = true;
            }
            break;
        }

    }

    public override void Start () {
        base.Start();

        interactable = true;
        windMachineModel = transform.GetChild(0);

        originalLayer = gameObject.layer;
        windClone = Instantiate(wind, transform.position, Quaternion.Euler(windMachineModel.eulerAngles + new Vector3(0, 90, 0)), windMachineModel);
    }
	
	void Update () {

        if (playerHolding)
        {
            if (Input.GetMouseButtonDown(1))
            {
                DropObject();
            }
        }
        if (Vector3.Distance(_player.transform.position, transform.position) < 100)
        {
            if (showRhythm)
            {
                //instantiate wind, show particles, etc.
                windClone = Instantiate(wind, transform.position, Quaternion.Euler(windMachineModel.eulerAngles + new Vector3(0, 90, 0)), windMachineModel);
                showRhythm = false;
            }
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
