using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI
{
    
    public class Pressable : Interactable
    {
        public UnityEvent OnPress, OnCancelPress;

        bool pressed = false, pressing = false;

        [SerializeField] float pressThreshold = .1f;
        [SerializeField] float timeSincePress = 0f;

        // Update is called once per frame
        void Update()
        {   
            if(pressing){
                if(!pressed){
                    if(timeSincePress >= pressThreshold){
                        pressed = true;
                        OnPress.Invoke();
                    }
                    timeSincePress += Time.deltaTime;
                }
            }
        }

        protected override void Interact(PointerEventData dat){
            pressing = true;
            pressed = false;

            base.Interact(dat);
        }

        protected override void Deinteract(PointerEventData dat){
            if(pressing && timeSincePress < pressThreshold)
                OnCancelPress.Invoke();

            pressing = false;
            pressed = false;
            timeSincePress = 0f;

            base.Deinteract(dat);
        }
    }

}


