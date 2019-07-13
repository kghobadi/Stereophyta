﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ax : Tool {
    //physics & anims
    Rigidbody myAxBody;
    BoxCollider myCollider;
    public bool axing;

    //audio
    public AudioClip[] axHits;

    //ax wind refs
    public GameObject axWindPrefab;
    public float distanceToDestroyWinds;
    public float axWindSpeed;
    public float scaleIncrease;

    public TrailRenderer axtrail;

    void Start () {
        //all my refs
        myAxBody = GetComponent<Rigidbody>();
        myCollider = GetComponent<BoxCollider>();

        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetString("hasAx") == "yes")
        {
            PickUpTool(false);
            //Debug.Log("picked up ax on start");
        }
    }

    public override void PickUpTool(bool playSound)
    {
        base.PickUpTool(playSound);

        PlayerPrefs.SetString("hasAx", "yes");
    }

    public override void Update () {
        //pick up logic
        base.Update();

        //only run if has been picked up
        if (hasBeenAcquired)
        {
            //take input on button down
            if (Input.GetButtonDown("MainAction") && !tpc.menuOpen && !axing)
            {
                MainAction();
            }

            //if swinging and anim over, switch back to idle
            if (axing && toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("axSwing1") && toolAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.6f)
            {
                axing = false;
                //StartCoroutine(DisableTrail());
            }
        }
       
    }

    //swing ax
    public override void MainAction()
    {
        base.MainAction();
        toolAnimator.SetTrigger("swing1");

        //virtual play sounds
        PlaySound(toolSource, axHits);
        SpawnAxWinds(transform.position + new Vector3(0, 0, 1));

        axing = true;

    }

    void OnTriggerEnter(Collider other)
    {
        //collided with plant
        //if (other.gameObject.tag == "Plant" && axing)
        //{
        //    axing = false;

        //    other.gameObject.GetComponent<Plont>().GrowPlant(false);
            
        //    //virtual play sounds
        //    PlaySound(axSource, axHits);
        //    SpawnAxWinds(transform.position + new Vector3(0, 0, 1));
        //}
    }

    //spawns one ax wind
    void SpawnAxWinds(Vector3 spawnPoint)
    {
        GameObject axWindCenter = Instantiate(axWindPrefab, spawnPoint, tpc.characterBody.rotation);

        axWindCenter.transform.localEulerAngles += new Vector3(0, -90, 0);

        axWindCenter.GetComponent<AxWind>().myAxDaddy = this;

        //Vector3 leftRot = new Vector3(tpc.transform.localEulerAngles.x, tpc.transform.localEulerAngles.y - 45, tpc.transform.localEulerAngles.z);

        //GameObject axWindLeft = Instantiate(axWindPrefab, spawnPoint, Quaternion.Euler(leftRot));

        //axWindLeft.GetComponent<AxWind>().myAxDaddy = this;

        //Vector3 rightRot = new Vector3(tpc.transform.localEulerAngles.x, tpc.transform.localEulerAngles.y + 45, tpc.transform.localEulerAngles.z);

        //GameObject axWindRight = Instantiate(axWindPrefab, spawnPoint, Quaternion.Euler(rightRot));

        //axWindRight.GetComponent<AxWind>().myAxDaddy = this;
    }

    IEnumerator DisableTrail()
    {
        yield return new WaitForSeconds(axtrail.time);
        axtrail.enabled = false;
    }


    //void OnTriggerStay(Collider other)
    //{
    //    //collided with plant
    //    if (other.gameObject.tag == "Plant" && axing && axAnimator.GetCurrentAnimatorStateInfo(0).IsName("axSwing1") && axAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.2f)
    //    {
    //        other.GetComponent<Plont>().GrowPlant(false);
    //        axing = false;
    //        //virtual play sounds
    //        PlaySound(axSource, axHits);
    //        SpawnAxWinds(other.gameObject.transform.position + new Vector3(0, transform.position.y, 0));
    //        Debug.Log("hit plant");
    //    }
    //}
}
