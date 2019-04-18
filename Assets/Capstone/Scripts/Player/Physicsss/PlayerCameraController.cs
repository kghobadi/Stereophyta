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
    //stores verticalRotation input and consistently sets it
    Vector3 yLook;
    Vector3 targetMove;
    public float rayHitMoveInFront = 0.1f;
    Vector3 targetMoveUse;
    Vector3 smoothMoveV;
    public float distanceFromPlayer = 5;
    public float distanceFromPlayerMax;
    public float heightFromPlayer = 3;
    public float heightMin, heightMax;
    public float yLookMin, yLookMax;
    public float zoomSpeed;

    //all the ps4 feel variables
    public float cameraRotationSpeedX = 5;
    public float cameraRotationSpeedY = 5;
    public float smoothLookOriginal, smoothMoveOriginal;
    public float smoothLook = 0.5f, smoothMove = 0.5f;
    public float turnSmooth = 0.1f, movingTurnSmooth;
    public float turnSmoothMove = 0.1f, movingTurnSmoothMove;

    //all the alternative mouse variables
    public bool mouseControls;
    public float cameraRotationSpeedXMouse = 5;
    public float cameraRotationSpeedYMouse = 5;

    public float mSmoothLookOriginal, mSmoothMoveOriginal;
    public float mSmoothLook = 0.5f, mSmoothMove = 0.5f;
    public float mTurnSmoothLook = 0.1f, mMovingTurnSmoothLook;
    public float mTurnSmoothMove = 0.1f, mMovingTurnSmoothMove;

    // for boat stuff
    public bool inBoat;

    void Start () {
        //player refs set
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        tpc = playerTransform.GetComponent<ThirdPersonController>();
        actualCam = GetComponent<Camera>();
        distanceFromPlayerMax = distanceFromPlayer;

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

        //lets set up right analogue stick to enable us to rotate the camera around player and redirect motion as we do so
        Vector3 horizontalRotation;
        Vector3 verticalRotation;

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
        if(verticalRotation.y > 0.25f && yLook.y < yLookMax)
        {
            yLook += verticalRotation;
        }
        //if mouse down and yLook is greater than yLookMin
        if (verticalRotation.y < -0.25f && yLook.y > yLookMin)
        {
            yLook += verticalRotation;
        }

        //add yLook to the player pos, then subtract cam pos to get the forward look
        targetLook = Quaternion.LookRotation((playerTransform.position + yLook) - transform.position) ;
        

        if (mouseControls)
        {
            transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, mSmoothLook * Time.deltaTime);
        }
        else
        {
            transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, smoothLook * Time.deltaTime);
           
        }

        float zoomInput = Input.GetAxis("Mouse ScrollWheel");

        //zoom in
        if (zoomInput < 0 && heightFromPlayer > heightMin)
        {
            float newHeight = heightFromPlayer + (zoomSpeed * Time.deltaTime * zoomInput);
            heightFromPlayer = Mathf.Lerp(heightFromPlayer, newHeight, zoomSpeed * Time.deltaTime );
            //see fuurther as it zooms in
            if (actualCam.farClipPlane < 1000)
                actualCam.farClipPlane += zoomSpeed * Time.deltaTime * 3;
        }
        //and out
        if (zoomInput > 0 && heightFromPlayer < heightMax)
        {
            float newHeight = heightFromPlayer + (zoomSpeed * Time.deltaTime * zoomInput);
            heightFromPlayer = Mathf.Lerp(heightFromPlayer, newHeight, zoomSpeed * Time.deltaTime);
            //see less as it zooms out
            if(actualCam.farClipPlane > 500)
                actualCam.farClipPlane -= zoomSpeed * Time.deltaTime * 3;
        }

        //rotate the player's body
        playerTransform.Rotate(horizontalRotation);

        //Debug.Log(verticalRotation);
        //transform.Rotate(-verticalRotation, 0, 0);

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
       

        //for y axis of right analogue, want to be able to set camera look up and down.
        //pushing stick up moves camera down closer to and behind player, 
        //while moving it down looks down at player and moves camera up? or the reverse...

    }
}
