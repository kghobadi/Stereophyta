using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetShroom : PickUp
{
    //player vars
    GameObject player;
    ThirdPersonController tpc;

    //
    AudioObjectPool aop;
    Vector3 originalSize, largeSize, originalPosition;

    //lerp bools
    bool breathingIn, breathingOut;
    public float breatheSpeed, breatheDistance;
    public int rhythm;

    //audio for shroom
    public AudioClip[] breathIn, breathOut;
    public AudioClip eatingSound;

    //for player to take!!
    public MeshRenderer shroomMR;
    public Material myShroomShader;

    //player interactin bool
    public bool playerHolding, returning;

    //layermasks
    public LayerMask ground;

    void Start()
    {
        //player refs
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        aop = GameObject.FindGameObjectWithTag("AudioObjPool").GetComponent<AudioObjectPool>();
        shroomMR = GetComponent<MeshRenderer>();
        myShroomShader = shroomMR.material;

        float randomScale = Random.Range(0.75f, 1.5f);

        transform.localScale *= randomScale;

        originalSize = transform.localScale;

        largeSize = originalSize * 2;

        float randomRotate = Random.Range(0, 360);

        transform.Rotate(0, randomRotate, 0);

        rhythm = Random.Range(1, 5);
        
        breatheDistance = 15;
    }

    void OnEnable()
    {
        BreatheIn();
    }

    void Update()
    {
        //distance check 
        if(Vector3.Distance(transform.position, player.transform.position) < breatheDistance && !returning && !playerHolding)
        {
            if (breathingIn)
            {
                transform.localScale = Vector3.Lerp(transform.localScale, largeSize, breatheSpeed * Time.deltaTime);

                if (Vector3.Distance(transform.localScale, largeSize) < 0.1f)
                {
                    BreatheOut();
                }
                
            }

            if (breathingOut)
            {
                transform.localScale = Vector3.Lerp(transform.localScale, originalSize, breatheSpeed * Time.deltaTime);

                if (Vector3.Distance(transform.localScale, originalSize) < 0.1f)
                {
                    BreatheIn();
                }
                
            }
        }

        //after player puts back down
        if (returning)
        {
            transform.position = Vector3.Lerp(transform.position, originalPosition, breatheSpeed * Time.deltaTime);

            if(Vector3.Distance(transform.position, originalPosition) < 0.1f)
            {
                returning = false;
                playerHolding = false;

                BreatheIn();
            }
        }
        
    }

    void BreatheIn()
    {
        AudioSource shroomAudio = GetComponentInChildren<AudioSource>();

        breathingIn = true;
        breathingOut = false;

        if (shroomAudio != null)
        {
            if (!shroomAudio.isPlaying)
            {
                PlaySound(breathIn);
            }
        }
    }

    void BreatheOut()
    {
        AudioSource shroomAudio = GetComponentInChildren<AudioSource>();

        breathingIn = false;
        breathingOut = true;

        if (shroomAudio != null)
        {
            if (!shroomAudio.isPlaying)
            {
                PlaySound(breathOut);
            }
        }
    }
    

    public void PlaySound(AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        GetComponentInChildren<AudioSource>().PlayOneShot(sounds[randomSound]);
    }

    public void SetYPos()
    {

        //adjust trees height
        RaycastHit hit;

        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity, ground))
        {
            transform.position = hit.point;

            transform.position = new Vector3(transform.position.x,
               transform.position.y + (transform.localScale.y / 2),
               transform.position.z);
        }
    }

    //player picks up if not holding another shroom
    //public override void Interact()
    //{
    //    if (fpc.currentShroom == null && !fpc.pickingShroom)
    //    {
    //        base.Interact();
    //        originalPosition = transform.position;
    //        //set our audio source free
    //        GameObject shroomAudio = GetComponentInChildren<AudioSource>().gameObject;
    //        if (shroomAudio != null)
    //        {
    //            aop.RemoveActiveAudio(shroomAudio);
    //        }
    //        breathingIn = false;
    //        breathingOut = false;
    //        transform.localScale = originalSize;
    //        fpc.currentShroom = gameObject;
    //        fpc.pickingShroom = true;
    //        playerHolding = true;
    //    }
    //}

}
