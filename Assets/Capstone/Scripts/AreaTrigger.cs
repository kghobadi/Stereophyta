using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AreaTrigger : MonoBehaviour {

    //when a player runs thru this object, used to feed info for CutScene

    public Vector3 startingPosition;
    public Transform startingRotation; // points at which cutscene should begin
    public Vector3[] cameraPositions; //array of cameraPositions for panning
    public Transform[] highlightedObjects; // array of objects to look at while panning

    CutScene cameraCutScenes;
    
    public AudioMixerSnapshot oldArea, nextArea;
    bool hasEntered, oldSnap, transitioned;

    void Start()
    {
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
                oldSnap = false;
                transitioned = true;
            }
            if (hasEntered && !oldSnap && !transitioned)
            {
                oldArea.TransitionTo(1f);
                oldSnap = true;
                transitioned = true;
            }
            if (!hasEntered)
            {
                cameraCutScenes.ShowNewArea(startingPosition, startingRotation, cameraPositions, highlightedObjects);
                hasEntered = true;
                nextArea.TransitionTo(1f);
                oldSnap = false;
            }
        }
    }
}
