using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class AudioObjectPool : MonoBehaviour {
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    //dictionary to sort nearby audio sources by distance 
    public List<GameObject> inactiveAudioSources = new List<GameObject>();
    public List<GameObject> activeAudioSources = new List<GameObject>();

    //dictionary of audioObjects and their respective distances away from the Player
    [SerializeField]
    public Dictionary<GameObject, float> soundCreators = new Dictionary<GameObject, float>();
    //to shorten if statement
    public List<GameObject> audioObjects = new List<GameObject>();
    //listener range
    public float listeningRadius, activeAudioDistance;
    //to shorten if statement
    public List<string> audioTags = new List<string>();

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();
        ResetNearbyAudioSources();
    }
    
    void Update () {
        //adjust the object pool when the player moves
        if (tpc.horizontalInput.magnitude > 0)
        {
            ResetNearbyAudioSources();
        }
	}

    //this function shifts all audio source priorities dynamically
    void ResetNearbyAudioSources()
    {
        //if an activeAudioSource is beyond listeningRadius, set it to inactive
        for(int a = 0; a < activeAudioSources.Count; a++)
        {
            if(activeAudioSources[a] != null)
            {
                //audio source is not playing
                if (activeAudioSources[a].GetComponent<AudioSource>().isPlaying == false)
                {
                    float dist = Vector3.Distance(activeAudioSources[a].transform.position, tpc.transform.position);

                    //if dist away from player is greater than active dist, set inactive
                    if (dist > activeAudioDistance)
                    {
                        //add to inactive, remove from active, increment a down 1
                        RemoveActiveAudio(activeAudioSources[a]);
                        a--;
                    }
                }
            }
        }

        //reset the distance check lists
        soundCreators.Clear();
        audioObjects.Clear();

        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(tpc.transform.position, listeningRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            //an audio object in listening range
            GameObject audioObj = hitColliders[i].gameObject;

            //check to see if obj has desired tag
            if (audioTags.Contains(audioObj.tag) &&
                //that the object is  active 
                audioObj.activeSelf &&
                //and not already part of our audioObjects list
                !audioObjects.Contains(audioObj))
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, tpc.transform.position);
                //add to audiosource and distance to dictionary
                soundCreators.Add(audioObj, distanceAway);
                //add to list of objects
                audioObjects.Add(audioObj);
            }
            i++;
        }

        int priority = 0;
        //sort the dictionary by order of ascending distance away
        foreach (KeyValuePair<GameObject, float> item in soundCreators.OrderBy(key => key.Value))
        {
            // if the game object has no audio source
            if(item.Key.GetComponentInChildren<AudioSource>() == null)
            {
                //within active dist
                if(item.Value < activeAudioDistance)
                {
                    //if we have an audioSource to share
                    if (inactiveAudioSources.Count > 0)
                    {
                        //move audio source to this objs pos
                        inactiveAudioSources[0].transform.position = item.Key.transform.position;
                        //set it as the child of the audio obj
                        inactiveAudioSources[0].transform.SetParent(item.Key.transform);
                        //set the priority
                        inactiveAudioSources[0].GetComponent<AudioSource>().priority = priority;

                        //add to active list, then remove from inactive list
                        activeAudioSources.Add(inactiveAudioSources[0]);
                        inactiveAudioSources.Remove(inactiveAudioSources[0]);
                    }
                }
            }
            //this obj already has an audioSource
            else
            {
                //set priority
                int index = activeAudioSources.IndexOf(item.Key);
                activeAudioSources[index].GetComponent<AudioSource>().priority = priority;
            }

            priority++;
        }
        
    }

    public void RemoveActiveAudio(GameObject obj)
    {
        int index = activeAudioSources.IndexOf(obj);
        //add to inactive, remove from active, increment a down 1
        inactiveAudioSources.Add(activeAudioSources[index]);
        activeAudioSources[index].transform.SetParent(this.transform);
        activeAudioSources.Remove(activeAudioSources[index]);
    }
}
