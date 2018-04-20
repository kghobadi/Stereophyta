using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class SoundProducer : Interactable {
    //the actual notes stored on this object
    public AudioClip[] musicalNotes;
    //corresponding sources of these notes
    public List<GameObject> soundSources = new List<GameObject>();
    //number of particles/effects attached to the object prior to soundSources
    public int particleCount;
    //counts which note in musicalNotes is active
    public int currentNote;
    //stores active clip
    public AudioClip currentSound;
    //ref to this objs audiosource
    public AudioSource audioSource;

    //effect which shows an object is playing sound
    public ParticleSystem notesPlaying;
    //effect which shows plant has died
    public ParticleSystem poofParticles;

    //stores original scale and positions
    protected Vector3 origScale;
    protected Vector3 startingPos;

    //to check if the player clicked on it or not
    protected bool playerClick;

    public override void Start () {
        base.Start();
        interactable = true; //when should it be interactable? after # branches > 1
        audioSource = GetComponent<AudioSource>();
	
        //interact sprites
        for (int i = 1; i < 3; i++)
        {
            interactSprites.Add(Resources.Load<Sprite>("CursorSprites/touch " + i));
        }
        
        //grab these from the transform
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

        //make sure particle systems are attached
        if (notesPlaying != null)
            notesPlaying.Stop();
        if (poofParticles != null)
            poofParticles.Stop();
    }
	
	public override void Update () {
        base.Update();

        if(playerClicked)
        {
            playerClick = true;
        }
    }

    //set player anim state
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        tpc.blubAnimator.Play("ListenToPlant", 0);
    }

    //while mouse is over obj, have player look at current sound source
    public override void OnMouseOver()
    {
        if (interactable)
        {
            base.OnMouseOver();
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, 
                _player.transform.position.y, soundSources[currentNote].transform.position.z));
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

        //cycle through notes until we find an active sound source
        if (soundSources.Count > 1)
        {
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
        }
        

        // chooses new note and enlarges branch
        currentSound = musicalNotes[currentNote];
        audioSource.clip = currentSound;
        soundSources[currentNote].GetComponent<Animator>().SetBool("grown", true);

        //move notes playing effect to corresponding sound source
        if (notesPlaying != null)
            notesPlaying.transform.position = soundSources[currentNote].transform.position;

        //if the player did this, play the sound for them and make the model look at it
        if (playerClick)
        {
            audioSource.PlayOneShot(currentSound);
            soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
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

        //cycle through notes until we find an active sound source
        if (soundSources.Count > 1)
        {
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
        }

        // chooses new note and enlarges fruitseed
        currentSound = musicalNotes[currentNote];
        audioSource.clip = currentSound;
		soundSources[currentNote].GetComponent<Animator>().SetBool("grown", true);

        //move notes playing effect to corresponding sound source
        if (notesPlaying != null)
            notesPlaying.transform.position = soundSources[currentNote].transform.position;

        //if the player did this, play the sound for them and make the model look at it
        if (playerClick)
        {
            audioSource.PlayOneShot(currentSound);
            soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            playerClick = false;
        }
    }
    
    public override void OnDisable()
    {
        base.OnDisable();
        //turn off current soundsource
        if (soundSources[currentNote].activeSelf)
        {
            soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        }
    }
}
