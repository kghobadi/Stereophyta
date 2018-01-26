using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class plant : MonoBehaviour {

    public AudioClip[] musicalNotes;
    AudioClip currentNote;
    AudioSource plantAudio;

    MeshRenderer mr;

	void Start () {
        plantAudio = GetComponent<AudioSource>();
        mr = GetComponent<MeshRenderer>();
        int randomNum = Random.Range(0, musicalNotes.Length);
        currentNote = musicalNotes[randomNum];
        switch (randomNum)
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

    public void PlaySound()
    {
        if(!plantAudio.isPlaying)
            plantAudio.PlayOneShot(currentNote);
    }
}
