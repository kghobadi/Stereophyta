using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sickle : Tool {
    //physics & anim refs
    Rigidbody mySickleBody;
    BoxCollider myCollider;
    Animator sickleAnimator;
    public bool sickling;

    //audio
    AudioSource sickleSource;
    public AudioClip[] sickleHits;

    //for sickle wind vars
    public GameObject sickleWindPrefab;
    public float distanceToDestroyWinds;
    public float sickleWindSpeed;
    public float scaleIncrease;

    //trail
    public TrailRenderer sickleTrail;

    void Start () {
        //all my refs
        mySickleBody = GetComponent<Rigidbody>();
        myCollider = GetComponent<BoxCollider>();
        sickleAnimator = GetComponent<Animator>();
        sickleSource = GetComponent<AudioSource>();
	}
    
    public override void Update () {

        //take input 
        if (Input.GetButtonDown("MainAction") && !tpc.menuOpen && !sickling)
        {
            MainAction();
        }

        //while sickling && show rhythm is true, spawn 
        if(showRhythm && sickling)
        {
            //virtual play sounds
            PlaySound(sickleSource, sickleHits);
            SpawnSickleWind(transform.position + new Vector3(0, 0, 1));
            showRhythm = false;
        }

        //on release
        if(Input.GetButtonUp("MainAction") && sickling)
        {
            sickleAnimator.SetBool("sickling", false);
            sickling = false;
        }

    }

    //swing ax
    public override void MainAction()
    {
        base.MainAction();
        sickleAnimator.SetBool("sickling", true);
        sickling = true;
    }
    
    

    //spawns one ax wind
    void SpawnSickleWind (Vector3 spawnPoint)
    {
        GameObject axWindCenter = Instantiate(sickleWindPrefab, spawnPoint, Quaternion.Euler(tpc.transform.localEulerAngles - new Vector3(0, 90, 0)));

        axWindCenter.GetComponent<SickleWind>().mySickleDaddy = this;
    }


    IEnumerator DisableTrail()
    {
        yield return new WaitForSeconds(sickleTrail.time);
        sickleTrail.enabled = false;
    }

}
