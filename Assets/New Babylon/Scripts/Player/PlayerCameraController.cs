using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;
using Cinemachine;
using Cameras;

public class PlayerCameraController : MonoBehaviour
{
    //player refs
    Transform playerTransform;
    ThirdPersonController tpc;
    Camera actualCam;
    CameraManager camManager;
    StartView startViewer;

    [Header("Free Look Cam Rig Settings")]
    public bool canSwitchCams;
    public float switchTimer = 0, switchTotal = 0.25f;
    public GameCamera closeUpCam;
    public GameCamera zInCam;
    CinemachineFreeLook zInfreeLookCam;
    public GameCamera zOutCam;
    CinemachineFreeLook zOutfreeLookCam;
    
    // for boat stuff
    [Header("Camera Limits")]
    public float rayHitMoveInFront = 0.1f;
    public LayerMask obstructionMask;

    //for lerping fov 
    [Header("FOV")]
    public bool lerpingFOV;
    public float desiredFOV, lerpFOVspeed;
    float lerpCounter;

    void Awake()
    {
        //player refs set
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        tpc = playerTransform.GetComponent<ThirdPersonController>();
        //set cameras
        actualCam = Camera.main;
        camManager = FindObjectOfType<CameraManager>();
        startViewer = FindObjectOfType<StartView>();
        //get free looks
        zInfreeLookCam = zInCam.GetComponent<CinemachineFreeLook>();
        zOutfreeLookCam = zOutCam.GetComponent<CinemachineFreeLook>();
    }

    void Start()
    {
        //set cursor
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    void LateUpdate()
    {
        ZoomInputs();

        //counter for zooming cams
        if(canSwitchCams == false)
        {
            switchTimer -= Time.deltaTime;

            if(switchTimer < 0)
            {
                canSwitchCams = true;
            }
        }

        //for lerping cam FOV 
        if (lerpingFOV)
        {
            actualCam.fieldOfView = Mathf.Lerp(actualCam.fieldOfView, desiredFOV, Time.deltaTime * lerpFOVspeed);

            lerpCounter += Time.deltaTime;

            if (lerpCounter > 3f)
            {
                lerpingFOV = false;
            }
        }
    }

    //ONLY GETS ZOOM INPUT 
    void ZoomInputs()
    {
        //get input device 
        var inputDevice = InputManager.ActiveDevice;
     
        //only take switch input if not in start view 
        if(startViewer.active == false)
        {
            //controller
            if (inputDevice.DeviceClass == InputDeviceClass.Controller)
            {
                //zoom with left and right triggers 
                if (inputDevice.LeftTrigger.WasPressed)
                {
                    ZoomIn();
                }
                if (inputDevice.RightTrigger.WasPressed)
                {
                    ZoomOut();
                }
            }

            //keyboard + mouse 
            //zoom with plus and minus 
            if (Input.GetKeyDown(KeyCode.Minus))
            {
                //Debug.Log("zoom out!");
                ZoomOut();
            }
            if (Input.GetKeyDown(KeyCode.Equals))
            {
                //Debug.Log("zoom in!");
                ZoomIn();
            }
        }
    }

    void ZoomIn()
    {
        //can switch 
        if (canSwitchCams)
        {
            //Debug.Log("zoom in!");
            //zoom in from furthest to default
            if (camManager.currentCamera == zOutCam)
            {
                SwitchCamera(zInCam);
            }

            //zoom in for close up
            else if (camManager.currentCamera == zInCam)
            {
                SwitchCamera(closeUpCam);
            }
        }
    }

    void ZoomOut()
    {  
        //can switch 
        if (canSwitchCams)
        {
            //Debug.Log("zoom out!");
            //zoom out to furthest from default
            if (camManager.currentCamera == zInCam)
            {
                SwitchCamera(zOutCam);
            }

            //zoom out from close up
            else if (camManager.currentCamera == closeUpCam)
            {
                SwitchCamera(zInCam);
            }
        }
    }

    void SwitchCamera(GameCamera cam)
    {
        camManager.Set(cam);
        canSwitchCams = false;
        switchTimer = switchTotal;
    }
    
    //detects whether cam is seeing ground in front of player somehw
    void CastToPlayer()
    {
        RaycastHit hit = new RaycastHit();
        Vector3 dir = playerTransform.position - transform.position;
        float dist = Vector3.Distance(transform.position, playerTransform.position);
        //send raycast
        if (Physics.Raycast(transform.position, dir, out hit, dist, obstructionMask))
        {
            //anytime we hit the ground or a building, zoome out 
            if (hit.transform.gameObject.layer == 20 || hit.transform.gameObject.layer == 24)
            {
               
            }
            //if it hits a tree, zoom in 
            if (hit.transform.gameObject.tag == "Tree")
            {
               
            }
        }
    }
    
    //called here or elsewhere
    public void LerpFOV(float newFOV)
    {
        desiredFOV = newFOV;
        lerpCounter = 0;
        lerpingFOV = true;
    }
}