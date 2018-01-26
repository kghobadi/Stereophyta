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
      
    }


    void Update()
    {
        transform.LookAt(_player.transform);
        transform.position = new Vector3(_player.transform.position.x + 15, _player.transform.position.y + 15, _player.transform.position.z);

    }

}
