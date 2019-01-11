using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AreaTrigger : MonoBehaviour {

    //when a player runs thru this object, used to feed info for CutScene

    ThirdPersonController tpc;

    public Transform startingPosition;
    public Transform startingRotation; // points at which cutscene should begin
    public Transform[] cameraPositions; //array of cameraPositions for panning
    public Transform[] highlightedObjects; // array of objects to look at while panning

    CutScene cameraCutScenes;
    
    public AudioMixerSnapshot oldArea, thisArea;
    public AudioMixerGroup oldGroup, thisGroup;
    bool hasEntered, transitioned;
    public bool cutScene;

    void Start()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        cameraCutScenes = Camera.main.GetComponent<CutScene>();
    }

    void Update()
    {
        if (transitioned)
        {
            transitioned = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player" )
        {
            if (cutScene)
            {
                if (!hasEntered)
                {
                    cameraCutScenes.ShowNewArea(startingPosition, startingRotation, cameraPositions, highlightedObjects);
                    hasEntered = true;
                }
            }
            thisArea.TransitionTo(1f);
            //tpc.currentAudioMix = thisArea;
            //tpc.plantingGroup = thisGroup;
            transitioned = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            oldArea.TransitionTo(1f);
            //tpc.currentAudioMix = oldArea;
            //tpc.plantingGroup = oldGroup;
            transitioned = true;
        }

    }
}
