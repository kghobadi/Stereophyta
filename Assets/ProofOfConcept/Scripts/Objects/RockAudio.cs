using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockAudio : MonoBehaviour {

    AudioSource audioSource;
    GameObject _player;

    void Start () {
        audioSource = GetComponent<AudioSource>();
        _player = GameObject.FindGameObjectWithTag("Player");

        if (!audioSource.isPlaying)
        {
            audioSource.Play();
            audioSource.loop = true;
        }
		
	}
	
	// Update is called once per frame
	void Update () {
        if(Vector3.Distance(transform.position, _player.transform.position) > audioSource.maxDistance)
        {
            audioSource.Stop();
        }
        else if(Vector3.Distance(transform.position, _player.transform.position) < audioSource.maxDistance && !audioSource.isPlaying)
        {
            audioSource.Play();
            audioSource.loop = true;
        }
		
	}
}
