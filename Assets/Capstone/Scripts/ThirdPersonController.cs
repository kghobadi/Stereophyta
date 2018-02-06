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

    public bool isHoldingSomething;

    Animator blubAnimator;

    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();
        origPosition = transform.position;
        terrain = GameObject.FindGameObjectWithTag("Ground");

        targetPosition = transform.position;
        blubAnimator = GetComponentInChildren<Animator>();
        blubAnimator.SetBool("walking", false);
    }

    void Update()
    {
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
                    targetPosition = hit.point + new Vector3(0, 1, 0);
                    Debug.Log(targetPosition);
                    if (targetPosition.y < 3)
                    {
                        isMoving = true;
                    }
                }
                else if (Vector3.Distance(transform.position, hit.point) > 5 && 
                    (hit.transform.gameObject.tag == "WindGen" || hit.transform.gameObject.tag == "Plant" || hit.transform.gameObject.tag == "Seed")) 
                    // use if statement for interactable stuff which the player should auto walk towards
                {
                    targetPosition = hit.point + new Vector3(1, -1, 1);
                    Debug.Log(targetPosition);
                    if (targetPosition.y < 3)
                    {
                        isMoving = true;
                    }
                }
            }
        }

        if (isMoving && targetPosition.y < 3)
        {
            MovePlayer();
            blubAnimator.SetBool("walking", true);
        }
        else
        {
            blubAnimator.SetBool("walking", false);
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
