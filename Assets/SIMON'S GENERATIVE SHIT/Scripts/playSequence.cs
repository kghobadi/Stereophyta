using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class playSequence : MonoBehaviour
{

    public AudioHelm.Sequencer sequencer;

    public bool changedSequence = false;

    public bool isLeader = false;
    public bool isFollower = false;

    public int octave = 1;

    public AudioMixerGroup mixer;

    public int lastNote;

    public int note;
    public int start, newStart;
    int end;
    public int species;

    public List<int> currentKey;

    public GameObject farmManager;

    PlantLife life;

    private GameObject bed;
    private Bed sleepScript;


    public int startScale = 8;
    public int startMultiplier = 8;

    public int endScale = 1;
    public int endEnd = 4;


    void Awake()
    {
        //mixer = Instantiate ();
        farmManager = GameObject.Find("farmManagerNew");
        //octave = farmManager.GetComponent<assignKey>().octave;
        life = GetComponent<PlantLife>();
        //note = Random.Range (0, 6);

        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();

        if (Random.Range(0, 3) == 1)
        {
            note = 0;
            isLeader = true;
            start = Random.Range(0, startScale);
        }
        else
        {
            note = Random.Range(0, 6);
        }

        changedSequence = false;
    }

    // Update is called once per frame
    void Update()
    {

        if (sleepScript.dayPassed)
        {
            changedSequence = false;
        }

        if (life.ageCounter == 1)
        {
            if (!changedSequence && isLeader)
            {
                species = Random.Range(0, 2);
                //note = Random.Range (0, 6);
                if (species == 0)
                {
                    //	start = Random.Range (0, 8);
                    newStart = start * startMultiplier;
                    end = newStart + Random.Range(endScale, endEnd);
                }
                else if (species == 1)
                {
                    //	start = Random.Range (0, 8);
                    newStart = (start * startMultiplier) + 1;
                    end = newStart + Random.Range(endScale, endEnd);
                }
                //end = newStart + Random.Range (1, 4);
                changeSequence1();
                changedSequence = true;
            }
            else if (!changedSequence && !isFollower)
            {
                start = Random.Range(0, startScale);
                newStart = start * startMultiplier;
                end = newStart + Random.Range(endScale, endEnd);
                changeSequence1();
                changedSequence = true;
            }
            else if (!changedSequence)
            {
                newStart = start * startMultiplier;
                end = newStart + Random.Range(endScale, endEnd);
                changeSequence1();
                changedSequence = true;
            }
        }
        else if (life.ageCounter == 2)
        {
            if (!changedSequence)
            {
                changeSequence2();
                changedSequence = true;
            }
        }

        if (life.ageCounter == 1)
        {
            if (!changedSequence && isLeader)
            {
                species = Random.Range(0, 2);
                //note = Random.Range (0, 6);
                if (species == 0)
                {
                    //	start = Random.Range (0, 8);
                    newStart = start * startMultiplier;
                    end = newStart + endScale;
                }
                else if (species == 1)
                {
                    //	start = Random.Range (0, 8);
                    newStart = (start * startMultiplier) + 1;
                    end = newStart + endScale;
                }
                //end = newStart + Random.Range (1, 4);
                changeSequence1();
                changedSequence = true;
            }
            else if (!changedSequence && !isFollower)
            {
                start = Random.Range(0, startScale);
                newStart = start * startMultiplier;
                end = newStart + endScale;
                changeSequence1();
                changedSequence = true;
            }
            else if (!changedSequence)
            {
                newStart = start * startMultiplier;
                end = newStart + endScale;
                changeSequence1();
                changedSequence = true;
            }
        }
        else if (life.ageCounter == 2)
        {
            if (!changedSequence)
            {
                changeSequence2();
                changedSequence = true;
            }

        }
        else if (life.ageCounter == 3)
        {
            if (!changedSequence)
            {
                changeSequence3();
                changedSequence = true;
            }

        }
        else
        {
            if (!changedSequence)
            {
                clearSequence();
                changedSequence = true;

            }

        }
    }


    void changeSequence1()
    {
        //int change = Random.Range (0, 1);
        // int note = Random.Range (0,6);
        //int newNote;
        //int start = Random.Range (0, 32);
        //int end = start + Random.Range (1, 3);
        float velocity = Random.Range(0.4f, 1f);
        //if (change == 1) {
        sequencer.Clear();
        /*switch (note) {
        case 1:
            newNote = 61;
            break;
        case 2:
            newNote = 63;
            break;
        case 3:
            newNote = 65;
            break;
        case 4:
            newNote = 66;
            break;
        case 5:
            newNote = 68;
            break;
        case 6: 
            newNote = 70;
            break;
        case 7:
            newNote = 71;
            break;

        default:
            newNote = 61;
            break;
        } */
        sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * (octave + 2)), newStart, end, velocity);
        Debug.Log("Set Note to" + note);
        Debug.Log(farmManager.GetComponent<assignKey>().currentList[note]);

        //}		//lastNote = note;

    }

    void changeSequence2()
    {
        //int note = Random.Range (0, 6);
        int change = Random.Range(0, 2);
        int newNote;

        float velocity = Random.Range(0.4f, 1f);
        //if (change == 1) {
        sequencer.Clear();
        /*switch (note) {
        case 1:
            newNote = 49;
            break;
        case 2:
            newNote = 51;
            break;
        case 3:
            newNote = 53;
            break;
        case 4:
            newNote = 54;
            break;
        case 5:
            newNote = 56;
            break;
        case 6: 
            newNote = 58;
            break;
        case 7:
            newNote = 59;
            break;

        default:
            newNote = 49;
            break;
        } */
        sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * (octave + 1)), newStart, end, velocity);
        Debug.Log("current note :" + note);
        Debug.Log(farmManager.GetComponent<assignKey>().currentList[note]);
        //}
        //sequencer.AddNote (88, 12, 13, 1);
    }

    void changeSequence3()
    {
        int change = Random.Range(0, 2);
        //int note = Random.Range (0, 6);
        int newNote;
        //int start = Random.Range (0, 16);
        //int end = start + Random.Range (1, 3);
        float velocity = Random.Range(0.4f, 1f);
        //if (change == 1) {
        sequencer.Clear();

        /*switch (note) {
        case 1:
            newNote = 37;
            break;
        case 2:
            newNote = 39;
            break;
        case 3:
            newNote = 41;
            break;
        case 4:
            newNote = 42;
            break;
        case 5:
            newNote = 44;
            break;
        case 6: 
            newNote = 46;
            break;
        case 7:
            newNote = 47;
            break;

        default:
            newNote = 37;
            break;
        } */
        sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * octave), newStart, end, velocity);
        //}

    }

    void clearSequence()
    {
        sequencer.Clear();
    }

    void randomize()
    {


    }
}
