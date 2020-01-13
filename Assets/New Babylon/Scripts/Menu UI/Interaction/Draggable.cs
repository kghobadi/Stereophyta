using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.Events;
using UnityEngine.UI;

namespace UI
{
    public class Draggable : Interactable
    {
        public UnityEvent OnDrag, OnCancelDrag, OnMove, OnRelease;

                         float timeSinceAttemptDrag = 0f;
        [SerializeField] float dragThreshold = 0f;

        bool clicking = false;
        bool dragging = false;
        public bool Dragging {
            get{
                return dragging;
            }
            set{
                dragging = value;
                
                if(dragging)
                    cursorOffset = (snapToCursor)? (rect.position - Input.mousePosition):Vector3.zero;
                else
                    ResetParameters();
            }
        }


        [SerializeField] bool moveWithCursor = true, snapToCursor = false;
                         Vector3 cursorOffset = Vector3.zero;

        Vector3 a, b; Vector3 init;
        [SerializeField] float moveThreshold = 0f;

        void Start() {
            init = rect.localPosition;
        }

        // Update is called once per frame
        void Update()
        {
            if(dragging){
                if(moveWithCursor) rect.position = Input.mousePosition + cursorOffset;

                b = Input.mousePosition;
                float dist = Vector3.Distance(a, b);
                if(dist > moveThreshold){
                    a = b;
                    OnMove.Invoke();
                }
            }
            else {
                if(clicking){
                    if(timeSinceAttemptDrag > dragThreshold){
                            dragging = true;

                            cursorOffset = (snapToCursor)? (rect.position - Input.mousePosition) :Vector3.zero;  // Set offset for cursor if not snap to cursor
                            a = Input.mousePosition;

                            OnDrag.Invoke();
                    }
                    timeSinceAttemptDrag += Time.deltaTime;
                }                
            }
        }

        protected override void Interact(PointerEventData dat){
            clicking = true;
            dragging = false;
            timeSinceAttemptDrag = 0f;

            base.Interact(dat);
        }

        protected override void Deinteract(PointerEventData dat){
            if(dragging)
                OnRelease.Invoke();
            else 
                OnCancelDrag.Invoke();

            dragging = false;
            clicking = false;
            timeSinceAttemptDrag = 0f;

            base.Deinteract(dat);
        }

        void ResetParameters(){
            timeSinceAttemptDrag = 0f;
            clicking = false;
            dragging = false;
        }
    }
}

