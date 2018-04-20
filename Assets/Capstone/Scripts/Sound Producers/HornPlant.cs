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

    public override void Start () {
        //this comes before base.Start() for sound sources 
        particleCount = 2;
        base.Start();

        //set active sound source to grown and move notesplaying based on that
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
            audioSource.Play(); 
            soundSources[currentNote].GetComponent<Animator>().SetTrigger("playing");
            if (notesPlaying != null)
                notesPlaying.Emit(10);
    }
}
