using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonController : MonoBehaviour
{
    public float speed;
    public float scrollSpeed = 2.0f;
    CharacterController player;

    Vector3 movement;

    AudioSource cameraAudSource;

    private Vector3 targetPosition;
    private bool isMoving; // for point to click
    Vector3 origPosition;

    CameraController camControl;
    
    GameObject terrain;

    public LayerMask mask;

    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();
        origPosition = transform.position;
        terrain = GameObject.FindGameObjectWithTag("Ground");

        targetPosition = transform.position;
    }

    void Update()
    {
        //constant move to mouse pos
        //if (Input.GetMouseButton(0))
        //{
        //    movement = new Vector3(0, 0, 1 * speed);
        //    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        //    RaycastHit hit;

        //    if (Physics.Raycast(ray, out hit, 100, mask))
        //    {
        //        if (hit.transform.gameObject.tag == "Ground")
        //        {
        //            transform.LookAt(hit.point);
        //            movement = transform.rotation * movement;
        //            player.Move(movement * Time.deltaTime);

        //            player.Move(new Vector3(0, -0.5f, 0));
        //        }
        //    }
        //}

        //click to move to point
        if (Input.GetMouseButton(0))
        {
            movement = new Vector3(0, 0, 1 * speed);
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100, mask))
            {
                if (hit.transform.gameObject.tag == "Ground")
                {
                    targetPosition = hit.point + new Vector3(0,1,0);
                    isMoving = true;
                }
            }
        }

        if (isMoving)
        {
            MovePlayer();
        }
    }
   
    void MovePlayer()
    {
        transform.LookAt(targetPosition);
        transform.position = Vector3.MoveTowards(transform.position, targetPosition, speed * Time.deltaTime);
        
        if (Vector3.Distance(transform.position, targetPosition) < 0.01f)
        {
            transform.position = targetPosition;
            isMoving = false;
        }
    }


}
