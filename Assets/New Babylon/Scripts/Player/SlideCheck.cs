using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlideCheck : MonoBehaviour {
    ThirdPersonController tpc;
    //for calc of sliding
    public Transform physicsRaycaster;
    public LayerMask groundedCheck;

	// Use this for initialization
	void Awake () {
        tpc = GetComponent<ThirdPersonController>();
        if (tpc)
            physicsRaycaster = tpc.physicsRaycaster;
	}
	

    //we want to see if we are on terrain that should make us slide downward
    //only gets called while Player is considered to be grounded
    public void SlideLogic()
    {
        //store hit and point
        RaycastHit hit;
        Vector3 point;

        bool sliding = false;

        for (int i = 0; i < 30; i++)
        {
            //raycast forward to see if we hit terrain 
            if (Physics.Raycast(physicsRaycaster.transform.position, physicsRaycaster.transform.forward, out hit, 3, groundedCheck))
            {
                point = hit.point;

                //hit down
                RaycastHit hitD;
                Vector3 dPoint;

                //raycast down to see if we hit the terrain;
                if (Physics.Raycast(transform.position, -transform.up, out hitD, 10, groundedCheck))
                {
                    dPoint = hitD.point;

                    //compare the heights of these points. 
                    //if down point is lower height, we should fall down slowly
                    if (dPoint.y < (point.y - 1.5f))
                    {
                        tpc.verticalSpeed = -tpc.jumpSpeed * 2;
                        float zForce = -physicsRaycaster.transform.forward.z * 5;
                        //i think we need to somehow reorient the player before applying this force. 
                        transform.localEulerAngles = new Vector3(transform.localEulerAngles.x, physicsRaycaster.transform.localEulerAngles.y, transform.localEulerAngles.z);
                        tpc.currentMovement.z = zForce;
                        sliding = true;

                        //should make an animation for this, dust particles, sound?

                        Debug.Log("sliding backward");
                    }
                }
            }

            //spin physics raycaster 1/30th of the way around y axis to shoot ray again
            physicsRaycaster.transform.Rotate(0, 12, 0);
        }

        if (!sliding)
        {
            tpc.verticalSpeed = 0;
        }
    }
}
