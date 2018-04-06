using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour
{
    GameObject _player;
    public Vector3 zoomedOutPos, zoomedInPos, zoomedOutRot, zoomedInRot;
    public float zoomedOutFOV, zoomedInFOV;
    Camera mainCam;
    //camera states for 'cinematic dialogue'
    public bool zoomedOut = true, zoomedIn;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        mainCam = GetComponent<Camera>();
    }

    void Update()
    {
        //normal follow player 
        if (zoomedOut)
        {
            transform.position = new Vector3(_player.transform.position.x + zoomedOutPos.x,
            _player.transform.position.y + zoomedOutPos.y, _player.transform.position.z + zoomedOutPos.z);
            transform.localEulerAngles = zoomedOutRot;
            mainCam.fieldOfView = zoomedOutFOV;
        }
        if (zoomedIn)
        {
            transform.position = new Vector3(_player.transform.position.x + zoomedInPos.x,
            _player.transform.position.y + zoomedInPos.y, _player.transform.position.z + zoomedInPos.z);
            transform.localEulerAngles = zoomedInRot;
            mainCam.fieldOfView = zoomedInFOV;
        }
           

    }


}
