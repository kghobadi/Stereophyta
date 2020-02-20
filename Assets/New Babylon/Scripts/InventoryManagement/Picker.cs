using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using InControl;

public class Picker : MonoBehaviour {

    //dictionary to sort nearby audio sources by distance 
    [SerializeField]
    public Dictionary<Pickable, float> pickableObjects = new Dictionary<Pickable, float>();
    //listener range
    public float pickingRadius;
    //closest
    public Pickable closestPickableObj;

    //ref to inventory 
    Inventory inventory;
    Vector3 currentPos, lastPos;
    InteractPrompt interactPrompt;

    void Awake()
    {
        inventory = FindObjectOfType<Inventory>();
        interactPrompt = GetComponent<InteractPrompt>();
    }

    void Update()
    {
        currentPos = transform.position;

        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //find pickable objects if i have moved 
        if (lastPos != currentPos)
            FindNearestPickableObject();

        //set interact prompt properly 
        //we have a pickable obj!
        if (closestPickableObj != null)
        {
            //interact prompt not showing 
            if (interactPrompt.pickUpText.color.a < 1)
            {
                //show 
                interactPrompt.pickUpMessage = closestPickableObj.pickUpText;
                interactPrompt.ShowPickupPrompt();
            }

            //move interact prompt
            interactPrompt.myWorldCanvas.transform.position = closestPickableObj.transform.position + new Vector3(0, closestPickableObj.promptOffset, 0);

        }
        //no pickable obj 
        else
        {
            //turn off prompt 
            if (interactPrompt.pickUpText.color.a > 0)
            {
                interactPrompt.DeactivatePrompt();
            }
        }

        //pick item 
        if ((inputDevice.DPadRight.WasPressed || Input.GetKeyDown(KeyCode.E)))
        {
            if (closestPickableObj != null)
                closestPickableObj.Pick();
        }

        lastPos = transform.position;
        
    }

    //this function shifts all audio source priorities dynamically
    public void FindNearestPickableObject()
    {
        //empty dictionary and audioObjects
        pickableObjects.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, pickingRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            Debug.Log("found something");
            GameObject pickableObj = hitColliders[i].gameObject;

            //check to see if obj is pickable 
            if (pickableObj.GetComponent<Pickable>() != null)
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                //add to audiosource and distance to dictionary
                pickableObjects.Add(pickableObj.GetComponent<Pickable>(), distanceAway);
                Debug.Log("added " + pickableObj.name);
            }
            i++;
        }

        Pickable obj = null;
        float lowestDist = pickingRadius;
        //sort the dictionary by order of ascending distance away
        foreach (KeyValuePair<Pickable, float> item in pickableObjects.OrderBy(key => key.Value))
        {
            //check if shortest 
            if (item.Value < lowestDist)
            {
                lowestDist = item.Value;
                obj = item.Key;
            }
               
        }

        //assign pickable to obj
        closestPickableObj = obj;
    }
}



