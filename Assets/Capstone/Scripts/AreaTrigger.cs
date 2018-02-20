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
    
    public AudioMixerSnapshot oldArea, nextArea;
    public AudioMixerGroup oldGroup, newGroup;
    bool hasEntered, oldSnap, transitioned;
    public bool cutScene;

    void Start()
    {
        tpc = GameObject.FindGameObjectWithTag("Player").GetComponent<ThirdPersonController>();
        cameraCutScenes = Camera.main.GetComponent<CutScene>();
        oldSnap = true;
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
            if (hasEntered && oldSnap && !transitioned)
            {
                nextArea.TransitionTo(1f);
                oldArea = tpc.currentAudioMix;
                tpc.currentAudioMix = nextArea;
                oldGroup = tpc.plantingGroup;
                tpc.plantingGroup = newGroup;
                oldSnap = false;
                transitioned = true;
            }
            if (hasEntered && !oldSnap && !transitioned)
            {
                oldArea.TransitionTo(1f);
                tpc.currentAudioMix = oldArea;
                tpc.plantingGroup = oldGroup;
                oldSnap = true;
                transitioned = true;
            }
            if (!hasEntered)
            {
                if(cutScene)
                    cameraCutScenes.ShowNewArea(startingPosition, startingRotation, cameraPositions, highlightedObjects);
                hasEntered = true;
                nextArea.TransitionTo(1f);
                oldArea = tpc.currentAudioMix;
                tpc.currentAudioMix = nextArea;
                oldGroup = tpc.plantingGroup;
                tpc.plantingGroup = newGroup;
                oldSnap = false;
            }
        }
    }
}
