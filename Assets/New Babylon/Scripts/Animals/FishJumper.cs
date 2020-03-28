using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FishJumper : RhythmProducer
{
    FishAnimation fishAnim;
    
    [Header("Fish Jump Values")]
    public float inAirTime = 0.75f;
    float inAirTimer = 0f;

    [Header("Sounds")]
    public AudioClip[] jumps;
    public AudioClip[] splashes;

    public override void Awake()
    {
        base.Awake();
        fishAnim = GetComponent<FishAnimation>();
    }

    // Update is called once per frame
    void Update()
    {
        //IDLE
        if (fishAnim.characterAnimator.GetBool("idle"))
        {
            Debug.Log("idle!");
            //jump on space for now (will be triggered by Aud spectrum)
            if (showRhythm)
            {
                Debug.Log("show rhythm!");
                Jump();
            }
        }

        //JUMPING
        if (fishAnim.characterAnimator.GetBool("jump"))
        {
            inAirTimer += Time.deltaTime;

            if (inAirTimer > inAirTime)
                SetIdle();
        }
    }
    
    //idle state 
    void SetIdle()
    {
        fishAnim.SetAnimator("idle");
    }

    //fish jumps towards a dive point 
    void Jump()
    {
        inAirTimer = 0;
        fishAnim.SetAnimator("jump");

        PlayRandomSound(jumps, myAudioSource.volume);
        showRhythm = false;
        Debug.Log("jumped!");
    }

    //set seagull time scale
    public void SetTimeScale()
    {
        timeScale = Random.Range(0, 5);

        //should affect the speeds of my behaviors depending on what time scale right??
    }

    public override void OnEnable()
    {
        base.OnEnable();

        SetTimeScale();
        SetIdle();
    }
}
