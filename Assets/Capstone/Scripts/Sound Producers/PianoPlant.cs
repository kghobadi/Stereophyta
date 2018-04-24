using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PianoPlant : SoundProducer {

    //stores seed instant prefab and clone
    public GameObject fruitSeed;
    GameObject fruitSeedClone;
    Animator trunkAnimator;

    //for being picked by NPC
    public Musician seedPicker;
    public int seedSpotNumber;
    public int seedsGone;

    public override void Start () {
        //this comes before base.Start() for sound sources 
        particleCount = 2;
        base.Start();

        trunkAnimator = GetComponent<Animator>();
        trunkAnimator.SetBool("normal", true);

        soundSources [currentNote].GetComponent<Animator> ().SetBool ("grown", true);
        notesPlaying.transform.position = soundSources[currentNote].transform.position;
        
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
        notesPlaying.transform.localPosition -= new Vector3(0, 1, 0);
        notesPlaying.transform.localEulerAngles = soundSources[currentNote].transform.localEulerAngles;
        soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
        trunkAnimator.SetTrigger("playing");
        if (notesPlaying != null)
            notesPlaying.Play();
    }

    //shift note down
    public override void Selection_Three()
    {
        //shift note down stored in selection two
        base.Selection_Two();
        notesPlaying.transform.localPosition -= new Vector3(0, 1, 0);
        notesPlaying.transform.localEulerAngles = soundSources[currentNote].transform.localEulerAngles;
        soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
        trunkAnimator.SetTrigger("playing");
        if (notesPlaying != null)
            notesPlaying.Play();
    }

    public void PlaySound()
    {
        if (!audioSource.isPlaying)
        {
            audioSource.PlayOneShot(currentSound);
            trunkAnimator.SetTrigger("playing");
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
        yield return new WaitForSeconds(0.25f);
        Destroy(gameObject);
    }

}
