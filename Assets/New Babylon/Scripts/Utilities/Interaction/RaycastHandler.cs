using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class RaycastHandler : Singleton<RaycastHandler>
{
    InputHandler input;
    
    private void Awake() {
        input = InputHandler.Instance;
    }

    public bool IsSafe {
        get {
            bool safe = true;
            Vector3 current = input.Position;

            #if UNITY_EDITOR
                safe = !EventSystem.current.IsPointerOverGameObject();
            #else
                if(Input.touchCount > 0){
                    var touch = Input.GetTouch(0);  // Fetch latest touch 
                    safe = !EventSystem.current.IsPointerOverGameObject(touch.fingerId);
                }
            #endif

            return safe;
        }
    }
}
