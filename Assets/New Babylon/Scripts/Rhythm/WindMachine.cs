using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InControl;

namespace Items
{
    public class WindMachine : Tool
    {
        //WindMachine itself -- pick up and wind gen
        [Header("Wind staff vars")]
        public ObjectPooler fanWindPooler;
        GameObject windClone;

        public int staffID;
        //animator
        public Transform fanObj;
        //speed vars 
        public float windSpeed = 5f;
        float origWind;
        public float rotationSpeed = 3f;
        float origRotate;
        public float distanceToDestroy;

        //audio
        [Header("Audio")]
        public AudioClip selectLower;
        public AudioClip placementSound, noNo;
        Vector3 placeMentSpot;

        //Rhythm lever vars
        [Header("Rhythm Settings")]
        public int timeScaleMax;
        //turn this on & off depending what player is doing with it
        public bool fanActive;
        //rhythm indicator
        TempoIndication tempoIndicator;

        public void Start()
        {
            //set tempo indicator stuff 
            tempoIndicator = GetComponent<TempoIndication>();
            if(tempoIndicator.myAudioSource == null)
            {
                tempoIndicator.myAudioSource = myAudioSource;
            }
            tempoIndicator.changeTempoSound = selectLower;
            //rhythm lever state -- timeScale should never exceed timeScaleMax 
            timeScale = 0;
            origRotate = rotationSpeed;
            origWind = windSpeed;

            //set tempo to middle state 
            SetTempo(2);

            //this means we have set it before, so we have saved before
            if (PlayerPrefs.GetString("hasWindStaff" + staffID.ToString()) == "yes")
            {
                PickUpTool(false);
                //Debug.Log("picked up windstaff on start");
                toolAnimator.SetBool("fan", false);
                fanActive = false;
            }
            //wind fan still active
            else
            {
                toolAnimator.SetBool("fan", true);
                toolAnimator.enabled = false;
                fanActive = true;
            }
        }
        
        public override void PickUpTool(bool playSound)
        {
            base.PickUpTool(playSound);

            PlayerPrefs.SetString("hasWindStaff" + staffID.ToString(), "yes");

            toolAnimator.enabled = true;

            toolAnimator.SetBool("fan", false);

            fanActive = false;
        }

        public override void Update()
        {
            //rotate fan thru code
            if (fanActive)
            {
                //run pick up logic 
                base.Update();

                //rotate fan blades
                fanObj.transform.Rotate(0, 0, rotationSpeed);

                //if player is nearby, generate wind rhythm at timeInterval (look in Rhythm Producer)
                if (Vector3.Distance(player.transform.position, transform.position) < 100)
                {
                    if (showRhythm)
                    {
                        SpawnWind();
                    }
                }

            }

            //holding wind staff
            else
            {
                //get input device 
                var inputDevice = InputManager.ActiveDevice;

                //on click 
                if ((Input.GetButtonDown("MainAction") || inputDevice.Action3.WasPressed) && !tpc.menuOpen && inventoryScript.canSwitchItems)
                {
                    MainAction();
                }
            }
        }

        void SpawnWind()
        {
            //grab wind from pool, set pos, rotation, ref to this
            windClone = fanWindPooler.GrabObject();
            //set wind script
            FanWind fanWind = windClone.GetComponent<FanWind>();
            fanWind._windGen = this;
            fanWind.currentSpeed = windSpeed;
            fanWind.windParticles.Clear();
            //set wind transform 
            windClone.transform.SetParent(null);
            windClone.transform.position = transform.position + new Vector3(0, 5, 0);
            windClone.transform.rotation = Quaternion.Euler(transform.eulerAngles - new Vector3(0, 90, 0));
            //play particles
            fanWind.windParticles.Play();
           
            showRhythm = false;
        }

        //WIND STAFF FUNCTIONS
        public override void MainAction()
        {
            //only works on main fan 
            if(itemGrouper = itemScript)
            {
                //can place
                if (CheckCanPlaceFan() == true)
                {
                    //in group
                    if (itemGrouper.toolGroup.Count > 0)
                    {
                        itemGrouper.toolGroup[0].GetComponent<WindMachine>().placeMentSpot = placeMentSpot;
                        itemGrouper.toolGroup[0].GetComponent<WindMachine>().PlaceFan(true);
                    }
                    //last one 
                    else
                    {
                        PlaceFan(false);
                    }

                }
                //blocked
                else
                {
                    PlaySound(noNo, myAudioSource.volume);
                }
            }
        }

        //this function lets us know if user can place the windfan in this spot
        bool CheckCanPlaceFan()
        {
            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
            {
                if (hit.transform.gameObject.tag == "Ground")
                {
                    //check in radius of planting point if its too close to others
                    bool nearBuilding = false;
                    Collider[] hitColliders = Physics.OverlapSphere(hit.point, 3f);
                    int i = 0;
                    while (i < hitColliders.Length)
                    {
                        if (hitColliders[i].gameObject.tag == "Building")
                        {
                            nearBuilding = true;
                        }
                        i++;
                    }


                    if (nearBuilding)
                    {
                        return false;
                    }
                    //can place
                    else
                    {
                        placeMentSpot = hit.point;
                        return true;
                    }
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public void PlaceFan(bool grouped)
        {
            //animate to become fan
            toolAnimator.SetBool("fan", true);
            PlaySound(placementSound, 0.05f);

            //set parent null, position
            transform.SetParent(null);
            transform.position = placeMentSpot;

            //in group
            if (grouped)
            {
                RemoveFromGroup();
            }
            else
            {
                RemoveFromInventory();
            }

           
            //activate 
            gameObject.SetActive(true);
            //set rotation 
            StartCoroutine(WaitToSetFanActive());
        }

        //waits until windFan animator state active
        IEnumerator WaitToSetFanActive()
        {
            yield return new WaitUntil(() => toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("windFan") == true);

            toolAnimator.enabled = false;

            fanActive = true;
            hasBeenAcquired = false;

            Debug.Log("set windfan");
            //set tempo
            SetTempo(tpc.playerTempo.timeScale);
        }


        //WIND FAN FUNCTIONS
        //Increase rhythm
        public void IncreaseTempo()
        {
            //need to get the rhythm indicator working again...
            if (timeScale < timeScaleMax)
            {
                timeScale += 1;
                windSpeed += 2;
                rotationSpeed *= 2;
            }
            else
            {
                //reset 
                timeScale = 0;
                windSpeed = origWind;
                rotationSpeed = origRotate;
            }

            //sets rhythm indicator 
            if (fanActive)
            {
                tempoIndicator.SetVisualTempo(timeScale);
            }
        }

        public void SetTempo(int tempoState)
        {
            //set timescale 
            timeScale = tempoState;

            //zero
            if(tempoState == 0)
            {
                //reset 
                windSpeed = origWind;
                rotationSpeed = origRotate;
            }
            //make sure this is a doable state 
            else
            {
                windSpeed = origWind + (2 * tempoState);
                rotationSpeed = origRotate * (Mathf.Pow(2, tempoState));
            }

            //sets rhythm indicator 
            if (fanActive)
            {
                tempoIndicator.SetVisualTempo(timeScale);
            }
        }
    }


}

