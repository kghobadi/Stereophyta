using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FishJumper : RhythmProducer
{
    FishAnimation fishAnim;
    
    [Header("Fish Jump Values")]
    public float jumpChance = 25f;
    bool canJump = true;
    public float jumpReset = 0.5f;
    float jumpTimer = 0f;

    public float inAirTime = 0.75f;
    float inAirTimer = 0f;

    public override void Awake()
    {
        base.Awake();
        fishAnim = GetComponent<FishAnimation>();
    }

    void Start()
    {
        SetTimeScale();
        SetIdle();
    }

    // Update is called once per frame
    void Update()
    {
        //IDLE
        if (fishAnim.Animator.GetBool("idle"))
        {
            //jump on space for now (will be triggered by Aud spectrum)
            if (showRhythm)
            {
                JumpCheck();
            }

            JumpReset();
        }

        //JUMPING
        if (fishAnim.Animator.GetBool("jump"))
        {
            inAirTimer += Time.deltaTime;

            if (inAirTimer > inAirTime)
                SetIdle();
        }
    }

    //check if the fish should jump 
    void JumpCheck()
    {
        //random chance to jump 
        if (canJump)
        {
            float jump = Random.Range(0f, 100f);
            Debug.Log("Can jump!");

            if (jump < jumpChance)
            {
                Jump();
            }

            jumpTimer = 0;
            canJump = false;
            showRhythm = false;
        }
    }

    //reset jump ability 
    void JumpReset()
    {
        if (!canJump)
        {
            jumpTimer += Time.deltaTime;
            if (jumpTimer > jumpReset)
            {
                canJump = true;
            }
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
        Debug.Log("jumped!");
    }

    //set seagull time scale
    public void SetTimeScale()
    {
        timeScale = Random.Range(0, 5);

        //should affect the speeds of my behaviors depending on what time scale right??
    }
}
