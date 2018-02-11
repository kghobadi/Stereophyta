using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour
{
    GameObject _player;
    float currentXDist = -4, currentYDist=7, currentZDist = -4; //away from player
    int cameraPos;

    Vector3 origPos, desiredPos, origRotation, desiredRotation;

    bool switchingCam;
    public float camSpeed, camRotSpeed;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        transform.position = new Vector3(_player.transform.position.x - 4, _player.transform.position.y + 7, _player.transform.position.z - 4);
        //transform.LookAt(_player.transform);
        cameraPos = 0;
    }

    //make a bool for cutscene

    void Update()
    {
        //both keysets can rotate the camera in diff directions 
        if(!switchingCam && (Input.GetKeyDown(KeyCode.A) || Input.GetKeyDown(KeyCode.LeftArrow)))
        {
            if (cameraPos > 0)
            {
                cameraPos -= 1;
                desiredRotation = transform.localEulerAngles + new Vector3(0, -90, 0);
            }
            else
            {
                cameraPos = 3;
                desiredRotation = transform.localEulerAngles + new Vector3(0, 270, 0);
            }
            SwitchCamPos();


        }
        if (!switchingCam && (Input.GetKeyDown(KeyCode.D) || Input.GetKeyDown(KeyCode.RightArrow)))
        {
            
            if (cameraPos < 3)
            {
                cameraPos += 1;
                desiredRotation = transform.localEulerAngles + new Vector3(0, 90, 0);
            }
            else
            {
                cameraPos = 0;
                desiredRotation = transform.localEulerAngles - new Vector3(0, 270, 0);
            }
            SwitchCamPos();
        }

        //while in this state, the camera moves towards the desiredPos and desiredRot
        if (switchingCam)
        {
            desiredPos = new Vector3(_player.transform.position.x + currentXDist,
            _player.transform.position.y + currentYDist, _player.transform.position.z + currentZDist);
            if (transform.position != desiredPos || Vector3.Distance(transform.localEulerAngles, desiredRotation) > 1)
            {
                transform.position = Vector3.MoveTowards(transform.position, desiredPos, camSpeed * Time.deltaTime);
                transform.localEulerAngles = Vector3.MoveTowards(transform.localEulerAngles, desiredRotation, camRotSpeed * Time.deltaTime);
            }
            else
            {
                switchingCam = false;
            }
        }
        else
        {
            transform.position = new Vector3(_player.transform.position.x + currentXDist,
            _player.transform.position.y + currentYDist, _player.transform.position.z + currentZDist);
        }

    }
    //these values are used to set the camera position between the 4 different viewpoints
    void SwitchCamPos()
    {
        switch (cameraPos)
        {
            case 0:
                currentXDist = -4;
                currentZDist = -4;
                break;
            case 1:
                currentXDist = -4;
                currentZDist = 4;
                break;
            case 2:
                currentXDist = 4;
                currentZDist = 4;
                break;
            case 3:
                currentXDist = 4;
                currentZDist = -4;
                break;
        }
        desiredPos =  new Vector3(_player.transform.position.x + currentXDist, 
            _player.transform.position.y + currentYDist, _player.transform.position.z + currentZDist);
        switchingCam = true;
    }

    public void CutScene()
    {

    }

}
