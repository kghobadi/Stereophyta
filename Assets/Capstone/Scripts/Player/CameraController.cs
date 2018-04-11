using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour
{
    GameObject _player;
    //camera states for 'cinematic dialogue'
    public Vector3 zoomedOutPos, zoomedOutRot, zoomedInPos, zoomedInRot;
    public float zoomedOutFOV, zoomedOutClip, zoomedInFOV, zoomedInClip;
    public bool zoomedOut = true, zoomedIn;
    //camera ref
    Camera mainCam;

    public Transform npcTransform;
    

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
            mainCam.nearClipPlane = zoomedOutClip;
        }
        if (zoomedIn)
        {
            transform.SetParent(_player.transform);
            _player.transform.LookAt(new Vector3(npcTransform.position.x, _player.transform.position.y, npcTransform.position.z));
            transform.localPosition = zoomedInPos;
            transform.localEulerAngles = zoomedInRot;
            mainCam.nearClipPlane = zoomedInClip;
            mainCam.fieldOfView = zoomedInFOV;
        }
           

    }


}
