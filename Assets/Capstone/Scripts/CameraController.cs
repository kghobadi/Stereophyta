using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour
{
    GameObject _player;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        //transform.LookAt(_player.transform);
    }


    void Update()
    {

        transform.position = new Vector3(_player.transform.position.x - 4, _player.transform.position.y + 7, _player.transform.position.z - 4);

    }

}
