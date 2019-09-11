using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sickle : Tool {
    //physics & anim refs
    Rigidbody mySickleBody;
    BoxCollider myCollider;
    public bool sickling;

    //audio
    public AudioClip[] sickleHits;

    //for sickle wind vars
    public GameObject sickleWindPrefab;
    public float distanceToDestroyWinds;
    public float sickleWindSpeed;
    public float scaleIncrease;

    //trail
    public TrailRenderer sickleTrail;

    public ObjectPooler sickleWindPool;

    void Start () {
        //all my refs
        mySickleBody = GetComponent<Rigidbody>();
        myCollider = GetComponent<BoxCollider>();

        //this means we have set it before, so we have saved before
        if (PlayerPrefs.GetString("hasSickle") == "yes")
        {
            PickUpTool(false);
            //Debug.Log("picked up sickle on start");
        }
    }

    public override void PickUpTool(bool playSound)
    {
        base.PickUpTool(playSound);

        PlayerPrefs.SetString("hasSickle", "yes");
    }

    public override void Update () {
        //pick up logic
        base.Update();

        //only run if has been picked up
        if (hasBeenAcquired)
        {
            //take input 
            if (Input.GetButtonDown("MainAction") && !tpc.menuOpen && !sickling)
            {
                MainAction();
            }

            //while sickling && show rhythm is true, spawn 
            if (showRhythm && sickling)
            {
                //virtual play sounds
                PlaySound(toolSource, sickleHits);
                SpawnSickleWind(transform.position + new Vector3(0, 0, 1));
                showRhythm = false;
            }

            //on release
            if (Input.GetButtonUp("MainAction") && sickling)
            {
                toolAnimator.SetBool("sickling", false);
                sickling = false;
            }
        }

    }

    //swing ax
    public override void MainAction()
    {
        base.MainAction();
        toolAnimator.SetBool("sickling", true);
        sickling = true;
    }
    
    

    //spawns one sickle wind
    void SpawnSickleWind (Vector3 spawnPoint)
    {
        GameObject sickleWind = sickleWindPool.GrabObject();

        sickleWind.transform.localScale = sickleWind.GetComponent<PooledObject>().originalScale;

        sickleWind.transform.position = spawnPoint;

        sickleWind.GetComponent<SickleWind>().originalPos = spawnPoint;

        sickleWind.transform.rotation = tpc.characterBody.rotation;

        sickleWind.transform.localEulerAngles += new Vector3(0, -90, 0);

        sickleWind.GetComponent<SickleWind>().mySickleDaddy = this;
    }


    IEnumerator DisableTrail()
    {
        yield return new WaitForSeconds(sickleTrail.time);
        sickleTrail.enabled = false;
    }

}
