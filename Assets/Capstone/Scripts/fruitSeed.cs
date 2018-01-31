using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fruitSeed : MonoBehaviour {
    GameObject _player;

    public GameObject plants;
    GameObject plantClone;

    public int plantingRadius;

    inventoryMan inventMan;
    Inventory invent;
    ThirdPersonController tpc;

    void Start () {
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();

        inventMan = GetComponent<inventoryMan>();
        invent = _player.GetComponent<Inventory>();
    }
	
	// Update is called once per frame
	void Update () {


        if (inventMan.underPlayerControl)
        {
            if (Input.GetMouseButtonDown(1) && transform.position.y < 10)
            {
                bool canPlant = true;
                Collider[] hitColliders = Physics.OverlapSphere(transform.position, plantingRadius);
                int i = 0;
                while (i < hitColliders.Length)
                {
                    if (hitColliders[i].gameObject.tag == "Plant")
                    {
                        canPlant = false;
                    }
                    i++;
                }
                if (canPlant)
                {
                    int[] rotations = new int[] { 0, 90, 180, 270 };
                    int randomRotation = Random.Range(0, 4);
                    plantClone = Instantiate(plants, transform.position + new Vector3(0, 2f, 0), Quaternion.Euler(0, rotations[randomRotation], 0));
                }
            }
        }
        else
        {
            transform.localEulerAngles += new Vector3(0, 1, 0);
        }
        
    }
}
