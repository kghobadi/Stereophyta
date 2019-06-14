using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class SavingText : MonoBehaviour {

    TMP_Text savingText;
    public float timer = 0f, interval = 0.1f;
    public int dotCounter = 0, dotMax = 3;

	void Start () {
        savingText = GetComponent<TMP_Text>();
	}
	
	void Update () {
        //only do this if savingText has an alpha val
		if(savingText.color.a > 0)
        {
            timer += Time.deltaTime;

            if(timer > interval)
            {
                //switch dots
                switch (dotCounter)
                {
                    case 0:
                        savingText.text = "Saving";
                        break;
                    case 1:
                        savingText.text = "Saving.";
                        break;
                    case 2:
                        savingText.text = "Saving..";
                        break;
                    case 3:
                        savingText.text = "Saving...";
                        break;
                }

                //add dots
                if(dotCounter < dotMax)
                {
                    dotCounter++;
                }
                else
                {
                    dotCounter = 0;
                }
               
                //reset timer
                timer = 0f;
            }
        }
	}
}
