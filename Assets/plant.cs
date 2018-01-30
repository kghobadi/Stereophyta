using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class plant : Interactable {
    //should always have same number of musical notes as tubules
    public AudioClip[] musicalNotes;
    public List<GameObject> tubules = new List<GameObject>();
    int currentNote;
    AudioClip currentSound;
    AudioSource plantAudio;

    ParticleSystem notesPlaying;
    

	public override void Start () {
        base.Start();
        interactable = true;
        plantAudio = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(0).GetComponent<ParticleSystem>() ; //grabs particle system
        notesPlaying.Stop();

        //counts up through plant children, adding these to the list of Tubules for later.
        if(transform.childCount > 1)
        {
            for (int i = 1; i < (transform.childCount); i++)
            {
                tubules.Add(transform.GetChild(i).gameObject);
            }
        }

        currentNote = Random.Range(0, musicalNotes.Length);
        currentSound = musicalNotes[currentNote]; //randomize note at start
        tubules[currentNote].transform.localScale *= 2;
        
    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        //shrinks current tubule
        tubules[currentNote].transform.localScale *= 0.5f;

        if (currentNote < (musicalNotes.Length - 1))
        {
            currentNote++;
        }
        else
        {
            currentNote = 0;
        }
        // chooses new note and enlarges tubule
        currentSound = musicalNotes[currentNote];
        tubules[currentNote].transform.localScale *= 2;
        Debug.Log(currentNote);
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
        if (!plantAudio.isPlaying )
            plantAudio.PlayOneShot(currentSound);
    }
}
