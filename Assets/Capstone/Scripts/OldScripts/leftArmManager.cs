using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class leftArmManager : MonoBehaviour
{

    public GameObject recorder, shovel, ax;
    AudioListener mainListener;
    public AudioListener recorderListener;
    //public bool holdingSomething;
    public bool pickedNew;
    public GameObject objectHeld;

    // Use this for initialization
    void Start()
    {
        mainListener = Camera.main.gameObject.GetComponent<AudioListener>();

    }

    // Update is called once per frame
    void Update()
    {

        //holdingSomething = checkIfHolding();

        //if (Input.GetKeyDown(KeyCode.Alpha1) && recorder != null)
        //{
        //    if (objectHeld != recorder)// && !holdingSomething)
        //    {
        //        putAwayEverything();
        //        equipRecorder();

        //        //objectHeld = recorder;

        //    }
        //    else if (objectHeld == recorder)
        //    {
        //        putAwayRecorder();
        //        //objectHeld = null;

        //    }
        //}

        //if (Input.GetKeyDown(KeyCode.Alpha2) && shovel != null)
        //{
        //    if (objectHeld != shovel)
        //    {
        //        putAwayEverything();
        //        equipShovel();

        //        //objectHeld = shovel;

        //    }
        //    else if (objectHeld == shovel)
        //    {
        //        putAwayShovel();
        //        //objectHeld = null;
        //    }
        //}
        if (Input.GetKeyDown(KeyCode.Alpha1) && ax != null)
        {
            if (objectHeld != ax)
            {
                putAwayEverything();
                equipAx();

                //objectHeld = shovel;

            }
            else if (objectHeld == ax)
            {
                putAwayAx();
                //objectHeld = null;
            }
        }


    }

    public void equipRecorder()
    {
        recorder.SetActive(true);
        //holdingSomething = true;
        recorderListener.enabled = true;
        mainListener.enabled = false;
        objectHeld = recorder;
    }

    public void putAwayRecorder()
    {
        recorder.SetActive(false);
        //holdingSomething = false;
        recorderListener.enabled = false;
        mainListener.enabled = true;

        objectHeld = null;
    }

    public void equipShovel()
    {
        shovel.SetActive(true);
        //holdingSomething = true;
        objectHeld = shovel;
    }

    public void putAwayShovel()
    {
        shovel.SetActive(false);
        //holdingSomething = false;
        objectHeld = null;
    }

    public void equipAx()
    {
        ax.SetActive(true);
        objectHeld = ax;
    }
    public void putAwayAx()
    {
        ax.SetActive(false);
        //holdingSomething = false;
        objectHeld = null;
    }

    public void putAwayEverything()
    {
        if (shovel != null)
        {
            if (objectHeld == shovel)
                putAwayShovel();
        }
        if (recorder != null)
        {
            if (objectHeld == recorder)
                putAwayRecorder();
        }
        if(ax != null)
        {
            if(objectHeld == ax)
            {
                putAwayAx();
            }
        }

    }





    //bool checkIfHolding()
    //{
    //    if (recorder.activeSelf || shovel.activeSelf)
    //        return true;
    //    else
    //        return false;

    //}
}
