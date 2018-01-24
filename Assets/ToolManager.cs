using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToolManager : MonoBehaviour
{

    public GameObject water, ax;
    public List<GameObject> seeds = new List<GameObject>();
    public int currentObject;
    public int inventoryMax;
    public bool pickedNew;
    public GameObject objectHeld;

    GameObject _player;
    FirstPersonController fpc;

    //Could add seeds to ToolManager and NewPickUpTool pretty easily, just would need to set the seed obj in ToolMan to false whenever you use ones

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        fpc = _player.GetComponent<FirstPersonController>();
        objectHeld = null;
    }

    void Update()
    {

        if (Input.GetKeyDown(KeyCode.Q) && currentObject > 0)
        {
            currentObject--;
            CheckObjects();
        }
        if(Input.GetKeyDown(KeyCode.E) && currentObject < inventoryMax)
        {
            currentObject++;
            CheckObjects();
        }

       


    }

    public void CheckObjects()
    {
        if (currentObject == 0 && ax != null)
        {
            if (objectHeld != ax)
            {
                putAwayEverything();
                equipAx();
            }
            else if (objectHeld == ax)
            {
                putAwayAx();
            }
        }

        else if (currentObject == 1 && water != null)
        {
            if (objectHeld != water)
            {
                putAwayEverything();
                equipWater();

            }
            else if (objectHeld == water)
            {
                putAwayWater();
            }
        }

        else if(currentObject > 1 && seeds.Count > 0)
        {

        }
    }
   

   public void equipWater()
    {
        water.SetActive(true);
        objectHeld = water;
    }
    public void putAwayWater()
    {
        water.SetActive(false);
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
        objectHeld = null;
    }

    public void putAwayEverything()
    {
        if (water != null)
        {
            if (objectHeld == water)
                putAwayWater();
        }
        if(ax != null)
        {
            if(objectHeld == ax)
            {
                putAwayAx();
            }
        }

    }
}
