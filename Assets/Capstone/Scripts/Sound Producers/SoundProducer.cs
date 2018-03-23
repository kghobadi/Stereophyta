using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class SoundProducer : Interactable {

    public AudioClip[] musicalNotes;
    public List<GameObject> soundSources = new List<GameObject>();
    protected int currentNote, particleCount;
    public AudioClip currentSound;
    public AudioSource audioSource;

    protected ParticleSystem notesPlaying;

    public bool placedInEditor, scalingUp, scalingDown, lerpingColor;
    public float scaleSpeed, growthMultiplier, lerpTimer, lerpTimerTotal;
    protected Vector3 origScale;
    protected Vector3 startingPos;

    public Color lerpedColor;
    protected Color origColor;

    protected bool playerClick;


    public override void Start () {
        base.Start();
        interactable = true; //when should it be interactable? after # branches > 1
        audioSource = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(0).GetComponent<ParticleSystem>(); //grabs particle system
        //poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        notesPlaying.Stop();
        //poofParticles.Stop();

        origScale = transform.localScale;
        startingPos = transform.position;

        lerpingColor = false;
        lerpTimer = lerpTimerTotal;

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

        //when PlaySound() is called, plant scales up then back down
        if (scalingUp)
        {
            notesPlaying.Emit(1);
            if (transform.localScale.x < origScale.x * growthMultiplier)
                transform.localScale += new Vector3(scaleSpeed * Time.deltaTime, scaleSpeed * Time.deltaTime, scaleSpeed * Time.deltaTime);
            else
            {
                scalingUp = false;
                scalingDown = true;
            }
        }
        if (scalingDown)
        {
            notesPlaying.Emit(1);
            if (transform.localScale.x > origScale.x)
                transform.localScale -= new Vector3(scaleSpeed * Time.deltaTime, scaleSpeed * Time.deltaTime, scaleSpeed * Time.deltaTime);
            else
            {
                scalingDown = false;
            }
        }

        //lerps the color of a single branch whenever ShiftNote() functions are called
        if (lerpingColor)
        {
            lerpTimer -= Time.deltaTime;
            if (lerpTimer > 0)
            {
                soundSources[currentNote].GetComponent<MeshRenderer>().material.color = Color.Lerp(origColor, lerpedColor, Mathf.PingPong(Time.time, lerpTimerTotal));
            }
            else
            {
                soundSources[currentNote].GetComponent<MeshRenderer>().material.color = origColor;
                lerpingColor = false;
                lerpTimer = lerpTimerTotal;
            }
        }

        if(playerClicked)
        {
            playerClick = true;
        }
    }

    //ShiftNoteDown
    public override void Selection_One()
    {
        if (playerClicked)
        {
            base.Selection_One();
        }
        if (soundSources[currentNote].activeSelf)
        {
            soundSources[currentNote].transform.localScale *= 0.5f;
            soundSources[currentNote].GetComponent<MeshRenderer>().material.color = origColor;
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
        soundSources[currentNote].transform.localScale *= 2;

        origColor = soundSources[currentNote].GetComponent<MeshRenderer>().material.color;
        lerpingColor = true;

        notesPlaying.transform.position = soundSources[currentNote].transform.position;

        if (playerClick)
        {
            audioSource.PlayOneShot(musicalNotes[currentNote]);
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            playerClick = false;
        }
    }

    //ShiftNoteUp
    public override void Selection_Two()
    {
        if (playerClicked) {
            base.Selection_Two();

            }
        
        //shrinks current branch
        //first check if active
        if (soundSources[currentNote].activeSelf)
        {
            soundSources[currentNote].transform.localScale *= 0.5f;
            soundSources[currentNote].GetComponent<MeshRenderer>().material.color = origColor;
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
        soundSources[currentNote].transform.localScale *= 2;

        origColor = soundSources[currentNote].GetComponent<MeshRenderer>().material.color;
        lerpingColor = true;

        notesPlaying.transform.position = soundSources[currentNote].transform.position;

        if (playerClick)
        {
            audioSource.PlayOneShot(musicalNotes[currentNote]);
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            playerClick = false;
        }
    }

    
}
