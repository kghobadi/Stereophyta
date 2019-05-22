using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RainCloud : MonoBehaviour
{
    GameObject _player;

    float currentSpeed;
    public CloudGenerator _cloudGen;
    public LayerMask ground;

    //list of rain drops and splashes
    public List<RainDrop> rainDrops = new List<RainDrop>();
    public List<RainSplash> rainSplashes = new List<RainSplash>();

    protected bool playedAudio, showRhythm, onClock;

    public int timeScale;

    public float dropChance;
    
    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");

        currentSpeed = _cloudGen.cloudSpeed;

        SwitchTimeScale();
    }
    

    void Update()
    {
        //add to clock when close to player
        if(Vector3.Distance(transform.position, _player.transform.position) < 150 && !onClock)
        {
            SimpleClock.ThirtySecond += OnThirtySecond;
            onClock = true;
        }
        //take off clock when far away 
        else if(Vector3.Distance(transform.position, _player.transform.position) > 155 && onClock)
        {
            SimpleClock.ThirtySecond -= OnThirtySecond;
            onClock = false;
        }
        
        //move at current speed
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        //destroy when it gets far away enough from original generator
        if (Vector3.Distance(transform.position, _cloudGen.transform.position) > _cloudGen.distanceToDestroy)
        {
            Destroy(gameObject);
        }
        
        //when it has rhythm message from clock
        if (showRhythm )
        {
            //drops rain
            DropRain();

            showRhythm = false;
        }

        AdjustHeight();
    }

    //drop all our rain drops
    public void DropRain()
    {
        //Debug.Log("dropping rain");

        for(int i = 0; i < rainDrops.Count; i++)
        {
            float randomChance = Random.Range(0f, 100f);

            if(randomChance < dropChance)
            {
                rainDrops[i].DropRain();
            }
        }
    }

    //called by RainDrops when they collide with something
    public void SendRainSplash(Vector3 position)
    {
        bool sentSplash = false;

        for(int i = 0; i < rainSplashes.Count; i++)
        {
            if (!sentSplash)
            {
                //not splashing
                if (!rainSplashes[i].splashing)
                {
                    rainSplashes[i].StartCoroutine(rainSplashes[i].Splash(position));

                    sentSplash = true;

                    //Debug.Log("sent splash");
                }
            }
        }
    }

    //adjusts height based on raycast at the Ground (terrain)
    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 500))
        {

            transform.position = Vector3.MoveTowards(transform.position, hit.point + new Vector3(0, 50f, 0), 5 * Time.deltaTime);

        }
    }

    //grab tick values
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

    void SwitchTimeScale()
    {
        switch (timeScale)
        {
            //can mess with speeds here to vary it up even more!
            //should also vary number of particles emitted since faster rhythms are overburdened
            case 0:
                dropChance = 100;
                for (int i = 0; i < rainDrops.Count; i++)
                {
                    rainDrops[i].GetComponent<RainDrop>().moveSpeedOverTime = 10;
                }
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().oneNotes;
                }
                break;
            case 1:
                dropChance = 50;
                for (int i = 0; i < rainDrops.Count; i++)
                {
                    rainDrops[i].GetComponent<RainDrop>().moveSpeedOverTime = 20;
                }
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().twoNotes;
                }
                break;
            case 2:
                dropChance = 25;
                for (int i = 0; i < rainDrops.Count; i++)
                {
                    rainDrops[i].GetComponent<RainDrop>().moveSpeedOverTime = 40;
                }
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().threeNotes;
                }
                break;
            case 3:
                dropChance = 12.5f;
                for (int i = 0; i < rainDrops.Count; i++)
                {
                    rainDrops[i].GetComponent<RainDrop>().moveSpeedOverTime = 80;
                }
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().fourNotes;
                }
                break;
            case 4:
                dropChance = 6.25f;
                for (int i = 0; i < rainDrops.Count; i++)
                {
                    rainDrops[i].GetComponent<RainDrop>().moveSpeedOverTime = 160;
                }
                for (int i = 0; i < rainSplashes.Count; i++)
                {
                    rainSplashes[i].GetComponent<RainSplash>().splashSounds = rainSplashes[i].GetComponent<RainSplash>().fiveNotes;
                }
                break;
        }
    }

    //when it's destroyed make sure to remove from clock if it was on it
    public virtual void OnDestroy()
    {
        if (onClock)
        {
            SimpleClock.ThirtySecond -= OnThirtySecond;
        }
    }

}
