using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gate : MonoBehaviour {

    //Gates are ways of opening up and closing off play areas and guiding players through the world

    // This is the method for setting up an 'Area'
    //1. Summary: Lists of GameObjects that must be interacted with, and number of clicks designated within each object
    //   If player has interacted with x number of things on the List, the gate opens
    //2. How it works: Cast an OverlapSphere at designated central Transform of an Area.
    //   Loop through objects this collided with. 
    //   If these objects are one of the tags in a String[] InteractionObjects, then they are added to the lists. 
    //   If player has interacted with x number of things on the List, the gate opens
    //   Using a Global script, we can check the number of times a plantType has been clicked on. 
    //   Eventually, we can do this for any object if we architect the game in such a way (NPCs, Animals, Mechanisms)
    //   This means Interactable Objects need a ref to Gate, so they can be checked off one by one.

    public List<GameObject> interactableObjects= new List<GameObject>();

    public Transform overlapSphereCenter;

    public float areaRange, lowerSpeed;

    public bool areaComplete;
    public int interactionsNecessaryTotal;
    public int interactionCounterTotal = 0;

    CutScene cutSceneScript;

    public Vector3 cameraPos, cameraRot;

    //public string[] interactableTags; this format will be used later when there are more interactable objects

    void Start () {
        overlapSphereCenter = transform.GetChild(0);
        //Checks overlapSphere and fills up the List
        Collider[] hitColliders = Physics.OverlapSphere(overlapSphereCenter.position, areaRange);
        int i = 0;
        while (i < hitColliders.Length)
        {
            //possible way of making this code more efficient and readable:
            //for(int t =0; t < interactableTags.Length - 1; t++)
            //{
            //    if(hitColliders[i].gameObject.tag == interactableTags[t])
            //    {
            //        hitColliders[i].GetComponent ... to do this, would need a way of going into an object's inherited Interactable script
            //    }
            //}
            if(hitColliders[i].gameObject.tag == "Plant")
            {
                hitColliders[i].GetComponent<Plant>().gateScript = gameObject.GetComponent<Gate>();
                interactableObjects.Add(hitColliders[i].gameObject);
                interactionsNecessaryTotal += hitColliders[i].GetComponent<Plant>().interactionsNecessary;
            }
            if (hitColliders[i].gameObject.tag == "Seed")
            {
                hitColliders[i].GetComponent<fruitSeedNoInv>().gateScript = gameObject.GetComponent<Gate>();
                interactableObjects.Add(hitColliders[i].gameObject);
                interactionsNecessaryTotal += hitColliders[i].GetComponent<fruitSeedNoInv>().interactionsNecessary;
            }
            if (hitColliders[i].gameObject.tag == "WindMachines")
            {
                //there are four possible objects within this tag
                if (hitColliders[i].gameObject.name == "DirectionLever")
                {
                    hitColliders[i].GetComponent<DirectionLever>().gateScript = gameObject.GetComponent<Gate>();
                    interactionsNecessaryTotal += hitColliders[i].GetComponent<DirectionLever>().interactionsNecessary;
                }
                if (hitColliders[i].gameObject.name == "RhythmLever")
                {
                    hitColliders[i].GetComponent<RhythmLever>().gateScript = gameObject.GetComponent<Gate>();
                    interactionsNecessaryTotal += hitColliders[i].GetComponent<RhythmLever>().interactionsNecessary;
                }
                if (hitColliders[i].gameObject.name == "RotationCrank")
                {
                    hitColliders[i].GetComponent<RotationCrank>().gateScript = gameObject.GetComponent<Gate>();
                    interactionsNecessaryTotal += hitColliders[i].GetComponent<RotationCrank>().interactionsNecessary;
                }
                if (hitColliders[i].gameObject.name == "CircleRhythmLever")
                {
                    hitColliders[i].GetComponent<CircleRhythmLever>().gateScript = gameObject.GetComponent<Gate>();
                    interactionsNecessaryTotal += hitColliders[i].GetComponent<CircleRhythmLever>().interactionsNecessary;
                }
                interactableObjects.Add(hitColliders[i].gameObject);
            }
            //NPCs will be added here later, the if statement will look much like that one ^
            i++;
        }

        cutSceneScript = Camera.main.GetComponent<CutScene>();
    }
	
	public void CheckAreaComplete()
    {
        for(int i = 0; i < interactableObjects.Count; i++)
        {
            if (interactableObjects[i].tag == "Plant")
            {
                if(interactableObjects[i].GetComponent<Plant>().interactionFulfilled &&
                    !interactableObjects[i].GetComponent<Plant>().hasBeenChecked)
                {
                    interactionCounterTotal+= interactableObjects[i].GetComponent<Plant>().interactionsNecessary;
                    interactableObjects[i].GetComponent<Plant>().hasBeenChecked = true;
                }
            }
            if (interactableObjects[i].tag == "Seed")
            {
                if (interactableObjects[i].GetComponent<fruitSeedNoInv>().interactionFulfilled &&
                    !interactableObjects[i].GetComponent<fruitSeedNoInv>().hasBeenChecked)
                {
                    interactionCounterTotal += interactableObjects[i].GetComponent<fruitSeedNoInv>().interactionsNecessary;
                    interactableObjects[i].GetComponent<fruitSeedNoInv>().hasBeenChecked = true;
                }
            }
            if (interactableObjects[i].tag == "WindMachines")
            {
                //there are four possible objects within this tag
                if (interactableObjects[i].name == "DirectionLever")
                {
                    if (interactableObjects[i].GetComponent<DirectionLever>().interactionFulfilled &&
                   !interactableObjects[i].GetComponent<DirectionLever>().hasBeenChecked)
                    {
                        interactionCounterTotal += interactableObjects[i].GetComponent<DirectionLever>().interactionsNecessary;
                        interactableObjects[i].GetComponent<DirectionLever>().hasBeenChecked = true;
                    }
                }
                if (interactableObjects[i].name == "RhythmLever")
                {
                    if (interactableObjects[i].GetComponent<RhythmLever>().interactionFulfilled &&
                  !interactableObjects[i].GetComponent<RhythmLever>().hasBeenChecked)
                    {
                        interactionCounterTotal += interactableObjects[i].GetComponent<RhythmLever>().interactionsNecessary;
                        interactableObjects[i].GetComponent<RhythmLever>().hasBeenChecked = true;
                    }
                }
                if (interactableObjects[i].name == "RotationCrank")
                {
                    if (interactableObjects[i].GetComponent<RotationCrank>().interactionFulfilled &&
                  !interactableObjects[i].GetComponent<RotationCrank>().hasBeenChecked)
                    {
                        interactionCounterTotal += interactableObjects[i].GetComponent<RotationCrank>().interactionsNecessary;
                        interactableObjects[i].GetComponent<RotationCrank>().hasBeenChecked = true;
                    }
                }
                if (interactableObjects[i].name == "CircleRhythmLever")
                {
                    if (interactableObjects[i].GetComponent<CircleRhythmLever>().interactionFulfilled &&
                   !interactableObjects[i].GetComponent<CircleRhythmLever>().hasBeenChecked)
                    {
                        interactionCounterTotal += interactableObjects[i].GetComponent<CircleRhythmLever>().interactionsNecessary;
                        interactableObjects[i].GetComponent<CircleRhythmLever>().hasBeenChecked = true;
                    }
                }
            }
        }

        if(interactionCounterTotal >= interactionsNecessaryTotal && !areaComplete)  
        {
            StartCoroutine(LowerGate());
            cutSceneScript.ShowEvent(transform, cameraPos);
            areaComplete = true;
        }
    }

    IEnumerator LowerGate()
    {
        //lowers gate until below 
        while(transform.position.y > ((0 - (transform.localScale.y / 2)) - 1))
        {
            transform.Translate(0, lowerSpeed * Time.deltaTime, 0);
            yield return new WaitForEndOfFrame();
        }
        Destroy(gameObject);
    }
}