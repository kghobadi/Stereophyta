using UnityEngine;
using System.Collections;

public class PlayerCameraController : MonoBehaviour {

    Transform playerTransform;
    ThirdPersonController tpc;
    Quaternion targetLook;
    Vector3 targetMove;
    public float rayHitMoveInFront = 0.1f;
    Vector3 targetMoveUse;
    public float smoothLook = 0.5f, smoothLookOriginal = 0.5f;
    public float smoothMove = 0.5f, smoothMoveOriginal;
    Vector3 smoothMoveV;
    public float distanceFromPlayer = 5;
    public float distanceFromPlayerMax;
    public float heightFromPlayer = 3;
    public float zoomSpeed = 2;

    public float cameraRotationSpeedX = 5;
    public float turnSmooth = 0.1f, movingTurnSmooth;
    public float turnSmoothMove = 0.1f, movingTurnSmoothMove;

    void Start () {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        tpc = playerTransform.GetComponent<ThirdPersonController>();
        distanceFromPlayerMax = distanceFromPlayer;
        smoothLookOriginal = smoothLook;
        smoothMoveOriginal = smoothMove;
	}
	
	void LateUpdate ()
    {
        targetMove = playerTransform.position + (playerTransform.rotation * new Vector3(0, heightFromPlayer, -distanceFromPlayer));

        //basically, as the player turns their body more intensely, we want to simultaneously increase smoothMove

        transform.position = Vector3.Lerp(transform.position, targetMove, smoothMove * Time.deltaTime);

        targetLook = Quaternion.LookRotation(playerTransform.position - transform.position);
        transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, smoothLook * Time.deltaTime);

        //lets set up right analogue stick to enable us to rotate the camera around player and redirect motion as we do so

        Vector3 horizontalRotation = new Vector3(0, Input.GetAxis("Mouse X") * cameraRotationSpeedX, 0);

        //Debug.Log(horizontalRotation.y);

        playerTransform.Rotate(horizontalRotation);

        //if player is not moving and we are rotating, rotate FASTER
        if (tpc.horizontalInput.magnitude == 0 && horizontalRotation.magnitude > 0)
        {
            smoothLook = turnSmooth;
            smoothMove = turnSmoothMove;
            Debug.Log("new smoothers");
        }
        //if palyer moving AND we rotating, rotate MEDIUM
        else if(tpc.horizontalInput.magnitude > 0 && horizontalRotation.magnitude > 0)
        {
            smoothLook = movingTurnSmooth;
            smoothMove = movingTurnSmoothMove;
            Debug.Log("new smoothers");
        }
        //leave the values as is when player moving
        else if (horizontalRotation.magnitude == 0)
        {
            smoothLook = smoothLookOriginal;
            smoothMove = smoothMoveOriginal;
            //Debug.Log(Input.GetAxis("Mouse X"));
        }



        //for y axis of right analogue, want to be able to set camera look up and down.
        //pushing stick up moves camera down closer to and behind player, 
        //while moving it down looks down at player and moves camera up? or the reverse...


        //float zoomVal = Input.GetAxis("Mouse ScrollWheel");

        //Zoom Controls
        //if (zoomVal > 0)
        //{
        //    transform.Translate(0, zoomVal * zoomSpeed, zoomVal * zoomSpeed, Space.World);
        //    distanceFromPlayer -= 0.1f;
        //}

        //else if (zoomVal < 0)
        //{
        //    transform.Translate(0, zoomVal * zoomSpeed, zoomVal * zoomSpeed, Space.World);
        //    distanceFromPlayer += 0.1f;
        //}


        //weird smoothDamp method
        //RaycastHit hit;
        //if (Physics.Raycast(playerTransform.position, targetMove - playerTransform.position, out hit, Vector3.Distance(playerTransform.position, targetMove))) 
        //    targetMoveUse = Vector3.Lerp(hit.point, playerTransform.position, rayHitMoveInFront);
        //else
        //    targetMoveUse = targetMove;


        //transform.position = Vector3.SmoothDamp(transform.position, targetMoveUse, ref smoothMoveV, smoothMove);
    }
}
