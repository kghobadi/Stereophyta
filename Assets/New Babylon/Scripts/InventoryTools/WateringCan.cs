using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WateringCan : Tool
{
    Water waterParticles;

    public Animator wateringCanimator;

    public bool watering;

    public override void Awake()
    {
        base.Awake();
        waterParticles = transform.GetChild(0).GetComponent<Water>();
        wateringCanimator = GetComponent<Animator>();
    }

 
    public override void Update()
    {
        base.Update();

        if (Input.GetButton("MainAction") && !tpc.menuOpen && waterParticles.showRhythm && !watering)
        {
            MainAction();
        }

        //if swinging and anim over, switch back to idle
        if ((watering || wateringCanimator.GetCurrentAnimatorStateInfo(0).IsName("water!")) && wateringCanimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.6f)
        {
            watering = false;
            wateringCanimator.SetBool("watering", false);
        }
    }

    public override void MainAction()
    {
        base.MainAction();
        if (!watering)
        {
            //Debug.Log("water already!1!");
            wateringCanimator.SetTrigger("water1");
            wateringCanimator.SetBool("watering", true);
            waterParticles.waterEffect.Play();
            watering = true;
        }
       
    }
}
