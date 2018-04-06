using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour
{
    GameObject _player;
    //camera states for 'cinematic dialogue'
    public Vector3 zoomedOutPos, zoomedOutRot, zoomedInPos, zoomedInRot;
    public float zoomedOutFOV, zoomedInFOV;
    public bool zoomedOut = true, zoomedIn;
    //camera ref
    Camera mainCam;
    

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
            transform.SetParent(null);
            transform.position = new Vector3(_player.transform.position.x + zoomedOutPos.x,
            _player.transform.position.y + zoomedOutPos.y, _player.transform.position.z + zoomedOutPos.z);
            transform.localEulerAngles = zoomedOutRot;
            mainCam.fieldOfView = zoomedOutFOV;
        }
        if (zoomedIn)
        {
            transform.SetParent(_player.transform);
            transform.localPosition = zoomedInPos;
            transform.localEulerAngles = zoomedInRot;
            mainCam.fieldOfView = zoomedInFOV;
        }
           

    }


}
