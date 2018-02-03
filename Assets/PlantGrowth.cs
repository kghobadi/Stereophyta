using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantGrowth : Interactable {
    //should always have same number of musical notes as tubules
    public AudioClip[] musicalNotes;
    public List<GameObject> branches = new List<GameObject>();
    int currentNote;
    AudioClip currentSound;
    AudioSource plantAudio;

    ParticleSystem notesPlaying;
    public AudioClip lowerSound;

    //prefabs for stalk and branches
    public GameObject plantStalk, plantBranch, seed;
    GameObject plantBranchClone, seedClone;

    //bools for growth
    public bool growing, reverting;

    //used to set growth heights (could be randomized)
    public float growthSpeed, desiredHeight, heightIntervals;
    float branchSpawnRotation;
    int branchCount;
    bool spawnedBranch;

    BoxCollider thisCollider;

	public override void Start () {
        base.Start();
        plantAudio = GetComponent<AudioSource>();
        notesPlaying = transform.GetChild(1).GetComponent<ParticleSystem>() ; //grabs particle system
        notesPlaying.Stop();

        currentNote = 0;
        currentSound = null;

        //prepare for growth bb!
        plantStalk = transform.GetChild(0).gameObject;
        heightIntervals = (desiredHeight / musicalNotes.Length) / 2;
        branchSpawnRotation = 0;
        branchCount = 0;
        growing = true;

        //set empty parent's collider
        thisCollider = GetComponent<BoxCollider>();
        thisCollider.size = new Vector3(thisCollider.size.x, desiredHeight, thisCollider.size.z);
    }

    // right click to descend notes
    public override void OnMouseOver()
    {
        if (interactable)
        {
            base.OnMouseOver();
            if (Input.GetMouseButtonDown(1))
            {
                branches[currentNote].transform.localScale *= 0.5f;

                if (currentNote > 0)
                {
                    currentNote--;
                }
                else
                {
                    currentNote = branches.Count - 1;
                }
                // chooses new note and enlarges branch
                currentSound = musicalNotes[currentNote];
                branches[currentNote].transform.localScale *= 2;
                notesPlaying.transform.position = branches[currentNote].transform.position;
                soundBoard.PlayOneShot(lowerSound);

            }
        }
        
    }

    // left click to ascend notes
    public override void handleClickSuccess()
    {
        if (interactable)
        {
            base.handleClickSuccess();
            //shrinks current branch
            branches[currentNote].transform.localScale *= 0.5f;

            if (currentNote < (branches.Count - 1))
            {
                currentNote++;
            }
            else
            {
                currentNote = 0;
            }
            // chooses new note and enlarges Branch
            currentSound = musicalNotes[currentNote];
            branches[currentNote].transform.localScale *= 2;
            notesPlaying.transform.position = branches[currentNote].transform.position;
            Debug.Log(currentNote);
        }
    }

    void Update()
    {
        if(branches.Count > 1)
        {
            interactable = true;
        }

        if (growing)
        {
            GrowPlant();
        }

        if (plantAudio.isPlaying)
        {
            notesPlaying.Emit(1);
        }
        if(Vector3.Distance(transform.position, _player.transform.position) > plantAudio.maxDistance + 10)
        {
            plantAudio.Stop();
        }
        if (spawnedBranch)
        {
            spawnedBranch = false;
        }
    }

    public void PlaySound()
    {
        if (!plantAudio.isPlaying )
            plantAudio.PlayOneShot(currentSound);
    }

    public void GrowPlant()
    {   if(plantStalk.transform.localScale.y < desiredHeight)
        {
            //constantly grow plant on y scale if not at desiredHeight
            plantStalk.transform.localScale = new Vector3(plantStalk.transform.localScale.x, 
                plantStalk.transform.localScale.y * growthSpeed, plantStalk.transform.localScale.z);
            // can either grow all the way until fully grown -- quick
            // or can set it to grow at intervals, only adding # of branches and height each day
            if((plantStalk.transform.localScale.y % heightIntervals) < 0.01f && branchCount < musicalNotes.Length + 1 && !spawnedBranch)
            {
                spawnedBranch = true;

                //create spawn location for branch, set its rotation, add to list
                Vector3 spawnPos = new Vector3(plantStalk.transform.position.x, plantStalk.transform.position.y + 0.5f, plantStalk.transform.position.z);
                plantBranchClone = Instantiate(plantBranch, spawnPos, Quaternion.Euler(0, branchSpawnRotation, 0), plantStalk.transform);
                branches.Add(plantBranchClone);

                //set note to new branch automatically
                if(branchCount > 0)
                    branches[currentNote].transform.localScale *= 0.5f;
                currentNote = branchCount;
                currentSound = musicalNotes[currentNote];
                branches[currentNote].transform.localScale *= 2;
                notesPlaying.transform.position = branches[currentNote].transform.position;

                //increment for branches
                branchCount++;
                branchSpawnRotation += 90;
            }
            //can do branch growth in a separate function or script if necessary
        }
        else
        {
            growing = false;
            SpawnSeed();
        }
    }

    public void SpawnSeed()
    {
        //Spawn seed of correct type at top of plant
        Vector3 spawnPos = new Vector3(plantStalk.transform.position.x, plantStalk.transform.position.y +
                   (plantStalk.transform.localScale.y / 2), plantStalk.transform.position.z);
        seedClone = Instantiate(seed, spawnPos, Quaternion.identity, transform);
    }

    public void RevertGrowth()
    {
        // do the exact opposite of that ^
    }
}
