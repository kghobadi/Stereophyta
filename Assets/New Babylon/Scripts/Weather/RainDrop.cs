using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//bombs are generated when player presses space while controlling planes
public class RainDrop : MonoBehaviour {

    //physics vars
    SphereCollider rainCol;
    Rigidbody rainBody;
    public float moveSpeedOverTime, origMoveSpeed;
    public TrailRenderer rainTrail;
    MeshRenderer rainMesh;

    //cloud parent w raincloud script
    RainCloud cloudParent;

    public bool dropping;
    public bool hasSplashed;
    Vector3 originalPosition;

    void Start () {

        //get comp refs
        rainCol = GetComponent<SphereCollider>();
        rainBody = GetComponent<Rigidbody>();
        rainTrail = GetComponent<TrailRenderer>();
        rainTrail.enabled = false;
        rainMesh = GetComponent<MeshRenderer>();
        rainMesh.enabled = false;

        //set parent for rain 
        cloudParent = transform.parent.transform.parent.GetComponent<RainCloud>();
        //set pos
        transform.localPosition += Random.insideUnitSphere * 25f;
        transform.localPosition = new Vector3(transform.localPosition.x, 5, transform.localPosition.z);
        originalPosition = transform.localPosition;

        origMoveSpeed = moveSpeedOverTime;
    }

	void Update () {
        //physics making it fall
        if (dropping)
        {
            rainBody.AddForce(0, -moveSpeedOverTime, 0);
        }
	}

    //called by DropRain() in cloud parent
    public void DropRain()
    {
        dropping = true;
        rainTrail.enabled = true;
        rainBody.useGravity = true;
        rainMesh.enabled = true;
        hasSplashed = false;
        //randomize fall speed a bit
        moveSpeedOverTime = origMoveSpeed + Random.Range(-5f, 5f);
    }


    void OnTriggerEnter(Collider other)
    {
        if (!hasSplashed)
        {
            if (other.gameObject.tag == "Plant" || other.gameObject.tag == "Ground" || other.gameObject.tag == "Building" || other.gameObject.tag == "Water")
            {
                Debug.Log("drop collided");
                Vector3 splashPos = transform.position + new Vector3(0, 1.5f, 0);

                cloudParent.SendRainSplash(splashPos);

                StartCoroutine(StopDropReset());

                hasSplashed = true;
            }
        }
        
    }

    IEnumerator StopDropReset()
    {
        //turn off physics
        rainBody.useGravity = false;
        rainBody.velocity = Vector3.zero;
        rainTrail.enabled = false;

        yield return new WaitForSeconds(0.25f);

        //no longer dropping
        dropping = false;
        rainMesh.enabled = false;

        //reset position
        transform.localPosition = originalPosition + Random.insideUnitSphere * 3f;
    }
    
}
