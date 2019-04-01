using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AxWind : Rhythm {
    float currentSpeed;
    public Ax myAxDaddy;

    Vector3 originalPos;

    public float axDist;
    public float scaleIncrease;

    void Start()
    {
        currentSpeed = myAxDaddy.axWindSpeed;
        axDist = myAxDaddy.distanceToDestroyWinds;
        scaleIncrease = myAxDaddy.scaleIncrease;
        originalPos = transform.position;
    }

    void Update()
    {
        transform.Translate(currentSpeed * Time.deltaTime, 0, 0);

        transform.localScale += (Vector3.one * scaleIncrease * Time.deltaTime);

        if (Vector3.Distance(transform.position, originalPos) > myAxDaddy.distanceToDestroyWinds)
        {
            Destroy(gameObject);
        }

        AdjustHeight();
    }

    void AdjustHeight()
    {
        Vector3 down = transform.TransformDirection(Vector3.down) * 10;

        RaycastHit hit;

        if (Physics.Raycast(transform.position, down, out hit, 25f))
        {
            if (hit.transform.gameObject.tag == "Ground")
            {
                transform.position = hit.point + new Vector3(0, 1.5f, 0);
            }
        }
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);

        if(other.gameObject.tag == "Plant" )
        {

            if (!other.gameObject.GetComponent<Plont>().extraVoice.isPlaying)
            {
                //shrink plant and play guitar sound
                other.GetComponent<Plont>().GrowPlant(false);
                PlaySound(other.gameObject.GetComponent<Plont>().extraVoice, myAxDaddy.axHits);
                Debug.Log("played guitar sound");
            }

        }
    }

    //adds on ax sound (guitar notes
    public void PlaySound(AudioSource audSource, AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        audSource.PlayOneShot(sounds[randomSound]);
    }

}
