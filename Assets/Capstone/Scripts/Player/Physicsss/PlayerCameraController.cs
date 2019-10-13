using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerCameraController : MonoBehaviour {
    //player refs
    Transform playerTransform;
    ThirdPersonController tpc;
    Camera actualCam;
    //all the camera movement vars
    Quaternion targetLook;
    Vector3 horizontalRotation;
    Vector3 verticalRotation;
    //stores verticalRotation input and consistently sets it
    Vector3 yLook;
    Vector3 targetMove;
    Vector3 targetMoveUse;
    Vector3 smoothMoveV;

    [Header("Camera Characteristics")]
    public float rayHitMoveInFront = 0.1f;
    public float distanceFromPlayer = 5;
    public float distanceFromPlayerMin, distanceFromPlayerMax;
    public float heightFromPlayer = 3;
    public float heightMin, heightMax;
    public float yLookMin, yLookMax;
    public float zoomSpeed;
    public float yLookSpeed;
    float zoomInput;

    //all the ps4 feel variables
    [Header("Controller Move feel")]
    public float cameraRotationSpeedX = 5;
    public float cameraRotationSpeedY = 5;
    public float smoothLookOriginal, smoothMoveOriginal;
    public float smoothLook = 0.5f, smoothMove = 0.5f;
    public float turnSmooth = 0.1f, movingTurnSmooth;
    public float turnSmoothMove = 0.1f, movingTurnSmoothMove;

    //all the alternative mouse variables
    [Header("Mouse feel vars")]
    public bool mouseControls;
    public float cameraRotationSpeedXMouse = 5;
    public float cameraRotationSpeedYMouse = 5;

    public float mSmoothLookOriginal, mSmoothMoveOriginal;
    public float mSmoothLook = 0.5f, mSmoothMove = 0.5f;
    public float mTurnSmoothLook = 0.1f, mMovingTurnSmoothLook;
    public float mTurnSmoothMove = 0.1f, mMovingTurnSmoothMove;

    // for boat stuff
    [Header("Camera Limits")]
    public bool canLook;
    public LayerMask obstructionMask;

    //for lerping fov 
    [Header("FOV")]
    public bool lerpingFOV;
    public float desiredFOV, lerpFOVspeed;
    float lerpCounter;

    void Start () {
        //player refs set
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        tpc = playerTransform.GetComponent<ThirdPersonController>();
        actualCam = GetComponent<Camera>();

        //set original smooth vals 
        smoothLookOriginal = smoothLook;
        smoothMoveOriginal = smoothMove;
        mSmoothLookOriginal = mSmoothLook;
        mSmoothMoveOriginal = mSmoothMove;

        //set cursor
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }
	
	void LateUpdate ()
    {
        //lets set up right analogue stick to enable us to rotate the camera around player and redirect motion as we do so
        horizontalRotation = Vector3.zero;
        verticalRotation = Vector3.zero;

        //not true until out of start view
        if (canLook)
        {
            targetMove = playerTransform.position + (playerTransform.rotation * new Vector3(0, heightFromPlayer, -distanceFromPlayer));

            //as the player turns their body more intensely, we want to simultaneously increase smoothMove

            if (mouseControls)
            {
                transform.position = Vector3.Lerp(transform.position, targetMove, mSmoothMove * Time.deltaTime);
            }
            else
            {
                transform.position = Vector3.Lerp(transform.position, targetMove, smoothMove * Time.deltaTime);
            }
            
            //using mouse and WASD
            if (mouseControls)
            {
                horizontalRotation = new Vector3(0, Input.GetAxis("mouse x") * cameraRotationSpeedXMouse, 0);
                verticalRotation = new Vector3(0, Input.GetAxis("mouse y") * cameraRotationSpeedYMouse, 0);
            }
            //using ps4 controller
            else
            {
                horizontalRotation = new Vector3(0, Input.GetAxis("Mouse X") * cameraRotationSpeedX, 0);
                verticalRotation = new Vector3(0, Input.GetAxis("Mouse Y") * cameraRotationSpeedY, 0);
            }

            //if mouse up and yLook is less than yLookMax
            if (verticalRotation.y > 0.25f && yLook.y < yLookMax)
            {
                yLook = Vector3.Lerp(yLook, yLook + verticalRotation, Time.deltaTime * yLookSpeed);
            }
            //if mouse down and yLook is greater than yLookMin
            if (verticalRotation.y < -0.25f && yLook.y > yLookMin)
            {
                yLook = Vector3.Lerp(yLook, yLook + verticalRotation, Time.deltaTime * yLookSpeed);
            }

            

            //add yLook to the player pos, then subtract cam pos to get the forward look
            targetLook = Quaternion.LookRotation((playerTransform.position + yLook) - transform.position);


            if (mouseControls)
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, mSmoothLook * Time.deltaTime);
            }
            else
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, smoothLook * Time.deltaTime);

            }

            //ONLY GETS ZOOM INPUT IN CANLOOK
            //grab input from scroll wheel axis
            zoomInput = Input.GetAxis("Mouse ScrollWheel");

            //zoom in
            if (zoomInput < 0 && heightFromPlayer > heightMin)
            {
                Debug.Log("zoom in");
                ZoomIn(zoomInput);
            }
            //and out
            if (zoomInput > 0 && heightFromPlayer < heightMax)
            {
                Debug.Log("zoom out");
                ZoomOut(zoomInput);
            }

            heightFromPlayer = Mathf.Clamp(heightFromPlayer, heightMin, heightMax);

            CastToPlayer();

            //rotate the player's body
            playerTransform.Rotate(horizontalRotation);

            AlterSmoothValues();
        }

        //for lerping cam FOV 
        if (lerpingFOV)
        {
            actualCam.fieldOfView = Mathf.Lerp(actualCam.fieldOfView, desiredFOV, Time.deltaTime * lerpFOVspeed);

            lerpCounter += Time.deltaTime;

            if(lerpCounter > 3f)
            {
                lerpingFOV = false;
            }
        }
    }
    
    void ZoomIn(float zoom)
    {
        float newHeight = heightFromPlayer + (zoomSpeed * Time.deltaTime * zoom);
        heightFromPlayer = Mathf.Lerp(heightFromPlayer, newHeight, zoomSpeed * Time.deltaTime);

        if(distanceFromPlayer > distanceFromPlayerMin)
        {
            float newZ = distanceFromPlayer + (zoomSpeed * Time.deltaTime * (zoom / 2));
            distanceFromPlayer = Mathf.Lerp(distanceFromPlayer, newZ, zoomSpeed * Time.deltaTime);
        }
        else
        {
            distanceFromPlayer = distanceFromPlayerMin;
        }

        //see fuurther as it zooms in
        if (actualCam.farClipPlane < 1500)
            actualCam.farClipPlane += zoomSpeed * Time.deltaTime * 3;
    }

    void ZoomOut(float zoom)
    {
        float newHeight = heightFromPlayer + (zoomSpeed * Time.deltaTime * zoom);
        heightFromPlayer = Mathf.Lerp(heightFromPlayer, newHeight, zoomSpeed * Time.deltaTime);

        if(distanceFromPlayer < distanceFromPlayerMax)
        {
            float newZ = distanceFromPlayer + (zoomSpeed * Time.deltaTime * (zoom / 2));
            distanceFromPlayer = Mathf.Lerp(distanceFromPlayer, newZ, zoomSpeed * Time.deltaTime);
        }
        else
        {
            distanceFromPlayer = distanceFromPlayerMax;
        }

        //see less as it zooms out
        if (actualCam.farClipPlane > 500)
            actualCam.farClipPlane -= zoomSpeed * Time.deltaTime * 3;
    }

    //detects whether cam is seeing ground in front of player somehw
    void CastToPlayer()
    {
        RaycastHit hit = new RaycastHit();
        Vector3 dir = playerTransform.position - transform.position;
        float dist = Vector3.Distance(transform.position, playerTransform.position);
        //send raycast
        if (Physics.Raycast(transform.position, dir, out hit, dist , obstructionMask))
        {
            //anytime we hit the ground or a building, zoome out 
            if(hit.transform.gameObject.layer == 20 || hit.transform.gameObject.layer == 24)
            {
                if(heightFromPlayer < heightMax)
                    ZoomOut(0.05f);
            }
            //if it hits a tree, zoom in 
            if(hit.transform.gameObject.tag == "Tree")
            {
                if(heightFromPlayer > heightMin)
                    ZoomIn(-0.025f);
            }
        }
    }

    void AlterSmoothValues()
    {
        //ps4 smooth move 
        if (!mouseControls)
        {
            //if player is not moving and we are rotating, rotate FASTER
            if (tpc.horizontalInput.magnitude == 0 && horizontalRotation.magnitude > 0)
            {
                smoothLook = turnSmooth;
                smoothMove = turnSmoothMove;
            }
            //if player moving AND we rotating, rotate MEDIUM
            else if (tpc.horizontalInput.magnitude > 0 && horizontalRotation.magnitude > 0)
            {
                smoothLook = movingTurnSmooth;
                smoothMove = movingTurnSmoothMove;
            }
            //leave the values as is when player moving
            else if (horizontalRotation.magnitude == 0)
            {
                smoothLook = smoothLookOriginal;
                smoothMove = smoothMoveOriginal;
            }
        }
        //mouse 
        else
        {
            //if player is not moving and we are rotating, rotate FASTER
            if (tpc.forwardInput.magnitude == 0 && (horizontalRotation.magnitude > 0 || tpc.horizontalInput.magnitude > 0))
            {
                mSmoothLook = mTurnSmoothLook;
                mSmoothMove = mTurnSmoothMove;
            }
            //if player moving AND we rotating, rotate MEDIUM
            else if (tpc.forwardInput.magnitude > 0 && (horizontalRotation.magnitude > 0 || tpc.horizontalInput.magnitude > 0))
            {
                mSmoothLook = mMovingTurnSmoothLook;
                mSmoothMove = mMovingTurnSmoothMove;
            }
            //leave the values as is when player moving
            else if (horizontalRotation.magnitude == 0 && tpc.horizontalInput.magnitude == 0)
            {
                mSmoothLook = mSmoothLookOriginal;
                mSmoothMove = mSmoothMoveOriginal;
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
