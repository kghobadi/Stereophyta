using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
    //player vars
    GameObject player;
    ThirdPersonController tpc;
    //distance checks
    public float currentDistance, openDistance, openDistanceOut, openDistanceIn;
    //open state & animator
    public bool open;
    Animator doorAnimator;
    //audio
    AudioSource doorAudio;
    public AudioClip doorOpen, doorClose;

    void Start()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        //comp refs
        doorAnimator = GetComponent<Animator>();
        doorAudio = GetComponent<AudioSource>();
    }

    void Update()
    {
        //distance check
        currentDistance = Vector3.Distance(player.transform.position, transform.position);

        //checks whether player is inside or outside the door using z pos
        if (player.transform.position.x < transform.position.x)
        {
            openDistance = openDistanceIn;
        }
        else
        {
            openDistance = openDistanceOut;
        }

        //if player is near, set door to open and play a sound
        if (currentDistance < openDistance)
        {
            doorAnimator.SetBool("open", true);
            if (!open)
            {
                open = true;
                PlaySound(doorOpen);
            }
        }
        //if player has walked away, set door to close and play a sound
        else if (currentDistance > (openDistance + 1))
        {
            doorAnimator.SetBool("open", false);
            if (open)
            {
                open = false;
                PlaySound(doorClose);
            }
        }
    }

    void PlaySound(AudioClip sound)
    {
        doorAudio.PlayOneShot(sound);
    }
}