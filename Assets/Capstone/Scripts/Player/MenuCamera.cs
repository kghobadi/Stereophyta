using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MenuCamera : MonoBehaviour
{
    GameObject _player;
    public GameObject realPlayer;
    //camera states for 'cinematic dialogue'
    public Vector3 zoomedOutPos, zoomedOutRot;
    public float zoomedOutFOV, zoomedOutClip;
    public bool zoomedOut = true;
    //camera ref
    Camera mainCam;
    WorldManager worldMan;
    float origActDistance;

    public Transform npcTransform;
    public float moveSpeed = 5;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        origActDistance = worldMan.activationDistance;
        mainCam = GetComponent<Camera>();
    }

    void Update()
    {
        //normal follow cam player 
        if (zoomedOut)
        {
            transform.SetParent(null);
            Vector3 targetPos = new Vector3(_player.transform.position.x + zoomedOutPos.x,
           _player.transform.position.y + zoomedOutPos.y, _player.transform.position.z + zoomedOutPos.z);
            transform.position = targetPos;
            transform.localEulerAngles = zoomedOutRot;
            mainCam.fieldOfView = zoomedOutFOV;
            mainCam.nearClipPlane = zoomedOutClip;
            worldMan.activationDistance = origActDistance;
        }

        //zoom to player sleeping
        else
        {
            Vector3 targetPos = new Vector3(realPlayer.transform.position.x + zoomedOutPos.x,
            realPlayer.transform.position.y + zoomedOutPos.y, realPlayer.transform.position.z + zoomedOutPos.z);

            if (Vector3.Distance(transform.position, targetPos) > 5)
            {
                moveSpeed += Time.deltaTime;
                transform.position = Vector3.MoveTowards(transform.position, realPlayer.transform.position, moveSpeed * Time.deltaTime);
            }
            else
            {
                SceneManager.LoadScene("Neworld");
            }
            
        }

    }


}
