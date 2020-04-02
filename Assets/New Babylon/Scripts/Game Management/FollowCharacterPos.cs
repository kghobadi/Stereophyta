using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowCharacterPos : MonoBehaviour
{
    Transform player;
    public Transform characterTransform;
    public float heightAdjust = 0;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
    }

    void Update()
    {
        transform.position = characterTransform.position + new Vector3(0, heightAdjust, 0);
        transform.LookAt(player, Vector3.up);
    }
}
