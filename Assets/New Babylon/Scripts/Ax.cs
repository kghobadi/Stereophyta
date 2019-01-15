﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ax : Tool {
    Rigidbody myAxBody;
    BoxCollider myCollider;
    Animator axAnimator;
    public bool axing;

    AudioSource axSource;
    public AudioClip[] axHits;

	public override void Start () {
        base.Start();
        //all my refs
        myAxBody = GetComponent<Rigidbody>();
        myCollider = GetComponent<BoxCollider>();
        axAnimator = GetComponent<Animator>();
        axSource = GetComponent<AudioSource>();
	}
    
    public override void Update () {
        base.Update();

        //if swinging and anim over, switch back to idle
        if (axing && axAnimator.GetCurrentAnimatorStateInfo(0).IsName("axSwing") && axAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.4f) 
        {
            axing = false;
            axAnimator.SetBool("axing", false);
            Debug.Log("stopped swinging");
        }
	}

    //swing ax
    public override void MainAction()
    {
        base.MainAction();
        axAnimator.SetBool("axing", true);
        axing = true;
    }

    void OnTriggerEnter(Collider other)
    {
        //collided with plant
        if(other.gameObject.tag == "Plant" && axing)
        {
            other.GetComponent<Plont>().GrowPlant(false);
            axing = false;
            //virtual play sounds
            PlaySound(axSource, axHits);
            Debug.Log("hit plant");
        }
    }

    void OnTriggerStay(Collider other)
    {
        //collided with plant
        if (other.gameObject.tag == "Plant" && axing && axAnimator.GetCurrentAnimatorStateInfo(0).IsName("axSwing") && axAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.2f)
        {
            other.GetComponent<Plont>().GrowPlant(false);
            axing = false;
            //virtual play sounds
            PlaySound(axSource, axHits);
            Debug.Log("hit plant");
        }
    }

}
