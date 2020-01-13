    //using System.Collections;
    //using System.Collections.Generic;
    //using UnityEngine;
    //using UnityEngine.Events;
    //using UnityEngine.EventSystems;


    //namespace UI
    //{
    
    //    public class Pinchable : Interactable
    //    {
    //        public UnityEvent OnPinchMove;

    //        GestureHandler gestures;

    //        [SerializeField] float pinchThreshold = 0f;
        
    //        bool pinching = false;
    //        public bool Pinching {
    //            get{
    //                return pinching;
    //            }

    //            set{
    //                pinching = value; //Override pinching
    //            }
    //        }

    //        void Start() {
    //            gestures = GestureHandler.Instance;    
    //        }

    //        // Update is called once per frame
    //        void Update()
    //        {
    //            if(pinching){
    //                float pinch = Mathf.Abs(gestures.Pinch);
    //                Debug.Log("Pinched object: " + pinch);

    //                if(pinch > pinchThreshold)
    //                    OnPinchMove.Invoke();
    //            }
    //        }

    //        protected override void Interact(PointerEventData dat){
    //            pinching = true;
    //            base.Interact(dat);
    //        }

    //        protected override void Deinteract(PointerEventData dat){
    //            pinching = false;
    //            base.Deinteract(dat);
    //        }
    //    }

    //}

