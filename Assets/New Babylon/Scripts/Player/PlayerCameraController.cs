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
    public bool mouseControls;

    [Header("Free Look Cam Rig Settings")]
    public bool canSwitchCams;
    public float switchTimer = 0, switchTotal = 0.25f;
    public GameCamera closeUpCam;
    public GameCamera zInCam;
    CinemachineFreeLook zInfreeLookCam;
    public GameCamera zOutCam;
    CinemachineFreeLook zOutfreeLookCam;
    float zoomInput;
    
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

        CastToPlayer();

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
     
        //grab input from scroll wheel axis
        if (mouseControls)
        {
            zoomInput = Input.GetAxis("Mouse ScrollWheel");
        }
        //zoom with left and right triggers 
        else
        {
            if (inputDevice.LeftTrigger.IsPressed)
            {
                zoomInput = Mathf.Clamp(-inputDevice.LeftTrigger.Value, -1f, 0f);
            }
            if (inputDevice.RightTrigger.IsPressed)
            {
                zoomInput = Mathf.Clamp(inputDevice.RightTrigger.Value, 0f, 1f);
            }
        }

        //can switch 
        if (canSwitchCams)
        {
            //zoom in
            if (zoomInput < 0)
            {
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
            //zoom out
            if (zoomInput > 0)
            {
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