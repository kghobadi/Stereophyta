using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rhythm : MonoBehaviour {
    public float currentSpeed;
    protected int enabledCounter = 0; // used to count # of enables

    public virtual void OnTriggerEnter(Collider other)
    {
        //plant tag
        if (other.gameObject.tag == "Plant")
        {
            //plont plays sound
            if (other.gameObject.GetComponent<Plont>())
            {
                other.gameObject.GetComponent<Plont>().PlaySound(1f);
            }

            //shroom should release spores
            if (other.gameObject.GetComponent<Shroom>())
            {
                //might want switch rhythm to only have a chance to happen if this is annoying 
                other.gameObject.GetComponent<Shroom>().SwitchRhythm();
                other.gameObject.GetComponent<Shroom>().ReleaseSpores();
            }
        }
        //make tree play sound 
        if (other.gameObject.tag == "Tree")
        {
            TreeAudio treeAud = other.gameObject.GetComponent<TreeAudio>();
            //only play if it is not already playing 
            if (!treeAud.treeAudio.isPlaying)
            {
                treeAud.PlayRandomSound();
            }
        }
    }
    

    public virtual void OnTriggerStay(Collider other)
    {
      
    }

    public virtual void OnTriggerExit(Collider other)
    {
        

    }

    public virtual void OnEnable()
    {
        enabledCounter++;
        
    }

}
