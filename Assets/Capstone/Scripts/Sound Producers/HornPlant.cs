using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HornPlant : SoundProducer {

    //var for seed object and instant clone
    public GameObject fruitSeed;
    GameObject fruitSeedClone;

    //for being picked by NPC
    public Musician seedPicker;
    public int seedSpotNumber;
    public int seedsGone;

    public override void Start () {
        //this comes before base.Start() for sound sources 
        base.Start();
        
        StartCoroutine(GrowPlant());

       
    }
    

    //Take Fruit Seed
    public override void Selection_One()
    {

        soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        soundSources[currentNote].SetActive(false);

        //instantiate seed and add it to player seed line
        fruitSeedClone = Instantiate(fruitSeed, transform.position, Quaternion.identity);
        fruitSeedNoInv newFruitSeed = fruitSeedClone.GetComponent<fruitSeedNoInv>();
        newFruitSeed.plantNote = musicalNotes[currentNote];

        if (playerClick || playerClicked)
        {
            newFruitSeed.pickedByPlayer = true;
        }
        else
        {
            //relay spot info to seed
            newFruitSeed.pickedByPlayer = false;
            newFruitSeed.seedPicker = seedPicker;
            newFruitSeed.seedSpotNumber = seedSpotNumber;
        }

        //checks if all seeds are gone. if so, destroy, otherwise randomly shift notes
        seedsGone = 0;
        for (int i = 0; i < soundSources.Count; i++)
        {
            if (!soundSources[i].activeSelf)
            {
                seedsGone++;
            }
        }
        if (seedsGone == soundSources.Count)
        {
            //destroy plant
            StartCoroutine(DestroyPlant());
        }
        else
        {
            //shiftnoteup or shiftnotedown
            float randomShift = Random.Range(0f, 100f);
            if (randomShift < 50f)
            {
                //down
                Selection_Two();
            }
            else
            {
                //up
                Selection_Three();
            }
        }

    }

    //shift note up
    public override void Selection_Two()
    {
        //shift note up stored in selection one
        base.Selection_One();
    }

    //shift note down
    public override void Selection_Three()
    {
        //shift note down stored in selection two
        base.Selection_Two();
    }

    public void PlaySound()
    {
        if (!audioSource.isPlaying)
        {
            audioSource.PlayOneShot(currentSound);
            soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");

            if (notesPlaying != null)
                notesPlaying.Play();
        }
        
    }

    public IEnumerator DestroyPlant()
    {
        //destroy plant
        interactable = false;
        poofParticles.Play();
        if (playerClick || playerClicked)
            DeactivateSelectionMenu();
        yield return new WaitForSeconds(1);
        Destroy(gameObject);
    }

    IEnumerator GrowPlant()
    {
        interactable = false;
        transform.localScale *= 0.1f;
        while(transform.localScale.x < origScale.x)
        {
            transform.localScale *= 1.1f;
            yield return new WaitForEndOfFrame();
        }
        interactable = true;
        //set active sound source to grown and move notesplaying based on that
        soundSources[currentNote].GetComponent<Animator>().SetBool("grown", true);
        notesPlaying.transform.position = soundSources[currentNote].transform.position;
    }

    public override void OnDisable()
    {
        StopAllCoroutines();

        transform.localScale = origScale;
        //turn off current soundsource
        if (soundSources[currentNote].activeSelf)
        {
            soundSources[currentNote].GetComponent<Animator>().SetBool("grown", false);
        }
    }
}
