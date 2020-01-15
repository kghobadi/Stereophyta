using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour 
                            , IInteractable {

    public delegate void OnHover();
    public event OnHover onHovered;

    public delegate void OnUnhover();
    public event OnUnhover onUnhovered;

    public delegate void OnInteract();
    public event OnInteract onInteracted;

    public delegate void OnUninteract();
    public event OnUninteract onUninteracted;

    void Awake() {
        gameObject.layer = 8;  // Ensure interactable object layer is set to "Interactable"
    }

    public virtual void Hover(){ 
        if(onHovered != null)
            onHovered(); 
    }
    public virtual void Unhover(){ 
        if(onUnhovered != null)
            onUnhovered(); 
    }
    public virtual void Interact(){ 
        if(onInteracted != null)
            onInteracted(); 
    }
    public virtual void Uninteract(){ 
        if(onUninteracted != null)
            onUninteracted(); 
    }
}