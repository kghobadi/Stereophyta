using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioTrigger : MonoBehaviour {
    public MusicFader audioFader;
    public bool hasActivated;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (!hasActivated)
            {
                audioFader.FadeOut(0f);
            }
        }
    }

}
