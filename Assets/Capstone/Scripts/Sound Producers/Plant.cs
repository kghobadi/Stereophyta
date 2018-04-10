using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Plant : SoundProducer {

    public GameObject fruitSeed;
    GameObject fruitSeedClone;

    public ParticleSystem poofParticles;

    public bool sapling;
    public float saplingScale, waterTimer =0, waterNecessary, regenTimer =0, regenNecessary;
    
    public float waitPullFruit, pullMin, pullMax, pullDistance;
    Vector3 startingMousePos, releaseMousePos;

    public PlantSpecies plantSpecieName;

    public enum PlantSpecies
    {
        HORN, PIANO, GUITAR, 
    }

    public override void Start () {
        //this comes before base.Start() for sound sources 
        particleCount = 2;
        base.Start();
        poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        poofParticles.Stop();
        
        //set to sapling stage
        if (!placedInEditor && enabledCounter <= 1)
        {
            sapling = true;
            transform.localScale *= saplingScale;
            transform.position = new Vector3(transform.position.x, transform.position.y - (origScale.y / 2) + (transform.localScale.y / 2), transform.position.z);
        }

        if (!sapling && enabledCounter <= 1)
           
        {
            soundSources[currentNote].transform.localScale *= 2;
            notesPlaying.transform.position = soundSources[currentNote].transform.position;
        }
    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        tpc.blubAnimator.Play("ListenToPlant", 0);
      
        
    }

    public override void OnMouseOver()
    {
        if (interactable && !lerpingColor && !sapling)
        {
            base.OnMouseOver();
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            
        }
        
    }

    public override void handleClickSuccess()
    {
        if (!sapling)
        {
            base.handleClickSuccess();
        }
       
    }
    public override void OnMouseExit()
    {
        base.OnMouseExit();
        
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
        soundSources[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = soundSources[currentNote].transform.position;

        //allow branch switching and ignore rain
        sapling = false;
    }

    //Take Fruit Seed
    public override void Selection_Three()
    {
        base.Selection_Three();
        soundSources[currentNote].transform.localScale *= 0.5f;
        soundSources[currentNote].SetActive(false);

        //instantiate seed and add it to player seed line
        fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
        fruitSeedClone.GetComponent<fruitSeedNoInv>().pickedByPlayer = true;
        fruitSeedClone.GetComponent<fruitSeedNoInv>().plantNote = musicalNotes[currentNote];

        //checks if all seeds are gone. if so, destroy, otherwise randomly shift notes
        int seedsGone = 0;
        for (int i = 0; i < soundSources.Count; i++)
        {
            if (!soundSources[i].activeSelf)
            {
                seedsGone++;
            }
        }
        if (seedsGone == soundSources.Count)
        {
            poofParticles.Play();
            DeactivateSelectionMenu();
            Destroy(gameObject);
        }
        else
        {
            //shiftnoteup or shiftnotedown
            float randomShift = Random.Range(0f, 100f);
            if (randomShift < 50f)
            {
                //down
                Selection_One();
            }
            else
            {
                //up
                Selection_Two();
            }
        }
    }

    public void GrowFruitSeed()
    {
        //randomly grow a fruitSeed from the list of Branches
        bool hasGrownASeed = false;
        for(int i=0;i < soundSources.Count; i++)
        {
            if(!soundSources[i].activeSelf && !hasGrownASeed)
            {
                soundSources[i].SetActive(true);
                poofParticles.transform.position = soundSources[i].transform.position;
                poofParticles.transform.localScale = new Vector3(1, 1, 1);
                poofParticles.Play();
                hasGrownASeed = true;
            }
        }

    }

    public void PlaySound()
    {
        if (/*!plantAudio.isPlaying &&*/ !scalingUp && !scalingDown)
        {
            if (!sapling)
            {
                audioSource.PlayOneShot(currentSound);
                scalingUp = true;
            }
            else
            {
                if (!audioSource.isPlaying)
                {
                    audioSource.PlayOneShot(currentSound);
                    notesPlaying.Emit(10);
                }
            }
                
        }
        
    }

    //shift note down
    public override void Selection_One()
    {
        if (!sapling)
        {
            base.Selection_One();
        }
    }

    //shift note up
    public override void Selection_Two()
    {
        if (!sapling)
        {
            base.Selection_Two();
        }
    }

    public override void OnDisable()
    {
        base.OnDisable();
        transform.localScale = origScale;
    }

    public override void OnEnable()
    {
        base.OnEnable();
        if(enabledCounter > 1)
        {
            Start();
        }
    }
}
