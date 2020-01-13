using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Raycaster : MonoBehaviour {

    protected InputHandler input;

    [SerializeField] protected Camera cam;
    [SerializeField] protected float maxDistance = 100f;
    [SerializeField] protected LayerMask layerMask;

    protected Ray ray;
    protected RaycastHit raycastHit;
    protected Vector3 rayOrigin;

    protected bool hitting = false;
    protected Collider col;

    protected virtual void Awake() {
        input = InputHandler.Instance;    

        if(cam == null)
            cam = Camera.main;
    }

    protected virtual void Update() {
        if(cam == null)
            return;

        UpdateRayOrigin();

        ray = cam.ScreenPointToRay(rayOrigin);
        raycastHit = new RaycastHit();

        hitting = Physics.Raycast(ray, out raycastHit, maxDistance, layerMask.value);
        if(hitting)
            col = raycastHit.collider;
        else
            col = null;
    }

    protected virtual void UpdateRayOrigin(){
        rayOrigin = input.Position;
    }

    protected virtual Collider OverrideRaycastWithCollider(){
        UpdateRayOrigin();

        ray = cam.ScreenPointToRay(rayOrigin);
        raycastHit = new RaycastHit();

        bool hitting = Physics.Raycast(ray, out raycastHit, maxDistance, layerMask.value);
        if(hitting)
            col = raycastHit.collider;
        else
            col = null;
    
        return  col;
    }
}