using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class plant : MonoBehaviour {
    GameObject _player;
    public AudioClip[] musicalNotes;
    AudioClip currentNote;
    AudioSource plantAudio;

    ParticleSystem notesPlaying;

    MeshRenderer mr;
    public int plantNum;

	void Start () {
        _player = GameObject.FindGameObjectWithTag("Player");

        plantAudio = GetComponent<AudioSource>();
        mr = GetComponent<MeshRenderer>();
        notesPlaying = GetComponentInChildren<ParticleSystem>();
        notesPlaying.Stop();
        transform.localScale = new Vector3(transform.localScale.x, transform.localScale.y + plantNum, transform.localScale.z);
        
        switch (plantNum)
        {
            case 0:
                mr.material.color = Color.red;
                break;
            case 1:
                mr.material.color = Color.green;
                break;
            case 2:
                mr.material.color = Color.blue;
                break;
            case 3:
                mr.material.color = Color.cyan;
                break;
            case 4:
                mr.material.color = Color.yellow;
                break;
        }

    }

    void Update()
    {
        if (plantAudio.isPlaying)
        {
            notesPlaying.Emit(1);
        }
        if(Vector3.Distance(transform.position, _player.transform.position) > plantAudio.maxDistance + 10)
        {
            plantAudio.Stop();
        }
    }

    public void PlaySound()
    {
        currentNote = musicalNotes[plantNum];
        if (!plantAudio.isPlaying )
            plantAudio.PlayOneShot(currentNote);
    }
}
