﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WateringCan : Tool
{
    Water waterParticles;

    public bool watering;

    public override void Awake()
    {
        base.Awake();
        waterParticles = transform.GetChild(0).GetComponent<Water>();
    }

 
    public override void Update()
    {
        //pick up logic
        base.Update();

        //only runs once player has picked it up
        if (!hasBeenAcquired)
        {
            //input -- can hold the water button down and it will do it on rhythm
            if (Input.GetButton("MainAction") && !tpc.menuOpen && waterParticles.showRhythm && !watering)
            {
                MainAction();
            }

            //if swinging and anim over, switch back to idle
            if ((watering || toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("water!")) && toolAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.6f)
            {
                watering = false;
                toolAnimator.SetBool("watering", false);
            }
        }
      
    }

    public override void MainAction()
    {
        base.MainAction();
        if (!watering)
        {
            //Debug.Log("water already!1!");
            toolAnimator.SetTrigger("water1");
            toolAnimator.SetBool("watering", true);
            waterParticles.waterEffect.Play();
            watering = true;
        }
       
    }
}
