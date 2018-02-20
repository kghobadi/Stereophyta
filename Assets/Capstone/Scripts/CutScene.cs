using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CutScene : MonoBehaviour {

    // This script contains functionality for camera movements, trigger events, and cutscenes. 
    // Whenever a Gate is opened, the OpenGate() function is called here. 
    // From current position, camera zooms towards gate and a sound is played to indicate the player has done something. 

    // When players enter new areas, a CutScene() function will be triggered.
    // Taking a list of Vector3 positions and rotations, it will smoothly transition the camera thru a new area.
    // Panning around to the main objects of importance, mechanisms, and showing the scene. 

    // During all of this, the CameraController & ThirdPerson Controller scripts remain inactive. 

    GameObject _player;

    public Vector3 origPosition, desiredPosition, origRotation, desiredRotation ;

    //for cutscenes
    public Transform[] shotPositions;
    public Transform[] highlightedObjects;
    public Transform firstShotPos;
    public Transform firstShotRot;

    public float camSpeedEvent, camSpeedCutScene, camRotSpeed;

    public bool showingEvent, movingCut, atNextPos, backToPlayer;

    CameraController camController;
    ThirdPersonController tpc;

    AudioSource camAudSource;
    public AudioClip gateOpened;

    Camera mainCam;

    float camOrigSize;

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        tpc = _player.GetComponent<ThirdPersonController>();
        camController = GetComponent<CameraController>();

        camAudSource = GetComponent<AudioSource>();
        mainCam = GetComponent<Camera>();
    }

    void Update () {
        //happens until event has been shown
        if (showingEvent)
        {
            if (transform.position != desiredPosition)
            {
                transform.position = Vector3.MoveTowards(transform.position, desiredPosition, camSpeedEvent * Time.deltaTime);
                transform.LookAt(desiredRotation);
            }
            else
            {
                showingEvent = false;
                transform.position = origPosition;
                transform.localEulerAngles = origRotation;
                tpc.enabled = true;
                camController.enabled = true;
                mainCam.nearClipPlane = -10;
            }
        }

        //active for each panning cut in cutscene
        if (movingCut)
        {
            if (transform.position != desiredPosition)
            {
                transform.position = Vector3.MoveTowards(transform.position, desiredPosition, camSpeedCutScene * Time.deltaTime);
                transform.LookAt(desiredRotation);
            }
            else
            {
                atNextPos = true;
                movingCut = false;
            }
        }

        if (backToPlayer)
        {
            if (mainCam.orthographicSize > 7.5)
            {
                mainCam.orthographicSize -= 0.05f;
            }
            else
            {
                backToPlayer = false;
            }
        }
	}

    //Feeds information about the Gate / Object that should be shown
    public void ShowEvent(Transform importantObject, Vector3 desiredPos)
    {
        origPosition = transform.position;
        origRotation = transform.eulerAngles;

        desiredPosition = desiredPos;
        desiredRotation = importantObject.position;

        showingEvent = true;
        tpc.enabled = false;
        camController.enabled = false;

        mainCam.nearClipPlane = -20;

        camAudSource.PlayOneShot(gateOpened, 0.2f);
    }

    //Feeds all the information into the CutScene
    public void ShowNewArea(Transform startingPos, Transform startingRot, Transform[] shotPos, Transform[] impObjects)
    {
        origPosition = transform.position;
        origRotation = transform.eulerAngles;

        shotPositions = shotPos;
        highlightedObjects = impObjects;
        
        tpc.enabled = false;
        camController.enabled = false;

        firstShotPos = startingPos;
        firstShotRot = startingRot;

        transform.position = startingPos.position;
        transform.LookAt(startingRot);

        mainCam.nearClipPlane = -20;

        StartCoroutine(ActiveCutScene());
    }

    //Structured movement through different shot locations for panning in cutscene
    IEnumerator ActiveCutScene()
    {
        for (int i = 0; i < shotPositions.Length; i++)
        {
            atNextPos = false;

            desiredPosition = shotPositions[i].position;
            desiredRotation = highlightedObjects[i].position;

            movingCut = true;

            yield return new WaitUntil(() => atNextPos == true);
        }
        
        transform.position = firstShotPos.position;
        transform.LookAt(_player.transform.position);
        camOrigSize = mainCam.orthographicSize;
        backToPlayer = true;

        yield return new WaitUntil(() => backToPlayer == false);

        mainCam.nearClipPlane = -10;
        mainCam.orthographicSize = camOrigSize;
        transform.position = origPosition;
        transform.localEulerAngles = origRotation;
        tpc.enabled = true;
        camController.enabled = true;
    }
}
