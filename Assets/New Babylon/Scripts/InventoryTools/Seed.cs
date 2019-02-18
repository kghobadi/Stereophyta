using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : MonoBehaviour {
    GameObject player;
    ThirdPersonController tpc;

    Rigidbody seedBody;
    SphereCollider seedCollider;
    public bool seedSelected, planting;

    Vector3 originalPos;
    public GameObject plantPrefab;
    GameObject plantClone;

    AudioSource seedSource;
    public AudioClip dropSeed, spawnPlant;

    Transform inventoryParent;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        seedBody = GetComponent<Rigidbody>();
        seedBody.isKinematic = true;
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();

        inventoryParent = transform.parent;
	}
	
	void Update () {
        //plant seed
        if (Input.GetButton("Plant") && seedSelected && !planting && !tpc.menuOpen)
        {

            RaycastHit hit;
            // Does the ray intersect any objects excluding the player layer
            if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity))
            {
                if(hit.transform.gameObject.tag == "Ground")
                {
                    planting = true;
                    originalPos = transform.localPosition;
                    transform.SetParent(null);
                    seedBody.isKinematic = false;
                    seedBody.useGravity = true;
                    seedSource.PlayOneShot(dropSeed);
                }
            }
        }
	}

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            SpawnPlant();
        }
    }

    void SpawnPlant()
    {
        seedSource.PlayOneShot(spawnPlant);

        plantClone = Instantiate(plantPrefab, transform.position, Quaternion.identity);

        transform.SetParent(inventoryParent);
        transform.localPosition = originalPos;

        tpc.playerCanMove = true;

        planting = false;

        seedBody.isKinematic = true;
        seedBody.useGravity = false;
    }

}
