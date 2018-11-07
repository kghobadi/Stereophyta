using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerController : MonoBehaviour
{
    public float movespeed = 5;
    public float movespeedSmooth = 0.3f;
    public float rotateSpeed = 10;
    public float rotateSpeedSmooth = 0.3f;
    public float jumpSpeed = 20;
    public float jumpAllowTime = 0.1f;
    float jumpAllowTimer;
    public float airControlSmooth = 0.8f;
    public float gravity = 9.8f;

    float moveSmoothUse;

    float currentForwardSpeed;
    float forwardSpeedV;
    
    float targetRotation;
    float currentRotation;
    float rotationV;
    
    Vector3 currentMovement;
    CharacterController controller;
    Transform cameraTransform;
    float verticalSpeed;
    Vector3 currentMovementV;

    public Animator poopShoes;

    AudioSource audioSource;
    public AudioClip[] jumpSounds;

    void Start ()
    {
        jumpAllowTimer = jumpAllowTime;
        moveSmoothUse = movespeedSmooth;
        controller = GetComponent<CharacterController>();
        cameraTransform = Camera.main.transform;
        audioSource = GetComponent<AudioSource>();
    
        poopShoes.SetBool("idle", true);
        poopShoes.SetBool("running", false);
        poopShoes.SetBool("jumping", false);
    }

    void Update()
    {
        //PS4 Controls
        Vector3 horizontalInput = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        if (horizontalInput.magnitude > 1)
        {
            horizontalInput.Normalize();
        }
        if(horizontalInput.magnitude > 0)
        {
            poopShoes.SetBool("idle", false);
            poopShoes.SetBool("running", true);
            poopShoes.SetBool("jumping", false);
        }
        else
        {
            poopShoes.SetBool("idle", true);
            poopShoes.SetBool("running", false);
            poopShoes.SetBool("jumping", false);
        }
           
        Vector3 targetHorizontalMovement = horizontalInput;
        targetHorizontalMovement = cameraTransform.rotation * targetHorizontalMovement;
        targetHorizontalMovement.y = 0;
        targetHorizontalMovement.Normalize();
        targetHorizontalMovement *= horizontalInput.magnitude;
        
        currentMovement = Vector3.SmoothDamp(currentMovement, targetHorizontalMovement * movespeed, ref currentMovementV, moveSmoothUse);

        Quaternion targetRotationQ = Quaternion.LookRotation(Vector3.forward);
        if (new Vector3(currentMovement.x, 0, currentMovement.z).magnitude > 1)
        {
            targetRotationQ = Quaternion.LookRotation(new Vector3(currentMovement.x, 0, currentMovement.z));
            transform.rotation = Quaternion.Euler(0, Mathf.SmoothDampAngle(transform.rotation.eulerAngles.y, targetRotationQ.eulerAngles.y, ref rotationV, rotateSpeedSmooth), 0);
        }

        if (controller.isGrounded)
        {
            moveSmoothUse = movespeedSmooth;
            verticalSpeed = 0;
            jumpAllowTimer = jumpAllowTime;
            if(poopShoes.GetBool("jumping") == true)
            {
                poopShoes.SetBool("idle", true);
                poopShoes.SetBool("jumping", false);
            }
        }
            
        if (!controller.isGrounded)
        {
            moveSmoothUse = airControlSmooth;
            verticalSpeed -= gravity * Time.deltaTime;
            jumpAllowTimer -= Time.deltaTime;
           
        }

        if (jumpAllowTimer >= 0 && Input.GetButtonDown("Jump"))
        {
            if (!audioSource.isPlaying)
                PlaySound(0);
            verticalSpeed = jumpSpeed;
            poopShoes.SetBool("idle", false);
            poopShoes.SetBool("running", false);
            poopShoes.SetBool("jumping", true);
        }
           

        currentMovement.y = verticalSpeed;

        controller.Move(currentMovement * Time.deltaTime);

    }

    void PlaySound(int clip)
    {
        audioSource.PlayOneShot(jumpSounds[clip]);
    }



}