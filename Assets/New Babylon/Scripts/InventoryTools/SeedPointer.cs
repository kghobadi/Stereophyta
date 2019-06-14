using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedPointer : MonoBehaviour
{
    Inventory inventory;
    public MeshRenderer arrow, ring;
    int lastSeed;


    void Start()
    {
        //inventory ref
        inventory = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
        //mesh renderer refs
        arrow = transform.GetChild(0).GetComponent<MeshRenderer>();
        ring = transform.GetChild(1).GetComponent<MeshRenderer>();

        //currently has a seed active
        if (inventory.currenSeedObj != null)
        {
            if (inventory.currenSeedObj.activeSelf)
            {
                //set pointer material
                arrow.material = inventory.currenSeedObj.GetComponent<MeshRenderer>().material;
                ring.material = inventory.currenSeedObj.GetComponent<MeshRenderer>().material;
            }
        }
    }

    void Update()
    {
        //currently has a seed active
        if(inventory.currenSeedObj != null)
        {
            if (inventory.currenSeedObj.activeSelf)
            {
                //set pointer material
                if (inventory.currenSeedObj.GetComponent<MeshRenderer>())
                {
                    arrow.material = inventory.currenSeedObj.GetComponent<MeshRenderer>().material;
                    ring.material = inventory.currenSeedObj.GetComponent<MeshRenderer>().material;
                }
                //seed has meshrenderer in children
                else
                {
                    arrow.material = inventory.currenSeedObj.GetComponentInChildren<MeshRenderer>().material;
                    ring.material = inventory.currenSeedObj.GetComponentInChildren<MeshRenderer>().material;
                }

                //get lastSeed for next frame
                lastSeed = inventory.currentSeed;

                AdjustHeight();
            }
            //inactive seed
            else
            {
                //disable renderers
                if (arrow.enabled)
                {
                    arrow.enabled = false;
                    ring.enabled = false;
                }
            }
        }
       
        //inactive seed
        else
        {
            //disable renderers
            if (arrow.enabled)
            {
                arrow.enabled = false;
                ring.enabled = false;
            }
        }
    }

    void AdjustHeight()
    {
        RaycastHit hit;
        // Does the ray intersect any objects excluding the player layer
        if (Physics.Raycast(inventory.currenSeedObj.transform.position, Vector3.down, out hit, Mathf.Infinity))
        {
            //we only care about hitting the ground
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 0.35f, 0);

                //reenable if not enabled
                if (!arrow.enabled)
                {
                    arrow.enabled = true;
                    ring.enabled = true;
                }
            }
        }
    }

}
