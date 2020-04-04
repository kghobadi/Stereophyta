using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomizeSize : MonoBehaviour {

    AudioSource myAudioSource;
    public bool randomizeOnStart = true;
    public float randomScaleMin = 0.5f, randomScaleMax = 2f;
    Vector3 origScale;
    float origVolume;

	void Start ()
    {
        myAudioSource = GetComponent<AudioSource>();
        //orig volume set 
        if(myAudioSource)
            origVolume = myAudioSource.volume;
        //animal's original size
        origScale = transform.localScale;
        

        if (randomizeOnStart)
            RandomizeScale();
	}

    //randomizes animal's size at start 
    public void RandomizeScale()
    {
        //alter the scale
        float randomScale = Random.Range(randomScaleMin, randomScaleMax);

        //multiply scale AND volume by our random vals
        transform.localScale = origScale * randomScale;
        if(myAudioSource)
            myAudioSource.volume = origVolume * randomScale;
    }
}
