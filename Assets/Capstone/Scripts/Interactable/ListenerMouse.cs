using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class ListenerMouse : MonoBehaviour {
    //dictionary to sort nearby audio sources by distance 
    Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    
    //listener range
    public float listeningRadius;
    //store this mouse pos
    Vector3 lastPosition;

    void Update () {
        //series of lines to grab the mouse position and make sure audio listener follows it
        float mouseX = Input.mousePosition.x;

        float mouseY = Input.mousePosition.y;

        float cameraDif = Camera.main.transform.position.y - transform.position.y;

        Vector3 worldpos = Camera.main.ScreenToWorldPoint(new Vector3(mouseX, mouseY, cameraDif + 15));

        Vector3 hoverLocation = new Vector3(worldpos.x, transform.position.y, worldpos.z);

        transform.position = hoverLocation;

        //if mouse has moved, refill list & reevaluate priorities
        if(lastPosition != transform.position)
        {
            //empty dictionary
            soundCreators.Clear();
            //overlap sphere to find nearby sound creators
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, listeningRadius);
            int i = 0;
            while (i < hitColliders.Length)
            {
                //check to see if obj is plant or rock
                if (hitColliders[i].gameObject.tag == "Plant" || hitColliders[i].gameObject.tag == "Rock")
                {
                    //check distance and add to list
                    float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                    //add to audiosource and distance to dictionary
                    soundCreators.Add(hitColliders[i].gameObject.GetComponent<AudioSource>(), distanceAway);

                   
                }
                i++;
            }

            int priority = 0;
            //sort the dictionary by order of ascending distance away
            foreach (KeyValuePair<AudioSource, float> item in soundCreators.OrderBy(key => key.Value))
            {

                // do something with item.Key and item.Value
                item.Key.priority = priority;
                priority++;
            }
            
            //loop through the dictionary and set priorities
            //for (int s = 0; s < soundCreators.Count; s++)
            //{
            //    soundCreators[hitColliders[i].
            //}
        }

        

        lastPosition = transform.position;


    }
}
