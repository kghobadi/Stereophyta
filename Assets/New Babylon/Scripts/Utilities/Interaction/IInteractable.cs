using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IInteractable {
    
    void Hover(); 
    void Unhover();

    void Interact();
    void Uninteract();
}
