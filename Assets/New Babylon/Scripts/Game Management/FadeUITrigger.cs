using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeUITrigger : MonoBehaviour {
    public FadeUI[] fades;

    public FadeType fadeType;
    public enum FadeType
    {
        IN, OUT,
    }

    public bool hasActivated;
    
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (!hasActivated)
            {
                SetFades();

                hasActivated = true;
            }
        }
    }

    void SetFades()
    {
        if (fadeType == FadeType.IN)
        {
            for (int i = 0; i < fades.Length; i++)
            {
                fades[i].FadeIn();
            }
        }
        else if (fadeType == FadeType.OUT)
        {
            for (int i = 0; i < fades.Length; i++)
            {
                fades[i].FadeOut();
            }
        }
    }
}
