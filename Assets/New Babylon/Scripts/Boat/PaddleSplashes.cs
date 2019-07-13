using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaddleSplashes : MonoBehaviour {

    public Transform oarHead;
    public bool paddling;

	
	void Update () {
        if (paddling)
        {
            transform.position = oarHead.position;
        }
	}

    public IEnumerator Paddle()
    {
        paddling = true;

        yield return new WaitForSeconds(0.25f);

        paddling = false;
    }
}
