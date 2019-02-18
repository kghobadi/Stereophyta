using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractiveObjectType : MonoBehaviour {


    public InteractiveObject myType;

    public enum InteractiveObject
    {
        PLANT, MACHINE, BOAT, NPC,
    }

    int objectType;

    void Awake()
    {
        if(myType == InteractiveObject.PLANT)
        {
            objectType = 0;
        }
        if (myType == InteractiveObject.MACHINE)
        {
            objectType = 1;
        }
        if (myType == InteractiveObject.BOAT)
        {
            objectType = 2;
        }
        if (myType == InteractiveObject.NPC)
        {
            objectType = 3;
        }
    }


    public void SetInteractive()
    {
        switch (objectType)
        {
            case 0:
                //gameObject.GetComponent<Plont>().UpdateInteractPrompt();
                break;
            case 1:
                //gameObject.GetComponent<Plont>().UpdateInteractPrompt();
                break;
            case 2:
                gameObject.GetComponent<Boat>().UpdateInteractPrompt();
                break;
            case 3:
                //gameObject.GetComponent<Plont>().UpdateInteractPrompt();
                break;
        }
    }

    public void DisableInteractive()
    {
        switch (objectType)
        {
            case 0:
                //gameObject.GetComponent<Plont>().DisableInteractPrompt();
                break;
            case 1:
                //gameObject.GetComponent<Plont>().DisableInteractPrompt();
                break;
            case 2:
                gameObject.GetComponent<Boat>().DisableInteractPrompt();
                break;
            case 3:
                //gameObject.GetComponent<Plont>().DisableInteractPrompt();
                break;
        }
    }
}
