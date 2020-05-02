using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//For now birds are not connected to animal script because their movement is different and their audio
//This might become an abstract type if we want various bird types

public class Bird : AudioHandler {
    ThirdPersonController tpc;
    BirdAnimation birdAnim;
    [Header("Sounds")]
    public AudioClip[] birdSounds;
    public Transform birdBody;
    public float singingDist, singTimer, singTimerMin, singTimerMax;
    public ParticleSystem songParticles;
    ParticleSystem.MainModule soundsMain;

	void Start () {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        birdAnim = GetComponent<BirdAnimation>();

        singingDist = myAudioSource.maxDistance;
        singTimer = Random.Range(singTimerMin, singTimerMax);

        //set particle color to my mat color 
        if (songParticles)
        {
            soundsMain = songParticles.main;
            soundsMain.startColor = GetComponentInChildren<SetRandomMaterial>().assignedMat.color;
        }
    }
	
	void Update () {

        //transform.LookAt(new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z));
        //if near player, serenade
        if (Vector3.Distance(transform.position, tpc.transform.position) < singingDist)
        {
            singTimer -= Time.deltaTime;
            //look at player
            if(birdBody)
                birdBody.LookAt(tpc.transform.position, birdBody.up);
            else
                transform.LookAt(tpc.transform.position, Vector3.up);

            //play sound 
            if (!myAudioSource.isPlaying && singTimer < 0)
            {
                PlayRandomSound(birdSounds, myAudioSource.volume);
                singTimer = Random.Range(singTimerMin, singTimerMax);
            }
        }

        //adjust animator based on audio 
        if (myAudioSource.isPlaying)
        {
            if(songParticles.isPlaying == false)
            {
                birdAnim.SetAnimator("singing");
                songParticles.Play();
            }
            
        }
        else
        {
            if (songParticles.isPlaying)
            {
                birdAnim.SetAnimator("idle");
                songParticles.Stop();
            }
            
        }
    }
    
    
}
