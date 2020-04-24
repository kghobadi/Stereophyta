using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//triggers activation of an object -- particulary for setting tool pick ups
public class ObjectTrigger : MonoBehaviour {
    public GameObject objectToActivate;
    public Transform activationSpot;
    public string playerPref;
    public bool hasActivated;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if(PlayerPrefs.GetString(playerPref) != "yes")
            {
                //move obj to activation spot 
                objectToActivate.transform.position = activationSpot.position;

                //activate
                objectToActivate.SetActive(true);

                //Debug.Log("activated " + objectToActivate.name);
            }
        }
    }
}
