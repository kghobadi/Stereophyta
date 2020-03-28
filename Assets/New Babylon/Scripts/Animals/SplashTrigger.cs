using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplashTrigger : MonoBehaviour
{
    FishJumper fishJumper;
    public ObjectPooler splashPool;

    void Awake()
    {
        fishJumper = transform.parent.GetComponent<FishJumper>();
    }

    void OnTriggerEnter(Collider other)
    {
        //water layer 
        if(other.gameObject.layer == 4)
        {
            if (splashPool)
            {
                GameObject splash = splashPool.GrabObject();

                splash.transform.position = transform.position;
            }

            //play splash sound 
            fishJumper.PlayRandomSound(fishJumper.splashes, fishJumper.myAudioSource.volume);
        }
    }
}
