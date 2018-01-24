using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Crop : Interactable {


    CropCurrency crops;


    //audio source in UI
    //Pick up sound

    public override void Start()
    {
        base.Start();

        crops = _player.GetComponent<CropCurrency>();
        interactable = true;
    }
    

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();

        //play pick up sound
        
        crops.cropCounter += 1;
        crops.cropShower.enabled = true;
        crops.cropDisplayAmount.enabled = true;
        crops.showCropsCounter = crops.showCropsTotal;
        Destroy(gameObject);
    }

    void Update()
    {
        //always rotate seed in world space
        transform.Rotate(0, 1, 0 * Time.deltaTime);
        if (bedScript.dayPassed)
        {
            Destroy(gameObject);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            crops.cropCounter += 1;
            crops.cropShower.enabled = true;
            crops.cropDisplayAmount.enabled = true;
            crops.showCropsCounter = crops.showCropsTotal;
            soundBoard.PlayOneShot(InteractSound);
            Destroy(gameObject);
            //play pick up sound
        }
    }

}
