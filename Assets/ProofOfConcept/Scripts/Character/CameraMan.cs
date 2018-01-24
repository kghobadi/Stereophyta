using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMan : MonoBehaviour {

    GameObject player;
    Vector3 targetPosition;
    public float minFov = 15f;
    public float maxFov = 90f;
    public float sensitivity = 10f;

    private Vector3 offset;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        offset = transform.position - player.transform.position;
    }

    void Update () {
        //transform.LookAt(player.transform);
        //if (Input.GetMouseButton(1))
        //{
        //    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        //    RaycastHit hit;
        //    if (Physics.Raycast(ray, out hit))
        //    {
        //        targetPosition = hit.point;
        //        transform.LookAt(targetPosition);
        //    }
        //}
        float fov = Camera.main.fieldOfView;
        fov -= Input.GetAxis("Mouse ScrollWheel") * sensitivity;
        fov = Mathf.Clamp(fov, minFov, maxFov);
        Camera.main.fieldOfView = fov;
        transform.position = player.transform.position + offset;
    }
    
}
