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
        
        StartCoroutine(GrowPlant());

        
    }

    //can be done by player or by NPC
    void TakeFruitSeed()
    {
        guitarAnimator.SetBool("grown", false);
        //instantiate seed and add it to player seed line
        fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
        fruitSeedNoInv newFruitSeed = fruitSeedClone.GetComponent<fruitSeedNoInv>();

        newFruitSeed.plantNote = musicalNotes[currentNote];

        if (playerClick)
        {
             newFruitSeed.pickedByPlayer = true;
        }
        //NPC took it
        else
        {
            //relay spot info to seed
            newFruitSeed.pickedByPlayer = false;
            newFruitSeed.seedPicker = seedPicker;
            newFruitSeed.seedSpotNumber = seedSpotNumber;
        }

        //destroy plant
        StartCoroutine(DestroyPlant());

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
        if(guitarAnimator != null)
        {
            bool hasChanged = false;
            if (active && !hasChanged)
            {
                guitarAnimator.SetBool("grown", false);
                active = false;
                selectionImages[0].buttonImages = startPlayingMusic;
                hasChanged = true;
            }
            //turn on if inactive
            else if (!active && !hasChanged)
            {
                guitarAnimator.SetBool("grown", true);
                active = true;
                audioSource.PlayOneShot(currentSound);
                selectionImages[0].buttonImages = stopPlayingMusic;
                hasChanged = true;
            }
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
        if(playerClick)
            DeactivateSelectionMenu();
        yield return new WaitForSeconds(0.2f);
        Destroy(gameObject);
    }

    public override void OnDisable()
    {
        StopAllCoroutines();

        transform.localScale = origScale;
        //turn off current soundsource
        if (soundSources[currentNote].activeSelf)
        {
            guitarAnimator.SetBool("grown", false);
        }
    }

    IEnumerator GrowPlant()
    {
        interactable = false;
        transform.localScale *= 0.1f;
        while (transform.localScale.x < origScale.x)
        {
            transform.localScale *= 1.1f;
            yield return new WaitForEndOfFrame();
        }
        interactable = true;
        //set flower to grown 
        guitarAnimator.SetBool("grown", true);
    }
}
