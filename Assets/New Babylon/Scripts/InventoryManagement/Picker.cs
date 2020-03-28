using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using InControl;

public class Picker : MonoBehaviour {
    //ref to inventory 
    Inventory inventory;
    Vector3 currentPos, lastPos;
    InteractPrompt interactPrompt;

    //dictionary to sort nearby audio sources by distance 
    [SerializeField]
    public Dictionary<Pickable, float> pickableObjects = new Dictionary<Pickable, float>();
    //listener range
    public float pickingRadius;
    //closest
    public Pickable closestPickableObj;

    public Animator myAnimator;
    //for player cloak.
    public bool player;
    ThirdPersonController tpc;

    //pick reset 
    public bool canPick = true;
    public float resetTime = 0.75f;
    float resetTimer = 0f;
    
    void Awake()
    {
        inventory = FindObjectOfType<Inventory>();
        interactPrompt = GetComponent<InteractPrompt>();
        if (player)
            tpc = GetComponent<ThirdPersonController>();
    }

    void Update()
    {
        SetPickablePrompt();

        PickInput();

        PickReset();
    }

    void SetPickablePrompt()
    {
        currentPos = transform.position;

        //find pickable objects if i have moved 
        if (lastPos != currentPos)
            FindNearestPickableObject();

        //set interact prompt properly 
        //we have a pickable obj!
        if (closestPickableObj != null)
        {
            //has active items
            if(closestPickableObj.activeItems > 0)
            {
                //interact prompt not showing 
                if (interactPrompt.pickUpText.color.a < 1)
                {
                    //show 
                    interactPrompt.pickUpMessage = closestPickableObj.pickUpText;
                    interactPrompt.pickUpSprite = closestPickableObj.pickableSprite;
                    interactPrompt.ShowPickupPrompt();
                }
            }
            //no active items 
            else
            {
                //turn off prompt 
                if (interactPrompt.pickUpText.color.a > 0)
                {
                    interactPrompt.DeactivatePrompt();
                }
            }

            //move interact prompt
            interactPrompt.myWorldCanvas.transform.position = closestPickableObj.transform.position + closestPickableObj.promptOffset;

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

        lastPos = transform.position;
    }

    void PickInput()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;

        //pick item 
        if ((inputDevice.DPadRight.WasPressed || Input.GetKeyDown(KeyCode.E)) && canPick)
        {
            //check if we can pick something 
            if (closestPickableObj != null)
            {
                if (closestPickableObj.activeItems> 0)
                {
                    //pick function
                    closestPickableObj.Pick();

                    //deal with player cloak & movement
                    if (player)
                    {
                        tpc.playerCloak.enabled = false;
                        tpc.playerCanMove = false;

                        tpc.EnableCloak(0.25f);
                        tpc.EnablePlayer(0.75f);

                        inventory.ShowInventory();
                    }
                       
                    //look at plant
                    Vector3 lookAtPos = new Vector3(closestPickableObj.transform.position.x, myAnimator.transform.position.y, closestPickableObj.transform.position.z);
                    myAnimator.transform.LookAt(lookAtPos);
                       
                    //pick anim
                    myAnimator.SetTrigger("pick");

                    //set reset 
                    canPick = false;
                    resetTimer = 0;
                }
            }
        }
    }

    //resets pick ability 
    void PickReset()
    {
        if(canPick == false)
        {
            resetTimer += Time.deltaTime;

            if(resetTimer > resetTime)
            {
                canPick = true;
            }
        }
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
            //Debug.Log("found something");
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



