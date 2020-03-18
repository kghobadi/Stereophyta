using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwimmableWater : MonoBehaviour {
    
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    ZoomCamInstructions howToZoom;

    void Awake()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        howToZoom = GetComponent<ZoomCamInstructions>();
    }

    //enter water
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject == player)
        {
            //if not swimming
            if (!tpc.swimming )
            {
                tpc.swimming = true;
                tpc.footsteps.currentFootsteps = tpc.footsteps.swimSteps;
                tpc.footsteps.onLand = false;
                tpc.myInventory.gameObject.SetActive(false);
                tpc.playerCloak.gameObject.SetActive(false);

                if (tpc.jumping)
                {
                    tpc.jumping = false;
                    tpc.jumpTrail.transform.SetParent(null);
                    tpc.jumpTrail.GetComponent<JumpTrail>().ClearTrail();

                    //bring down move speed 
                    tpc.currentMovement /= 3;
                    tpc.currentMovementV = Vector3.zero;
                }

                //first time swimmer eh?
                if (PlayerPrefs.GetString("hasSwum") != "yes")
                {
                    howToZoom.FadeInstructions();
                    PlayerPrefs.SetString("hasSwum", "yes");
                }
            }
        }
    }

    //exit water
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == player)
        {
            //if swimming 
            if (tpc.swimming)
            {
                tpc.swimming = false;
                tpc.footsteps.currentFootsteps = tpc.footsteps.grassSteps;
                tpc.footsteps.onLand = true;
                tpc.myInventory.gameObject.SetActive(true);
                
                StartCoroutine(WaitToEnableCloak());
            }
        }
    }

    IEnumerator WaitToEnableCloak()
    {
        yield return new WaitForSeconds(0.5f);

        if (!tpc.swimming)
        {
            tpc.ActivateCloak(0.1f);
        }
    }
}
