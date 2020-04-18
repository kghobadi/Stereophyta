using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InControl;

namespace Items
{
    public class WateringCan : Tool
    {
        Water waterParticles;

        public bool watering;

        [Header("Water can limitations")]
        public int waterAmount;
        public int waterMax = 20;

        //becomes true when on a wells trigger
        public bool nearWell;
        public AudioClip fillUpWater;
        public AudioClip nono;

        public override void Awake()
        {
            base.Awake();
            waterParticles = transform.GetChild(0).GetComponent<Water>();
            waterAmount = waterMax;

            //this means we have set it before, so we have saved before
            if (PlayerPrefs.GetString("hasWaterCan") == "yes")
            {
                PickUpTool(false);
                //Debug.Log("picked up water on start");
            }
        }

        public override void PickUpTool(bool playSound)
        {
            base.PickUpTool(playSound);

            PlayerPrefs.SetString("hasWaterCan", "yes");
        }

        public override void Update()
        {
            //pick up logic
            base.Update();

            //only runs once player has picked it up
            if (hasBeenAcquired && inventoryScript.canSwitchItems)
            {
                //get input device 
                var inputDevice = InputManager.ActiveDevice;
                
                //on click 
                if ((Input.GetButtonDown("MainAction") || inputDevice.Action3.WasPressed) && !tpc.menuOpen && !watering)
                {
                    //check if near well
                    if (nearWell)
                    { 
                        //refill water if not at max
                        if(waterAmount != waterMax)
                            RefillWaterCan();
                        else
                            MainAction();
                    }
                    //only water if have enough 
                    else
                    {
                        if (waterAmount > 0)
                            MainAction();
                        else
                            PlaySound(nono, 1f);
                    }
                }

                //input -- can hold the water button down and it will do it on rhythm
                if ((Input.GetButton("MainAction") || inputDevice.Action3) && !tpc.menuOpen && showRhythm && !watering && waterAmount > 0)
                {
                    MainAction();
                    showRhythm = false;
                }

                //if swinging and anim over, switch back to idle
                if ((watering || toolAnimator.GetCurrentAnimatorStateInfo(0).IsName("water")) && toolAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 0.6f)
                {
                    watering = false;
                    toolAnimator.SetBool("watering", false);
                }
            }

        }

        void RefillWaterCan()
        {
            waterAmount = waterMax;
            PlaySoundRandomPitch(fillUpWater, 1f);
            interactPrompt.DeactivateClickPrompt();
        }
        
        public override void MainAction()
        {
            base.MainAction();
            if (!watering)
            {
                //Debug.Log("water already!1!");
                toolAnimator.SetTrigger("water");
                toolAnimator.SetBool("watering", true);
                waterParticles.waterEffect.Play();
                watering = true;
                waterAmount--;
            }

        }
    }
}
