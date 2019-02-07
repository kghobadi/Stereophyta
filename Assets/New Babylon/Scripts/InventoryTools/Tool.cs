using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//abstract class to build tools from
public abstract class Tool : MonoBehaviour {
    protected GameObject player;
    protected ThirdPersonController tpc;

    public bool showRhythm;

    public int timeScale;


    //set tool refs in awake so that inventory can disable them at start
    public virtual void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;

        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
    }

    public virtual void Start () {
	}

    public void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public virtual void OnThirtySecond(BeatArgs e)
    {
        switch (timeScale)
        {
            case 0:
                if (e.TickMask[TickValue.Measure])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 1:
                if (e.TickMask[TickValue.Quarter])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 2:
                if (e.TickMask[TickValue.Eighth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 3:
                if (e.TickMask[TickValue.Sixteenth])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
            case 4:
                if (e.TickMask[TickValue.ThirtySecond])
                {
                    // rhythm creation / beat visual
                    showRhythm = true;
                }
                break;
        }

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
