using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Water : MonoBehaviour
{
    public ParticleSystem waterEffect;

    public int emitCount;

    AudioSource waterSource;

    public List<ParticleCollisionEvent> collisionEvents;

    public List<GameObject> waterSplashes;

    public bool showRhythm;

    public int timeScale;
    
    public void Awake()
    {
        SimpleClock.ThirtySecond += OnThirtySecond;

        for (int i = 0; i < transform.childCount; i++)
        {
            waterSplashes.Add(transform.GetChild(i).gameObject);
        }

        waterEffect = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();

        waterSource = GetComponent<AudioSource>();
        SwitchTimeScale();
    }

    public void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    public void OnThirtySecond(BeatArgs e)
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
    

    void OnParticleCollision(GameObject other)
    {
        int numCollisionEvents = waterEffect.GetCollisionEvents(other, collisionEvents);
        
        int i = 0;

        bool hasWatered = false;

        while (i < numCollisionEvents)
        {
            if(i < waterSplashes.Count && !hasWatered)
            {
                if (other.tag == "Ground" || other.tag == "Plant")
                {
                    Vector3 pos = collisionEvents[i].intersection;
                    waterSplashes[i].transform.position = pos;
                    WaterSplash thisSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    if (!thisSplash.splashing)
                    {
                        thisSplash.StartCoroutine(thisSplash.Splash());
                        hasWatered = true;
                    }
                    
                }
            }
           
            i++;
        }
    }

    void SwitchTimeScale()
    {
        ParticleSystem.MainModule mainRain = waterEffect.main;
        ParticleSystem.EmissionModule waterEmitter = waterEffect.emission;

        switch (timeScale)
        {
            //can mess with speeds here to vary it up even more!
            //should also vary number of particles emitted since faster rhythms are overburdened
            case 0:
                for (int i = 0; i < waterSplashes.Count; i++)
                {
                    WaterSplash waterSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    waterSplash.splashSounds = waterSplash.oneNotes;
                }
                break;
            case 1:
                mainRain.simulationSpeed = 1f;
                for (int i = 0; i < waterSplashes.Count; i++)
                {
                    WaterSplash waterSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    waterSplash.splashSounds = waterSplash.twoNotes;
                }
                break;
            case 2:
                mainRain.simulationSpeed = 2f;
                for (int i = 0; i < waterSplashes.Count; i++)
                {
                    WaterSplash waterSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    waterSplash.splashSounds = waterSplash.threeNotes;
                }
                break;
            case 3:
                mainRain.simulationSpeed = 2f;
                for (int i = 0; i < waterSplashes.Count; i++)
                {
                    WaterSplash waterSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    waterSplash.splashSounds = waterSplash.fourNotes;
                }
                break;
            case 4:
                mainRain.simulationSpeed = 2f;
                for (int i = 0; i < waterSplashes.Count; i++)
                {
                    WaterSplash waterSplash = waterSplashes[i].GetComponent<WaterSplash>();
                    waterSplash.splashSounds = waterSplash.fiveNotes;
                }
                break;
        }
    }

   

}
