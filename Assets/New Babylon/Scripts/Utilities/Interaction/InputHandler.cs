using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public class InputEventData {
    public Vector3 position;
    public Vector3 delta;

    public InputEventData(){
        position = Vector3.zero;
        delta = Vector3.zero;
     }
}


public class InputHandler : Singleton<InputHandler>
{
    public delegate void OnDown(InputEventData e);
    public event OnDown onDown;

    public delegate void OnMove(InputEventData e);
    public event OnMove onMove;

    public delegate void OnUp(InputEventData e);
    public event OnUp onUp;

    public delegate void OnClick(InputEventData e);
    public event OnClick onClick;

    public delegate void OnDrag(InputEventData e);
    public event OnDrag onDrag;

    [SerializeField] InputEventData eventData;
                     Vector3 a, b;

    [SerializeField] float sleep = .03f;
                     float time = 0f;
    [SerializeField] float dragThreshold = 0f;
                     bool drag = false;

    private void Start() {
        eventData = new InputEventData();
    }
	
    bool up = false, down = false, cont = false;
	// Update is called once per frame
	void Update () {
        Vector3 pos = Vector3.zero;

        // Reset input states to false
        down = false; cont = false; up = false;

#if !UNITY_EDITOR && (UNITY_IOS || UNITY_ANDROID)
        if (Input.touchCount > 0)
        {
            var touch = Input.GetTouch(0);  // Fetch latest touch 
            pos = Position = touch.position;

            if(touch.phase == TouchPhase.Began) {
                Down(pos); down = true;
            } else if(touch.phase == TouchPhase.Stationary || touch.phase == TouchPhase.Moved) {
                Continue(pos); cont = true;
            } else if(touch.phase == TouchPhase.Ended || touch.phase == TouchPhase.Canceled) {
                Up(pos); up = true;
            }
        }
        
#else 
        pos = Position = Input.mousePosition;

        if (Input.GetMouseButtonDown(0))
        {
            Down(pos); down = true;
        }
        else if (Input.GetMouseButton(0))
        {
            Continue(pos); cont = true; /*Debug.Log("touching");*/
        }
        else if (Input.GetMouseButtonUp(0))
        {
            Up(pos); up = true;
        }
#endif
    }

    // Mirrors for classic input
    public bool GetDown(){ return down; }
    public bool Get(){ return cont; }
    public bool GetUp(){ return up; }

    void Down(Vector3 pos){
        a = Position = pos;
        time = 0f;

        if(onDown != null)
            onDown(eventData);
    }

    void Continue(Vector3 pos){
        b = Position = pos;

        float dist = Vector3.Distance(a, b);
        if(dist > dragThreshold){
            if(onMove != null)
                onMove(eventData);
            
            drag = true; // Global drag event on up
        }

        if(time <= 0f || time >= sleep){
            Delta = (b - a);
            a = b;

            if(time >= sleep)
                time = 0.001f;
        }
        else
            time += Time.deltaTime;

        Debug.Log(Delta.y);
    }

    void Up(Vector3 pos){
        b = Position = pos;

        if(!drag){
            if(onClick != null)
                onClick(eventData);
        } else {
            if(onDrag != null)
                onDrag(eventData);
        }

        drag = false;
        if(onUp != null)
            onUp(eventData);
    }
    

    public Vector3 Position {
        get{ 
            return eventData.position; 
        }

        set { 
            eventData.position = value; 
        }
    }

    public Vector3 Delta { 
        get{
            return eventData.delta;
        }

        set {
            eventData.delta = value;
        }
    }
}
