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

    void Start () {
        _player = GameObject.FindGameObjectWithTag("Player");

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
                    int randomRotation = Random.Range(0, 360);
                    plantClone = Instantiate(plants, transform.position + new Vector3(0, 0, 1.5f), Quaternion.Euler(0, randomRotation, 0));
                }
            }
        }
        
    }
}
