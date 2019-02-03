using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AxWind : Rhythm {
    float currentSpeed;
    public Ax myAxDaddy;

    void Start()
    {
        currentSpeed = myAxDaddy.axWindSpeed;
    }

    void Update()
    {
        transform.Translate(0, 0, currentSpeed * Time.deltaTime);

        if (Vector3.Distance(transform.position, myAxDaddy.transform.position) > myAxDaddy.distanceToDestroyWinds)
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
                transform.position = hit.point + new Vector3(0, 3f, 0);
            }
        }
    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);

        if(other.gameObject.tag == "Plant")
        {
            PlaySound(other.gameObject.GetComponentInChildren<AudioSource>(), myAxDaddy.axHits);
        }
    }

    //adds on ax sound (guitar notes
    public void PlaySound(AudioSource audSource, AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        audSource.PlayOneShot(sounds[randomSound]);
    }

}
