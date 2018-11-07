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
    public float heightFromPlayer = 3;
    public float zoomSpeed = 2;


    
	void Start () {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        
	}
	
	void LateUpdate ()
    {
        targetMove = playerTransform.position + (playerTransform.rotation * new Vector3(0, heightFromPlayer, -distanceFromPlayer));

        RaycastHit hit;
        if (Physics.Raycast(playerTransform.position, targetMove - playerTransform.position, out hit, Vector3.Distance(playerTransform.position, targetMove))) 
            targetMoveUse = Vector3.Lerp(hit.point, playerTransform.position, rayHitMoveInFront);
        else
            targetMoveUse = targetMove;

        //LERP FORMAT transform.position = Vector3.Lerp(transform.position, targetMove, smoothMove * Time.deltaTime);
        transform.position = Vector3.SmoothDamp(transform.position, targetMoveUse, ref smoothMoveV, smoothMove);

        targetLook = Quaternion.LookRotation(playerTransform.position - transform.position);
        transform.rotation = Quaternion.Lerp(transform.rotation, targetLook, smoothLook * Time.deltaTime);


        float zoomVal = Input.GetAxis("Mouse ScrollWheel");

        //Zoom Controls
        if (zoomVal > 0)
        {
            transform.Translate(0, zoomVal * zoomSpeed, zoomVal * zoomSpeed, Space.World);
            distanceFromPlayer -= 0.1f;
        }
        
        else if (zoomVal < 0)
        {
            transform.Translate(0, zoomVal * zoomSpeed, zoomVal * zoomSpeed, Space.World);
            distanceFromPlayer += 0.1f;
        }
       
       //camera clamps    
        if (distanceFromPlayer > 15)
            distanceFromPlayer = 15;
        if (distanceFromPlayer < 2)
            distanceFromPlayer = 2;

    }
}
