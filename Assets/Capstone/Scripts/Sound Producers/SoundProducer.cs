using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class SoundProducer : Interactable {

    public AudioClip[] musicalNotes;
    public List<GameObject> soundSources = new List<GameObject>();
    protected int particleCount;
    public int currentNote;
    public AudioClip currentSound;
    public AudioSource audioSource;

    protected ParticleSystem notesPlaying;
    
    protected Vector3 origScale;
    protected Vector3 startingPos;

    protected bool playerClick;


    public override void Start () {
        base.Start();
        interactable = true; //when should it be interactable? after # branches > 1
        audioSource = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(0).GetComponent<ParticleSystem>(); //grabs particle system
        //poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        if(notesPlaying != null)
            notesPlaying.Stop();
        //poofParticles.Stop();
	
        //interact sprites
        for (int i = 1; i < 3; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/touch " + i));
        }
        
        origScale = transform.localScale;
        startingPos = transform.position;

        //counts up through plant children, adding these to the list of Branches for later.
        if (transform.childCount > particleCount)
        {
            for (int i = particleCount; i < (transform.childCount); i++)
            {
                soundSources.Add(transform.GetChild(i).gameObject); //Going to be adding these one at a time in GrowPlant
            }
        }

        //randomize note at start
        currentNote = Random.Range(0, musicalNotes.Length);
        currentSound = musicalNotes[currentNote];
    }
	
	public override void Update () {
        base.Update();
        

        if(playerClicked)
        {
            playerClick = true;
        }
    }

    //ShiftNoteUp
    public override void Selection_One()
    {
        if (playerClicked)
        {
            base.Selection_One();

        }

        //shrinks current branch
        //first check if active
        if (soundSources[currentNote].activeSelf)
        {
			soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        }

        bool canPlayNote = false;

        while (!canPlayNote)
        {
            if (currentNote < (musicalNotes.Length - 1))
            {
                currentNote++;
            }
            else
            {
                currentNote = 0;
            }

            if (soundSources[currentNote].activeSelf)
                canPlayNote = true;
        }

        // chooses new note and enlarges branch
        currentSound = musicalNotes[currentNote];
        audioSource.clip = currentSound;
        soundSources[currentNote].GetComponent<Animator>().SetBool("grown", true);

        if (notesPlaying != null)
            notesPlaying.transform.position = soundSources[currentNote].transform.position;

        if (playerClick)
        {
			audioSource.PlayOneShot(currentSound);
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            playerClick = false;
        }
    }

    //ShiftNoteDown
    public override void Selection_Two()
    {
        if (playerClicked)
        {
            base.Selection_Two();
        }
        if (soundSources[currentNote].activeSelf)
        {
			soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        }

        bool canPlayNote = false;

        while (!canPlayNote)
        {
            if (currentNote > 0)
            {
                currentNote--;
            }
            else
            {
                currentNote = musicalNotes.Length - 1;
            }

            if (soundSources[currentNote].activeSelf)
                canPlayNote = true;
        }
        // chooses new note and enlarges Branch
        currentSound = musicalNotes[currentNote];
        audioSource.clip = currentSound;
		soundSources[currentNote].GetComponent<Animator>().SetBool("grown", true);

        if (notesPlaying != null)
            notesPlaying.transform.position = soundSources[currentNote].transform.position;

        if (playerClick)
        {
            audioSource.PlayOneShot(currentSound);
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            playerClick = false;
        }
        
    }
    
    public override void OnDisable()
    {
        base.OnDisable();
        if (soundSources[currentNote].activeSelf)
        {
            soundSources[currentNote].transform.localScale *= 0.5f;
        }
        transform.localScale = origScale;
    }
}
