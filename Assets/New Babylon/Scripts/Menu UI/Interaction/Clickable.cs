using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI {
    public class Clickable : Interactable
    {
        public UnityEvent OnUp, OnDown, OnClick, OnCancelClick;

                         float timeSinceHold = 0f;
        [SerializeField] float clickThreshold = .2f;  // > threshold, does not equal click

        protected bool clicking = false;
        [SerializeField] bool fireEventsOnCancel = false; // Whether to fire appropriate events (UP/CLICK) after cancel occurs

        // Update is called once per frame
        protected virtual void Update()
        {
            if(clicking)
                timeSinceHold += Time.deltaTime;
        }

        protected override void Interact(PointerEventData dat){
            clicking = true;
            timeSinceHold = 0f;

            OnDown.Invoke();

            base.Interact(dat);
        }

        protected override void Deinteract(PointerEventData dat){
            if(timeSinceHold <= clickThreshold){
                clicking = false;
                OnClick.Invoke();
            }
            else
                OnCancelClick.Invoke();

            OnUp.Invoke();
            timeSinceHold = 0f;

            base.Deinteract(dat);
        }
    }
}
