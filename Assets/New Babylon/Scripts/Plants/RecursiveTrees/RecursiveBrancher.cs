using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RecursiveBrancher : MonoBehaviour {
    [Header("Recursion")]
    public int recurse = 5;
    public int splitNumber = 2;

    public List<GameObject> myBranches = new List<GameObject>();

    AudioSource myAudioSource;
    [Header ("Audio")]
    public AudioClip[] treeSounds;
    public float soundWaiter;
    public bool canRecurse = true;
    SkinnedMeshRenderer mr;
    public Material normalMat;
    public Material soundPlayingMat;

    public static RecursiveBrancher initialTreeBase;

	void Start () {
        myAudioSource = GetComponent<AudioSource>();
        mr = transform.GetChild(1).GetComponent<SkinnedMeshRenderer>();
        recurse -= 1;
        if(initialTreeBase == null)
        {
            initialTreeBase = this;
        }

        for(int i = 0; i < splitNumber; i++)
        {
            if (recurse > 0)
            {
                var copy = Instantiate(gameObject);

                myBranches.Add(copy);

                var recursive = copy.GetComponent<RecursiveBrancher>();

                recursive.GrowBranch(i);
                recursive.RotateBranch(i);
                recursive.ScaleBranch(i);
            }

        }

        StartCoroutine(WaitToSetParents());
    }

    void Update()
    {
        if (myAudioSource.isPlaying)
        {
            mr.material = soundPlayingMat;
        }
        else
        {
            mr.material = normalMat;
        }
    }

    //child the branches to their originator
    IEnumerator WaitToSetParents()
    {
        yield return new WaitForSeconds(1f);

        for (int b = 0; b < myBranches.Count; b++)
        {
            myBranches[b].transform.SetParent(transform);
        }
    }

    //public call that checks if can start recursive sounds
    public void PlaySounds()
    {
        if (canRecurse)
        {
            StartCoroutine(PlayRecursiveSounds());
        }
    }

    //play sounds all the way up thru my children 
    IEnumerator PlayRecursiveSounds()
    {
        canRecurse = false;

        PlayRandomSound();

        for(int i = 0; i < myBranches.Count; i++)
        {
            float chanceToSpread = Random.Range(0f, 100f);

            if(chanceToSpread < 30)
            {
                myBranches[i].GetComponent<RecursiveBrancher>().PlaySounds();
            }

            yield return new WaitForSeconds(soundWaiter);
        }

        canRecurse = true;
    }

    //plays random sound from tree sounds 
    void PlayRandomSound()
    {
        AudioClip sound = treeSounds[Random.Range(0, treeSounds.Length)];

        myAudioSource.PlayOneShot(sound);
    }

    //Grow branch 
    public void GrowBranch(int index)
    {
        transform.position += transform.up * transform.localScale.y * 3;
    }


    //Rotate Branch
    [Header("Rotations")]
    public float angle = 30f;
    public AngleTypes angleTypes;
    public enum AngleTypes
    {
        PLUSXONLY, NEGXONLY, RANDOMXZ, PLUSZONLY, NEGZONLY,
    }

    public void RotateBranch(int index)
    {
        if (angleTypes == AngleTypes.RANDOMXZ)
        {
            float bendChance = Random.Range(0f, 100f);

            if (bendChance < 25)
            {
                transform.rotation *= Quaternion.Euler(angle * ((index * 2) - 1), 0, -angle * ((index * 2) - 1));
            }
            else if (bendChance > 25 && bendChance < 50)
            {
                transform.rotation *= Quaternion.Euler(-angle * ((index * 2) - 1), 0, -angle * ((index * 2) - 1));
            }
            else if (bendChance > 50 && bendChance < 75)
            {
                transform.rotation *= Quaternion.Euler(angle * ((index * 2) - 1), 0, angle * ((index * 2) - 1));
            }
            else if (bendChance > 75 && bendChance <= 100)
            {
                transform.rotation *= Quaternion.Euler(-angle * ((index * 2) - 1), 0, angle * ((index * 2) - 1));
            }
        }

        if(angleTypes == AngleTypes.PLUSXONLY)
        {
            transform.rotation *= Quaternion.Euler(angle * ((index * 2) - 1), 0, 0);
        }

        if (angleTypes == AngleTypes.NEGXONLY)
        {
            transform.rotation *= Quaternion.Euler(-angle * ((index * 2) - 1), 0, 0);
        }

        if (angleTypes == AngleTypes.PLUSZONLY)
        {
            transform.rotation *= Quaternion.Euler(0, 0, angle * ((index * 2) - 1));
        }

        if (angleTypes == AngleTypes.NEGZONLY)
        {
            transform.rotation *= Quaternion.Euler(0, 0, -angle * ((index * 2) - 1));
        }
    }

    //Scale branch
    [Header("Scaling")]
    public float scaler = 0.5f;

    public void ScaleBranch(int index)
    {
        transform.localScale *= scaler;
    }
}
