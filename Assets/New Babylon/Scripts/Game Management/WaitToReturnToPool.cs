using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaitToReturnToPool : MonoBehaviour {

    PooledObject pooledObj;
    public float waitTime;
    public bool parentToPooler = true; 

    private void Start()
    {
        pooledObj = GetComponent<PooledObject>();

        if(parentToPooler)
            transform.SetParent(pooledObj.m_ObjectPooler.transform);
    }

    private void OnEnable()
    {
        StartCoroutine(WaitToReturn());
    }

    IEnumerator WaitToReturn()
    {
        yield return new WaitForSeconds(waitTime);

        pooledObj.ReturnToPool();
    }
}
