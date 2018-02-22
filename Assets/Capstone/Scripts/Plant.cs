using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Plant : Interactable {
    //should always have same number of musical notes as tubules

    public AudioClip[] musicalNotes;
    public AudioClip[] selectionNotes;
    public List<GameObject> branches = new List<GameObject>();
    int currentNote;
    AudioClip currentSound;
    public AudioSource plantAudio;

    ParticleSystem notesPlaying;
    ParticleSystem poofParticles;
    public AudioClip lowerSound;

    public bool placedInEditor,sapling, scalingUp, scalingDown, lerpingColor;
    public float saplingScale, scaleSpeed, growthMultiplier, lerpTimer, lerpTimerTotal, waterTimer =0, waterNecessary;
    Vector3 origScale;
    Vector3 startingPos;

    public Color lerpedColor;
    Color origColor;

    public PlantSpecies plantSpecieName;

    public enum PlantSpecies
    {
        SPHERESHRUB, CUBETREE, GUITAR, 
    }

    public override void Start () {
        base.Start();
        interactable = true; //when should it be interactable? after # branches > 1
        plantAudio = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(0).GetComponent<ParticleSystem>() ; //grabs particle system
        poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        notesPlaying.Stop();
        poofParticles.Stop();

        origScale = transform.localScale;
        startingPos = transform.position;

        lerpingColor = false;
        lerpTimer = lerpTimerTotal;

        //set to sapling stage
        if (!placedInEditor)
        {
            sapling = true;
            transform.localScale *= saplingScale;
            transform.position = new Vector3(transform.position.x, transform.position.y - (origScale.y / 2), transform.position.z);
        }

        //counts up through plant children, adding these to the list of Branches for later.
        if (transform.childCount > 2)
        {
            for (int i = 2; i < (transform.childCount); i++)
            {
                branches.Add(transform.GetChild(i).gameObject); //Going to be adding these one at a time in GrowPlant
            }
        }

        //randomize note at start
        currentNote = Random.Range(0, musicalNotes.Length); 
        currentSound = musicalNotes[currentNote];

        if (!sapling)
        {
            branches[currentNote].transform.localScale *= 2;
            notesPlaying.transform.position = branches[currentNote].transform.position;
        }
    }

    public override void OnMouseOver()
    {
        if (interactable && !lerpingColor)
        {
            base.OnMouseOver();
            if (Input.GetMouseButtonDown(1))
            {
                ShiftNoteDown();

            }
        }
        
    }

    public override void handleClickSuccess()
    {
        if (interactable && !lerpingColor && !sapling)
        {
            symbol.sprite = clickSprite;
            symbol.sprite = normalSprite;

            //increment interactionCounter
            //if (gateScript != null)
            //{
            //    //increment interactionCounter
            //    interactionCounter++;
            //    if (interactionCounter >= interactionsNecessary)
            //    {
            //        interactionFulfilled = true;
            //        gateScript.CheckAreaComplete();
            //    }
            //}
            ShiftNoteUp();
            
        }
    }

    void Update()
    {
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
            if(lerpTimer > 0)
            {
                branches[currentNote].GetComponent<MeshRenderer>().material.color = Color.Lerp(origColor, lerpedColor, Mathf.PingPong(Time.time, lerpTimerTotal));
            }
            else
            {
                branches[currentNote].GetComponent<MeshRenderer>().material.color = origColor;
                lerpingColor = false;
                lerpTimer = lerpTimerTotal;
            }
        }
    }

    public void GrowPlant()
    {
        //scale back to fully grown 
        transform.localScale = origScale;
        transform.position = startingPos;

        //poof particles
        poofParticles.Play();

        //randomize note at start
        currentNote = Random.Range(0, musicalNotes.Length);
        currentSound = musicalNotes[currentNote];

        //scale branch and change note particles to that branch
        branches[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = branches[currentNote].transform.position;

        //allow branch switching and ignore rain
        sapling = false;
    }

    public void PlaySound()
    {
        if (/*!plantAudio.isPlaying &&*/ !scalingUp && !scalingDown)
        {
            plantAudio.PlayOneShot(currentSound);
            scalingUp = true;
        }
        
    }

    public void ShiftNoteUp()
    {
        //shrinks current branch
        branches[currentNote].transform.localScale *= 0.5f;

        if (currentNote < (musicalNotes.Length - 1))
        {
            currentNote++;
        }
        else
        {
            currentNote = 0;
        }
        // chooses new note and enlarges branch
        currentSound = musicalNotes[currentNote];
        branches[currentNote].transform.localScale *= 2;
       
            origColor = branches[currentNote].GetComponent<MeshRenderer>().material.color;
            lerpingColor = true;
        
        notesPlaying.transform.position = branches[currentNote].transform.position;
        // try setting parent to branch and setting position after!
        //Vector3(branches[currentNote].transform.position.x - (branches[currentNote].transform.localScale.x /2), 
        //    branches[currentNote].transform.position.y, branches[currentNote].transform.position.z); // need some to move this to tip of branch
        //Debug.Log(currentNote);
        plantAudio.PlayOneShot(selectionNotes[currentNote]);
    }

    public void ShiftNoteDown()
    {
        branches[currentNote].transform.localScale *= 0.5f;

        if (currentNote > 0)
        {
            currentNote--;
        }
        else
        {
            currentNote = musicalNotes.Length - 1;
        }
        // chooses new note and enlarges Branch
        currentSound = musicalNotes[currentNote];
        branches[currentNote].transform.localScale *= 2;
      
        origColor = branches[currentNote].GetComponent<MeshRenderer>().material.color;
        lerpingColor = true;
        
        notesPlaying.transform.position = branches[currentNote].transform.position;
        plantAudio.PlayOneShot(selectionNotes[currentNote]);
    }
    
}
