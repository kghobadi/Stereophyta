
//this is going to look and function like the mushroom from shroom shade forest

//each one is its own 'seed' 
//can pick it up off the ground at any time and it will stop growing and add to your materials inventory (left hand)
//when 'planted' it has a very short life span
//has no growth stages, just a growth speed
//it's scale slowly increases (mainly on the y scale but also on the other 2)
//when hit by rhythm of any kind (or by the player), releases spores
//spores are just 2 sprites that float in the wind kinda sporadically
//when a spore touches the ground it plants a new shrooms
//spores float in random direction (almost like unused FC floating particles w smooth random movements)
//that's that. 
//they can grow on top of each other
//watering them just makes them release spores (but this only works once a day)

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Shroom : PickUpMaterial
{
    //tgs logic
    TerrainGridSystem tgs;
    Cell currentCell;
    int currentCellIndex, previousCellIndex;
    //All possible texture references. 
    public Texture2D groundTexture;
    public Texture2D plantedTexture;
    public Texture2D canClickTexture;

    //
    AudioObjectPool aop;
    Vector3 originalSize, largeSize, originalPosition;

    //physics
    Rigidbody shroomBody;
    BoxCollider shroomCol;

    //lerp bools
    public bool planted, planting, plantingOnGrid;
    bool breathingIn, breathingOut;
    public float shroomGroupDist;
    public float breatheSpeed, breatheDistance;
    public int rhythm, shroomGroupMax;

    //audio for shroom
    public AudioClip[] breathIn, breathOut;
    public AudioClip eatingSound, dropShroom, noNo;

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

        //audio obj pool and material ref
        aop = GameObject.FindGameObjectWithTag("AudioObjPool").GetComponent<AudioObjectPool>();
        shroomMR = GetComponent<MeshRenderer>();
        myShroomShader = shroomMR.material;

        SetShroom();
    }

    void OnEnable()
    {
        BreatheIn();
    }

    public override void Update()
    {
        //pickup logic
        base.Update();

        //they are alive and breathing --- not in inventory 
        if (planted)
        {
            //distance check 
            if (Vector3.Distance(transform.position, player.transform.position) < breatheDistance)
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
                PlaySoundArray(breathIn);
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
                PlaySoundArray(breathOut);
            }
        }
    }

    //planting on terrain grid
    void CheckCanPlantGrid()
    {
        //get the index of this cell
        int cellIndex = tgs.CellGetIndex(currentCell);
        currentCellIndex = cellIndex;

        //compare to previous cell 
        if (currentCellIndex != previousCellIndex)
        {
            previousCellIndex = currentCellIndex;
        }

        //checks if cell is fertile 
        if (tgs.CellGetTag(cellIndex) == 0)
        {
            //Sets texture to clickable
            tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);

            //If player clicks, we plant seed and clear up Equip slot
            if (Input.GetButton("Plant"))
            {
                DropShroom();
                plantingOnGrid = true;
            }

        }
        else
        {
            // cant plant here, grid spot is taken or not fertile
            if (Input.GetButton("Plant"))
            {
                PlaySound(noNo);
            }
        }

        //If it's a new cell, set last cell back to fertileTexture
        if (tgs.CellGetTag(previousCellIndex) == 0)
            StartCoroutine(ChangeTexture(currentCellIndex, groundTexture));
    }

    //planting on terrain without grid
    void CheckCanPlant(RaycastHit hit)
    {
        if (Input.GetButton("Plant"))
        {
            //check in radius of planting point if it theres too many other shrooms
            int otherShrooms = 0;
            Collider[] hitColliders = Physics.OverlapSphere(hit.point, shroomGroupDist);
            int i = 0;
            while (i < hitColliders.Length)
            {
                if (hitColliders[i].gameObject.tag == "Plant")
                {
                    otherShrooms ++;
                    Debug.Log("hit other plant");
                }
                i++;
            }

            //if there is not too many shrooms
            if (otherShrooms < shroomGroupMax)
            {
                DropShroom();
            }
            //too many shroooms...
            else
            {
                PlaySound(noNo);
            }
        }
    }

    //Sets texture back to normal
    IEnumerator ChangeTexture(int index, Texture2D texture)
    {
        yield return new WaitForEndOfFrame();
        tgs.CellToggleRegionSurface(index, true, texture);
    }

    //called when click to plant really goes through
    void DropShroom()
    {
        planting = true;
        transform.SetParent(null);
        shroomBody.isKinematic = false;
        shroomBody.useGravity = true;
        PlaySound(dropShroom);
    }

    void OnCollisionEnter(Collision collision)
    {
        //ui seed hitting ground
        if (collision.gameObject.tag == "Ground" && planting)
        {
            SetShroom();
        }
    }

    //called when shroom is first planted
    void SetShroom()
    {
        //turn off physics
        shroomBody.useGravity = false;
        shroomBody.isKinematic = true;
        shroomCol.isTrigger = true;

        //need to figure out how best to randomize size, sound, and rhythm logic
        float randomScale = Random.Range(0.75f, 1.5f);

        transform.localScale *= randomScale;

        originalSize = transform.localScale;

        largeSize = originalSize * 2;

        float randomRotate = Random.Range(0, 360);

        transform.Rotate(0, randomRotate, 0);

        rhythm = Random.Range(1, 5);

        breatheDistance = 15;
        //end

        planting = false;
        planted = true;
    }

    public void PlaySound(AudioClip sound)
    {
        GetComponentInChildren<AudioSource>().PlayOneShot(sound);
    }

    public void PlaySoundArray (AudioClip[] sounds)
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

    //called when hit by rhythm
    public void ReleaseSpores()
    {
        //release random # of spores 
        //(apply velocity to them based on inc rhythm)

        //wiggle animation 

        //glow material 
    }

}
