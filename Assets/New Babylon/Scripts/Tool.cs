using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class to build tools from
public abstract class Tool : MonoBehaviour {
    protected GameObject player;
    protected ThirdPersonController tpc;


    //set tool refs in awake so that inventory can disable them at start
    
	public virtual void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
	}

    public virtual void Update ()
    {
        if (Input.GetButtonDown("MainAction") && !tpc.menuOpen)
        {
            MainAction();
        }
	}

    //this will be filled in by each tool individually
    public virtual void MainAction()
    {

    }

    public virtual void PlaySound(AudioSource audSource, AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        audSource.PlayOneShot(sounds[randomSound]);
    }

}
