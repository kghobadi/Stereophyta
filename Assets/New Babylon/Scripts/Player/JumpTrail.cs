using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpTrail : MonoBehaviour {
    PooledObject _pooledObj;
    TrailRenderer myTrail;

	void Start () {
        _pooledObj = GetComponent<PooledObject>();
        myTrail = GetComponent<TrailRenderer>();
	}
	
    public IEnumerator Deactivate()
    {
        yield return new WaitForSeconds(myTrail.time);

        myTrail.Clear();
        _pooledObj.ReturnToPool();
    }
}
