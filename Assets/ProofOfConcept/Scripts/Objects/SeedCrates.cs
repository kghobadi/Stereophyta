using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedCrates : Interactable {

    public GameObject seedType;
    GameObject seedClone;

    FirstPersonController fpc;

    public override void Start()
    {
        base.Start();

        fpc = _player.GetComponent<FirstPersonController>();
    }

    void Update () {
        if (fpc.isHoldingSeed)
        {
            interactable = false;
        }
        else
        {
            interactable = true;
        }
    }

    public override void handleClickSuccess()
    {
        if (!fpc.isHoldingSeed)
        {
            base.handleClickSuccess();
            seedClone = Instantiate(seedType, _player.transform.position, Quaternion.identity, _player.transform);
            FindPlayerArm(seedClone);
            seedClone.GetComponent<inventoryMan>().underPlayerControl = true;
            fpc.isHoldingSeed = true;
        }

    }

    void FindPlayerArm(GameObject seedyGuy)
    {
        seedyGuy.transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(-0.5f, 0f, 1f);

        seedyGuy.transform.localPosition = armPosition;

    }
}
