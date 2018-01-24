using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    int ageCounter;
    public int growthDay;


    private GameObject sun;
    private Sun sunScript;
    bool hasGrown;

    public bool isBaby;
    public bool isAdult;
    public bool isOld;
    public bool isDead;

    //InstrumentObject objectScript;

    void Start () {
        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        // ref for Animal Interactable
        //objectScript = GetComponent<InstrumentObject>();

        //Set age 
        ageCounter = 0;
        isBaby = true;

        StartCoroutine(Growth());
	}
	
	void Update () {
      

        if (hasGrown)
        {
            switch (ageCounter)
            {
                case 1: //Adult
                    hasGrown = false;
                    transform.localScale = transform.localScale + new Vector3(0.3f, 0.3f, 0.3f);
                    isAdult = true;
                    StartCoroutine(Growth());
                    break;
                case 2: // Old
                    hasGrown = false;
                    transform.localScale = transform.localScale + new Vector3(0.3f, 0.3f, 0.3f);
                    isOld = true;
                    StartCoroutine(Growth());
                    break;
                case 3: // Dead
                    hasGrown = false;
                    transform.localScale = transform.localScale - new Vector3(0.8f, 0.7f, 0.8f);
                    isDead = true;
                    break;
            }
        }
		
	}

    IEnumerator Growth()
    {
        for (int i = 0; i < growthDay; i++)
        {
            Debug.Log(i);
            //animal growth sound?
            //yield return new WaitUntil(() => sunScript.dayPassed == true);
            yield return new WaitForSeconds(1);
        }

        //if (objectScript.hasBeenFed)
  
        ageCounter += 1;
        hasGrown = true;
 
        StartCoroutine(Growth()); //hopefully this works
        
    }
    
}
