using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Items
{
    public class Ax : Tool
    {
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

        public ObjectPooler axWindPool;

        void Start()
        {
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

        public override void Update()
        {
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

                //input -- can hold the water button down and it will do it on rhythm
                if (Input.GetButton("MainAction") && !tpc.menuOpen && showRhythm && !axing)
                {
                    MainAction();
                    showRhythm = false;
                }

                //if swinging and anim over, switch back to idle
                if (axing && toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("axSwing1") && toolAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.6f)
                {
                    axing = false;
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
            //has plant tag
            if (axing)
            {
                if (other.gameObject.tag == "Plant")
                {
                    //is it plont?
                    if (other.gameObject.GetComponent<Plont>())
                    {
                        //shrink plant and play guitar sound
                        other.GetComponent<Plont>().GrowPlant(false, true);
                        PlaySound(other.gameObject.GetComponent<Plont>().extraVoice, axHits);
                    }
                }
                //is it a shroom?
                if (other.GetComponent<Shroom>())
                {
                    other.GetComponent<Shroom>().UprootShroom();
                }
            }
          
        }

        //spawns one ax wind
        void SpawnAxWinds(Vector3 spawnPoint)
        {
            GameObject axWindCenter = axWindPool.GrabObject();

            axWindCenter.transform.localScale = axWindCenter.GetComponent<PooledObject>().originalScale;

            axWindCenter.transform.position = spawnPoint;

            axWindCenter.GetComponent<AxWind>().originalPos = spawnPoint;

            axWindCenter.transform.rotation = tpc.characterBody.rotation;

            axWindCenter.transform.localEulerAngles += new Vector3(0, -90, 0);

            axWindCenter.GetComponent<AxWind>().myAxDaddy = this;
        }

        IEnumerator DisableTrail()
        {
            yield return new WaitForSeconds(axtrail.time);
            axtrail.enabled = false;
        }
        
    }

}
