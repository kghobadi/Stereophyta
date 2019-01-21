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

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        seedBody = GetComponent<Rigidbody>();
        seedBody.isKinematic = true;
        seedCollider = GetComponent<SphereCollider>();
        seedSource = GetComponent<AudioSource>();
	}
	
	void Update () {
        //plant seed
        if (Input.GetButtonDown("Plant") && seedSelected && !planting && !tpc.menuOpen)
        {
            planting = true;
            originalPos = transform.localPosition;
            tpc.playerCanMove = false;
            seedBody.isKinematic = false;
            seedBody.useGravity = true;
            seedSource.PlayOneShot(dropSeed);
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

        transform.localPosition = originalPos;

        tpc.playerCanMove = true;

        planting = false;

        seedBody.isKinematic = true;
        seedBody.useGravity = false;
    }

}
