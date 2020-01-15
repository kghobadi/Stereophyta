using System.Collections;
using System.Collections.Generic;
using UnityEngine;

    [System.Serializable]
    public class GestureEventData {
        public float pinchDelta;
        public int touchCount = 0;

        public GestureEventData(){ }
    }

    public class GestureHandler : Singleton<GestureHandler>
    {
        GestureEventData eventData;

        Vector3 a = Vector3.zero, b = Vector3.zero; // Combined average of all touches

        private void Start() {
            eventData = new GestureEventData();
        }

        void Update() {
            #if !UNITY_EDITOR && (UNITY_IOS || UNITY_ANDROID)
                Touch[] touches = Input.touches;
                int touchCount = eventData.touchCount = Input.touchCount;

                Vector2 s_Pos = Vector3.zero;
                if(touchCount == 2){
                    Touch t0 = Input.GetTouch(0);
                    Touch t1 = Input.GetTouch(1);

                    Vector3 t0_a = t0.position - t0.deltaPosition;  // Previous position
                    Vector3 t0_b = t0.position;  // Current position
                    
                    Vector3 t1_a = t1.position - t1.deltaPosition;
                    Vector3 t1_b = t1.position;

                    float delta_a = (t1_a - t0_a).magnitude;
                    float delta_b = (t1_b - t0_b).magnitude;

                    Pinch = (delta_b - delta_a);
                }
                else
                    Pinch = 0f;
            #else
                Pinch = Input.mouseScrollDelta.y * Time.deltaTime;
            #endif
        }

        #if !UNITY_EDITOR && (UNITY_IOS || UNITY_ANDROID)
            // Check if touch has not left screen, active
            bool IsActiveTouch(Touch touch){ return (touch.phase == TouchPhase.Began) || (touch.phase == TouchPhase.Moved) || (touch.phase == TouchPhase.Stationary); }
        #endif

        public float Pinch {
            get{
                return eventData.pinchDelta;
            }

            set{
                eventData.pinchDelta = value;
            }
        }
    }
