using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interacter : Raycaster {

    protected Interactable obj = null;

    protected override void Awake(){
        base.Awake();
    }

    protected virtual void Start(){
        input.onDown += Interact;
        input.onUp += Uninteract;
    }

    protected override void Update(){
        base.Update();

        Interactable cObj = null;
        if(col != null)
            cObj = col.GetComponent<Interactable>();

        bool hovering = !(col == null || cObj == null);
        if(hovering){
            if(obj != cObj){
                if(obj != null)
                    obj.Unhover();

                obj = cObj;
                obj.Hover();
            }
        }
        else{
            if(obj != null){
                obj.Unhover();
                obj = null;
            }
        }
    }

    protected virtual void Interact(InputEventData dat){
        obj = FetchInteractable(OverrideRaycastWithCollider());        
        if(obj == null)
            return;

        obj.Interact();
    }

    protected virtual void Uninteract(InputEventData dat){
        if(obj == null)
            return;

        obj.Uninteract();
    }

    Interactable FetchInteractable(Collider col){
        Interactable interactable = null;

        if(col != null)
            interactable = col.GetComponent<Interactable>();

        return interactable;
    }

    protected virtual void OnDestroy() {
        input.onDown -= Interact;
        input.onUp -= Uninteract;
    }
}