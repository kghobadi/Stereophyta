using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectPooler : MonoBehaviour {

    public GameObject objectPrefab;
  
    public int poolSize;
    List<GameObject> availableObjects = new List<GameObject>();
    List<GameObject> objectsInUse = new List<GameObject>();

    protected virtual void Awake() {
        //nothing -.-
    }

    //instantiates a new object and resets poolsize
    protected virtual GameObject InstantiateNew() {
        //instantiate
        GameObject newObject = Instantiate(objectPrefab);
        //add pooledObj script
        newObject.AddComponent<PooledObject>();
        newObject.GetComponent<PooledObject>().m_ObjectPooler = this;
        //set poolsize
        poolSize = availableObjects.Count + objectsInUse.Count;
        return newObject;
    }

    //called from another object when a new obj is needed 
    public virtual GameObject GrabObject()
    {
        //empty gameObj
        GameObject grabbedObject;

        //grab available object
        if (availableObjects.Count > 0)
        {
            //set to first availableObj
            grabbedObject = availableObjects[0];
            //remove from avail objects
            availableObjects.RemoveAt(0);
        }
        //all availableObjects in use, so instantiate a new one 
        else
        {
            //set to instantiateNew
            grabbedObject = InstantiateNew();
        }

        //add it to objectsInUse
        objectsInUse.Add(grabbedObject);
        //unparent
        grabbedObject.transform.SetParent(null);
        //set active
        grabbedObject.SetActive(true);
        //return
        return grabbedObject;
    }

    //called from another object to return this to Pool
    public virtual void ReturnObject(GameObject returnedObject)
    {
        //set parent to pooler
        returnedObject.transform.parent = transform;
        //deactivate
        returnedObject.SetActive(false);
        //remove from objects in use
        objectsInUse.Remove(returnedObject);
        //add to availabeObjects
        availableObjects.Add(returnedObject);
    }
}
