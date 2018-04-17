using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewPlant : SoundProducer {

    public GameObject fruitSeed;
    GameObject fruitSeedClone;
    public GameObject closedLid;

    public ParticleSystem poofParticles;

    public PlantSpecies plantSpecieName;

    public bool active;
    public Sprite[] stopPlayingMusic, startPlayingMusic;

    public enum PlantSpecies
    {
        HORN, PIANO, GUITAR, 
    }

    public override void Start () {
        //this comes before base.Start() for sound sources 
        particleCount = 3;
        base.Start();
        poofParticles = transform.GetChild(1).GetComponent<ParticleSystem>();
        poofParticles.Stop();

        active = true;
        closedLid.SetActive(false);
        int randomRotate = Random.Range(0, 360);
        transform.localEulerAngles = new Vector3(0, randomRotate, 0);
        soundSources[currentNote].transform.localScale *= 2;
        notesPlaying.transform.position = soundSources[currentNote].transform.position;
        
    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        tpc.blubAnimator.Play("ListenToPlant", 0);
      
        
    }

    public override void OnMouseOver()
    {
        if (interactable && !lerpingColor )
        {
            base.OnMouseOver();
            _player.transform.LookAt(new Vector3(soundSources[currentNote].transform.position.x, _player.transform.position.y, soundSources[currentNote].transform.position.z));
            
        }
        
    }

    public override void handleClickSuccess()
    {
       
        base.handleClickSuccess();
        
       
    }
    public override void OnMouseExit()
    {
        base.OnMouseExit();
        
    }
    
    

    //Take Fruit Seed
    public override void Selection_Three()
    {
        base.Selection_Three();
        TakeFruitSeed();
    }

    void TakeFruitSeed()
    {
        if (playerClick)
        {
            if (tpc.seedLine.Count < tpc.seedLineMax)
            {
                //instantiate seed and add it to player seed line
                fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
                fruitSeedClone.GetComponent<fruitSeedNoInv>().pickedByPlayer = true;
                fruitSeedClone.GetComponent<fruitSeedNoInv>().plantNote = musicalNotes[currentNote];

                //destroy plant
                poofParticles.Play();
                DeactivateSelectionMenu();
                Destroy(gameObject);
            }

            else
            {
                //player shakes head and says no
                //seeds do a little jump
                // int randomNo = Random.Range(0, tpc.noNo.Length);
                audioSource.PlayOneShot(tpc.noNo[0], 1f);
            }
        }
        //NPC took it
        else
        {
            //instantiate seed and add it to player seed line
            fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
            fruitSeedClone.GetComponent<fruitSeedNoInv>().pickedByPlayer = false;
            fruitSeedClone.GetComponent<fruitSeedNoInv>().plantNote = musicalNotes[currentNote];

            //destroy plant
            poofParticles.Play();
            DeactivateSelectionMenu();
            Destroy(gameObject);
        }
        
    }
    
    public void PlaySound()
    {
        if(plantSpecieName == PlantSpecies.GUITAR)
        {
            if (active && !scalingUp && !scalingDown)
            {
                audioSource.PlayOneShot(currentSound);
                scalingUp = true;
                notesPlaying.Emit(10);
            }
        }
        // for horn plant, do the clip switching and Play();
        else
        {
            if (!audioSource.isPlaying && !scalingUp && !scalingDown)
            {
                audioSource.PlayOneShot(currentSound);
                scalingUp = true;
                notesPlaying.Emit(10);
            }
        }
    }

    //shift note down
    public override void Selection_One()
    {
        //shift note down
        if (plantSpecieName != PlantSpecies.GUITAR)
        {
            base.Selection_One();
        }
        else
        {
            //command to activate or deactivate flower
            SwitchSelectionButtons();
            if (active)
            {
                active = false;
                closedLid.SetActive(true);
                selectionImages[0].buttonImages = startPlayingMusic;
            }
            else
            {
                active = true;
                audioSource.PlayOneShot(currentSound);
                closedLid.SetActive(false);
                selectionImages[0].buttonImages = stopPlayingMusic;
            }
            DeactivateSelectionMenu();
        }
    }

    //shift note up
    public override void Selection_Two()
    {
        //shift note up
        if (plantSpecieName != PlantSpecies.GUITAR)
        {
            base.Selection_Two();
        }
        else
        {
            TakeFruitSeed();
        }

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
