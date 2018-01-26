using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonController : MonoBehaviour
{
    public float speed;
    public float scrollSpeed = 2.0f;
    CharacterController player;

    Vector3 movement;

    float moveForwardBackward;
    float moveLeftRight;
    float moveUpDown;

    AudioSource cameraAudSource;

    Vector3 targetPosition; // for point to click
    Vector3 origPosition;

    CameraController camControl;
    public GameObject plants;
    GameObject plantClone;
    GameObject terrain;

    public LayerMask mask;

    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        camControl = Camera.main.GetComponent<CameraController>();
        origPosition = transform.position;
        terrain = GameObject.FindGameObjectWithTag("Ground");

    }

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            movement = new Vector3(0, 0, 1 * speed);
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100, mask))
            {
                if (hit.transform.gameObject.tag == "Ground")
                {
                    transform.LookAt(hit.point);
                    movement = transform.rotation * movement;
                    player.Move(movement * Time.deltaTime);

                    player.Move(new Vector3(0, -0.5f, 0));
                }
            }
        }
        if (Input.GetKeyDown(KeyCode.Space) && transform.position.y < 10)
        {
            plantClone = Instantiate(plants, transform.position + new Vector3(0, 0, 1.5f), Quaternion.identity);
        }


       
    }
}