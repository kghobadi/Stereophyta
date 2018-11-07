using UnityEngine;
using System.Collections;

public class PlayerCameraController : MonoBehaviour {

    Transform playerTransform;
    Quaternion targetLook;
    Vector3 targetMove;
    public float rayHitMoveInFront = 0.1f;
    Vector3 targetMoveUse;
    public float smoothLook = 0.5f;
    public float smoothMove = 0.5f;
    Vector3 smoothMoveV;
    public float distanceFromPlayer = 5;
    public float distanceFromPlayerMax;
    public float heightFromPlayer = 3;
    public float zoomSpeed = 2;


    
	void Start () {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        distanceFromPlayerMax = distanceFromPlayer;
	}
	
	void LateUpdate ()
    {
        targetMove = playerTransform.position + (playerTransform.rotation * new Vector3(0, heightFromPlayer, -distanceFromPlayer));

        //basically, as the player turns their body more intensely, we want to simultaneously increase smoothMove

        transform.position = Vector3.Lerp(transform.position, targetMove, smoothMove * Time.deltaTime);

        targetLook = Quaternion.LookRotation(playerTransform.position - transform.position);
        transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, smoothLook * Time.deltaTime);


        //lets set up right analogue stick to enable us to rotate the camera around player and redirect motion as we do so

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
