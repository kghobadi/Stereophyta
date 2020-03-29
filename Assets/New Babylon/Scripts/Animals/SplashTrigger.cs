using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplashTrigger : MonoBehaviour
{
    FishJumper fishJumper;
    GullAI gullAI;
    public ObjectPooler splashPool;

    void Awake()
    {
        fishJumper = transform.parent.GetComponent<FishJumper>();
        gullAI = GetComponent<GullAI>();
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
            if(fishJumper)
                fishJumper.PlayRandomSound(fishJumper.splashes, fishJumper.myAudioSource.volume);
            if (gullAI)
                gullAI.PlayRandomSound(gullAI.splashes, gullAI.myAudioSource.volume);
        }
    }
}
