using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CropCurrency : MonoBehaviour {

    public int cropCounter;
    public Image cropShower;

    public float showCropsCounter, showCropsTotal;

    public Text cropDisplayAmount;

	void Start () {
        cropCounter = 0;
        cropShower.enabled = false;
        cropDisplayAmount.enabled = false;
		
	}
	
	void Update () {
        cropDisplayAmount.text = cropCounter.ToString();
        //animate crop symbol

        if (cropShower.enabled)
        {
            showCropsCounter -= Time.deltaTime;
            if (showCropsCounter < 0)
            {
                cropShower.enabled = false;
                cropDisplayAmount.enabled = false;
                showCropsCounter = showCropsTotal;
            }
        }
    }


}
