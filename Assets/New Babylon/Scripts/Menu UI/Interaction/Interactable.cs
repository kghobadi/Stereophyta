using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI {
    public class Interactable : MonoBehaviour
                                , IPointerDownHandler
                                , IPointerUpHandler
                                , IPointerExitHandler
    {
        public UnityEvent OnEnter, OnExit;
        
        protected RectTransform rect;


        protected bool hovering = false;
        public bool Hovering {
            get{ return hovering; }
        }


        protected virtual void Awake() {
            rect = GetComponent<RectTransform>();
        }

        protected virtual void Interact(PointerEventData dat){
            hovering = true;
            OnEnter.Invoke();
        }

        protected virtual void Deinteract(PointerEventData dat){
            hovering = false;
            OnExit.Invoke();
        }

        public virtual void OnPointerDown(PointerEventData dat){ if(!hovering)Interact(dat); }

        public virtual void OnPointerUp(PointerEventData dat){ if(hovering)Deinteract(dat); }
        public virtual void OnPointerExit(PointerEventData dat){ if(hovering)Deinteract(dat); }
    }
}