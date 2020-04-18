using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeactivateObject : MonoBehaviour
{
    GameObject _player;
    ThirdPersonController tpc;
    WorldManager wm;

    public float activationDist = 0; 

    void Awake()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();
        wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

        //set to wm dist if it remains at 0
        if (activationDist == 0)
            activationDist = wm.activationDistance;
    }

    void Start()
    {
        Deactivate();
    }

    void Update()
    {
        //if player is moving 
        if (tpc.currentMovement.magnitude > 0)
        {
            //Debug.Log(wm);
            Deactivate();
        }
    }

    void Deactivate()
    {
        //deactivate object when it's far enough away from player 
        if (Vector3.Distance(_player.transform.position, transform.position) > (activationDist + 10f))
        {
            //first add to list
            wm.allInactiveObjects.Add(this);
            //then deactivate 
            gameObject.SetActive(false);
        }
       
    }
}