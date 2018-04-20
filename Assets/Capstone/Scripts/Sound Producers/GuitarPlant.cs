using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuitarPlant : SoundProducer {

    //var for seed object and instant clone
    public GameObject fruitSeed;
    GameObject fruitSeedClone;
    
    //checks whether the flower is open or closed
    public bool active;

    //for changing the button based on active state
    public Sprite[] stopPlayingMusic, startPlayingMusic;

    //for being picked by NPC
    public Musician seedPicker;
    public int seedSpotNumber;

    public Animator guitarAnimator;

    public override void Start () {
        //this comes before base.Start() for sound sources 
        base.Start();

        //starts as active
        active = true;

        //randomly rotate the plant on y axis
        int randomRotate = Random.Range(0, 360);
        transform.localEulerAngles = new Vector3(0, randomRotate, 0);

        //set flower to grown 
        guitarAnimator.SetBool("grown", true);
    }

    //can be done by player or by NPC
    void TakeFruitSeed()
    {
        if (playerClick || playerClicked)
        {
            if (tpc.seedLine.Count < tpc.seedLineMax)
            {
                guitarAnimator.SetBool("grown", false);
                //instantiate seed and add it to player seed line
                fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
                fruitSeedClone.GetComponent<fruitSeedNoInv>().pickedByPlayer = true;
                fruitSeedClone.GetComponent<fruitSeedNoInv>().plantNote = musicalNotes[currentNote];

                //destroy plant
                StartCoroutine(DestroyPlant());
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
            guitarAnimator.SetBool("grown", false);
            //instantiate seed and add it to player seed line
            fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
            fruitSeedNoInv newFruitSeed = fruitSeedClone.GetComponent<fruitSeedNoInv>();

            //relay spot info to seed
            newFruitSeed.pickedByPlayer = false;
            newFruitSeed.seedPicker = seedPicker;
            newFruitSeed.seedSpotNumber = seedSpotNumber;
            newFruitSeed.plantNote = musicalNotes[currentNote];

            //destroy plant
            StartCoroutine(DestroyPlant());
        }
        
    }
    
    //called by a rhythm object
    public void PlaySound()
    {
            if (active && !audioSource.isPlaying)
            {
                audioSource.PlayOneShot(currentSound);
            guitarAnimator.SetTrigger("playing");
                if (notesPlaying != null)
                    notesPlaying.Emit(10);
            }
    }

    //command to activate or deactivate flower
    public override void Selection_One()
    {
            //reset selection button
            SwitchSelectionButtons();
        //turn off if active
            if (active)
            {
            guitarAnimator.SetBool("grown", false);
            active = false;
                selectionImages[0].buttonImages = startPlayingMusic;
            }
            //turn on if inactive
            else
            {
            guitarAnimator.SetBool("grown", true);
            active = true;
                audioSource.PlayOneShot(currentSound);
                selectionImages[0].buttonImages = stopPlayingMusic;
            }
            if(playerClick || playerClicked)
                DeactivateSelectionMenu();
        
    }

    //shift note up
    public override void Selection_Two()
    {
        TakeFruitSeed();
    }

    IEnumerator DestroyPlant()
    {
        //destroy plant
        interactable = false;
        poofParticles.Play();
        if(playerClick || playerClicked)
            DeactivateSelectionMenu();
        yield return new WaitForSeconds(0.2f);
        Destroy(gameObject);
    }

    public override void OnDisable()
    {
        StopAllCoroutines();
        //turn off current soundsource
        if (soundSources[currentNote].activeSelf)
        {
            guitarAnimator.SetBool("grown", false);
        }
    }

}
