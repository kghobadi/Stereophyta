// http://wiki.unity3d.com/index.php?title=CameraFacingBillboard

//cameraFacingBillboard.cs v03
//by Neil Carter (NCarter)
//modified by Juan Castaneda (juanelo)
//modified by Brendan Matkin
//
//added in-between GRP object to perform rotations on
//added auto-find main camera
//added un-initialized state, where script will do nothing
//BM - added color tinting
using UnityEngine;
using System.Collections;


public class CameraFacingBillboard : MonoBehaviour
{
	private GameObject playerBody;
    
    public Camera playerCam;

    //Animator myAnim;
	
	void Awake(){
        //player refs
        playerBody = GameObject.FindGameObjectWithTag("Player");
        
        //myAnim = GetComponent<Animator>();
	}

	void Update(){
        transform.LookAt(playerCam.transform.position);
	}



    //void OnBecameVisible()
    //{
    //    StartCoroutine(Animate());
    //}

    //void OnBecameInvisible()
    //{
    //    myAnim.enabled = false;
    //}

    //IEnumerator Animate()
    //{
    //    float randomWait = Random.Range(0, 0.25f);
    //    yield return new WaitForSeconds(randomWait);
    //    myAnim.enabled = true;
    //}

}
