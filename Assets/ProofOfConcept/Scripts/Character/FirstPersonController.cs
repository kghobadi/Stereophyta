using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonController : MonoBehaviour
{
    public bool rightClickToMove;

    public float speed;
    public float sprintSpeed;
    public float scrollSpeed = 2.0f;
    CharacterController player;

    public bool isAwake;
    
    public bool isHoldingSeed;

    //public Animation pickAxe;
    //public AudioSource miner;
    //public AudioClip mining;

    //public ParticleSystem rockBits;
    Vector3 movement;

    float moveForwardBackward;
    float moveLeftRight;
    float moveUpDown;

    public AudioClip[] currentFootsteps, indoorFootsteps, gardenFootsteps, pathFootsteps;
    AudioSource cameraAudSource;

	public openDoor doorBool;

    Vector3 targetPosition; // for point to click

    public bool indoors, garden, path;
    

    //public int rockCounter;
    //public bool IAmMining = false;


    void Start()
    {
        player = GetComponent<CharacterController>();
        cameraAudSource = Camera.main.GetComponent<AudioSource>();
        indoors = true;
        currentFootsteps = indoorFootsteps;
    }

    void Update()
    {
        //if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
        //{
        //    speed = sprintSpeed;
        //}
        //else
        //{
        //    speed = 10f;
        //}
        if (!rightClickToMove)
        {
            moveForwardBackward = Input.GetAxis("Vertical") * speed;
            moveLeftRight = Input.GetAxis("Horizontal") * speed;
            moveUpDown = Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
            if ((moveForwardBackward != 0 || moveLeftRight != 0) && !cameraAudSource.isPlaying)
            {
                PlayFootStepAudio();
            }

            movement = new Vector3(moveLeftRight, moveUpDown, moveForwardBackward);
        }
        if (rightClickToMove)
        {
            if (Input.GetMouseButton(1))
            {
                movement = new Vector3(0, 0, 1 * speed);
                if (!cameraAudSource.isPlaying)
                {
                    PlayFootStepAudio();
                }
            }
            else
            {
                movement = Vector3.zero;
            }
        }
        

        movement = transform.rotation * movement;
        player.Move(movement * Time.deltaTime);

        player.Move(new Vector3(0, -0.5f, 0));



    }

    private void PlayFootStepAudio()
    {
        int n = Random.Range(1, currentFootsteps.Length);
        cameraAudSource.clip = currentFootsteps[n];
        cameraAudSource.PlayOneShot(cameraAudSource.clip, 0.1f);
        // move picked sound to index 0 so it's not picked next time
        currentFootsteps[n] = currentFootsteps[0];
        currentFootsteps[0] = cameraAudSource.clip;
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "GardenTrigger" && !garden)
        {
            currentFootsteps = gardenFootsteps;
            garden = true;
            path = false;
            indoors = false;
        }
        if (other.gameObject.tag == "IndoorTrigger" && !indoors)
        {
            currentFootsteps = indoorFootsteps;
            indoors = true;
            garden = false;
            path = false;
        }
        if (other.gameObject.tag == "PathTrigger" && !path)
        {
            currentFootsteps = pathFootsteps;
            path = true;
            garden = false;
            indoors = false;
        }
		if (other.gameObject.tag == "Door") {
			doorBool.open = true;
		}
    }
	void OnTriggerExit(Collider other){
		if (other.gameObject.tag == "Door") {
			doorBool.open = false;
		}
	}



}
