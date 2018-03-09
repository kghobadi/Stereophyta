using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Plant : SoundProducer {

    public GameObject fruitSeed;
    GameObject fruitSeedClone;

    ParticleSystem poofParticles;

    public bool sapling;
    public float saplingScale, waterTimer =0, waterNecessary, regenTimer =0, regenNecessary;
    
    public float waitPullFruit, pullMin, pullMax, pullDistance;
    Vector3 startingMousePos, releaseMousePos;

    public PlantSpecies plantSpecieName;

    public enum PlantSpecies
    {
        SPHERESHRUB, CUBETREE, GUITAR, 
    }

    public override void Start () {
        particleCount = 2;
        base.Start();
        poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        poofParticles.Stop();
        
        //set to sapling stage
        if (!placedInEditor)
        {
            sapling = true;
            transform.localScale *= saplingScale;
            transform.position = new Vector3(transform.position.x, transform.position.y - (origScale.y / 2) + (transform.localScale.y / 2), transform.position.z);
        }

        if (!sapling)
        {
            soundSources[currentNote].transform.localScale *= 2;
            notesPlaying.transform.position = soundSources[currentNote].transform.position;
        }
    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        tpc.blubAnimator.Play("ListenToPlant", 0);
        if (!sapling)
        {
            symbol.GetComponent<AnimateUI>().active = true;
            symbol.transform.localScale *= 3;
        }
        
    }

    public override void OnMouseOver()
    {
        if (interactable && !lerpingColor && !sapling)
        {
            base.OnMouseOver();
            tpc.isMoving = false;
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            waitPullFruit += Time.deltaTime;

            if (Input.GetMouseButtonDown(0))
            {
                startingMousePos = Input.mousePosition;
            }
            if (Input.GetMouseButton(0))
            {
                playerClick = true;
                if(waitPullFruit > 0.5f)
                    tpc.pullFruitTimer += Time.deltaTime;
                releaseMousePos = Input.mousePosition;

                if (tpc.pullFruitTimer > pullMax && Vector3.Distance(startingMousePos, releaseMousePos) > pullDistance)
                {
                    TakeFruitSeed();
                    tpc.pullFruitTimer = 0;
                }

            }
            if (Input.GetMouseButtonUp(0))
            {
                releaseMousePos = Input.mousePosition;
                if(tpc.pullFruitTimer < pullMin)
                {
                    ShiftNoteUp();
                }
                else if (tpc.pullFruitTimer > pullMin && Vector3.Distance(startingMousePos,releaseMousePos) > pullDistance)
                {
                    TakeFruitSeed();
                }
                tpc.pullFruitTimer = 0;
            }

            if (Input.GetMouseButtonDown(1))
            {
                playerClick = true;
                ShiftNoteDown();
            }

            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
        }
        
    }

    public override void handleClickSuccess()
    {
        //nothing happens in here
    }
    public override void OnMouseExit()
    {
        base.OnMouseExit();
        waitPullFruit = 0;

 
            symbol.transform.localScale *= (1f / 3f);
            symbol.GetComponent<AnimateUI>().active = false;
        
        
        //tpc.pullFruitTimer = 0;
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

    public void TakeFruitSeed()
    {
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
                seedsGone ++;
            }
        }
        if (seedsGone == soundSources.Count)
        {
            poofParticles.Play();
            Destroy(gameObject);
        }
        else
        {
            //shiftnoteup or shiftnotedown
            float randomShift = Random.Range(0f, 100f);
            if (randomShift < 50f)
            {
                ShiftNoteDown();
            }
            else
            {
                ShiftNoteUp();
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

    public override void ShiftNoteUp()
    {
        if (!sapling)
        {
            base.ShiftNoteUp();
        }
    }

    public override void ShiftNoteDown()
    {
        if (!sapling)
        {
            base.ShiftNoteDown();
        }
    }
    
}
