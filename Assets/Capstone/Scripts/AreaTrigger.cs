using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AreaTrigger : MonoBehaviour {

    //when a player runs thru this object, used to feed info for CutScene

    public Vector3 startingPosition;
    public Transform startingRotation; // points at which cutscene should begin
    public Vector3[] cameraPositions; //array of cameraPositions for panning
    public Transform[] highlightedObjects; // array of objects to look at while panning

    CutScene cameraCutScenes;

    void Start()
    {
        cameraCutScenes = Camera.main.GetComponent<CutScene>();
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            cameraCutScenes.ShowNewArea(startingPosition, startingRotation, cameraPositions, highlightedObjects);
            Destroy(gameObject);
        }
    }
}
