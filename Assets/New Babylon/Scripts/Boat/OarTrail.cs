using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OarTrail : MonoBehaviour {

    public Transform oarHead;
    TrailRenderer oarTrail;

    void Start()
    {
        oarTrail = GetComponent<TrailRenderer>();
        oarTrail.enabled = false;
    }
    
    //follows oarhead
    public IEnumerator TrailOar()
    {
        oarTrail.enabled = true;

        transform.SetParent(oarHead);
        transform.localPosition = Vector3.zero;

        yield return new WaitForSeconds(oarTrail.time / 2);

        transform.SetParent(null);
        
        yield return new WaitForSeconds(oarTrail.time / 2);

        oarTrail.enabled = false;

    }
}
