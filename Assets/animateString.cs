using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class animateString : MonoBehaviour {
    //line renderer ref 
	private LineRenderer animateLine;
    //sides of flower branch
	public GameObject point1, point2;
    //animator
	private Animator animatePlant;

    //assigns the line renderer point to the spring joint
	public GameObject target;
	public GameObject parts;

    //ref to parent's plant script
    public GuitarPlant plantScript;
    
	void Start () {
        //grab refs
		animateLine = GetComponent<LineRenderer>();
		animatePlant = GetComponentInParent<Animator> ();
	}
	
	void Update () {
		//animateLine.positionCount = linePoints;
		if (plantScript.audioSource.isPlaying) {
			target.GetComponent<Rigidbody>().AddForce(new Vector3(0, 1000, 0));
			if (!parts.GetComponent<ParticleSystem> ().isPlaying) {
				parts.GetComponent<ParticleSystem> ().Play ();
			}
        } 

        //if it's grown
        if(animatePlant.GetBool("grown") == true)
        {
            if(!animateLine.enabled)
                animateLine.enabled = true;
            //this draws the line between the two poles of the flower
            animateLine.SetPosition(0, point1.transform.position);
            animateLine.SetPosition(animateLine.positionCount / 2, target.transform.position);
            animateLine.SetPosition(animateLine.positionCount - 1, point2.transform.position);
        }
        //closed turn off line
        else
        {
            if (animateLine.enabled)
                animateLine.enabled = false;
        }
        
	}
}
