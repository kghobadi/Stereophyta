using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InputManagement : Singleton<InputManagement> {
    public delegate void OnClick(Vector3 pos);
    public event OnClick onClickDelegate;

    public delegate void OnMove(Vector3 pos);
    public event OnMove onMoveDelegate;

    public delegate void OnRelease(Vector3 pos);
    public event OnRelease onReleaseDelegate;

    public delegate void OnClicked();
    public event OnClicked onClickedDelegate;

    [SerializeField] float moveThreshold = 1f;
                     bool dragged = false;

    Vector3 pos, pos0, pos1; 
	
	// Update is called once per frame
	void Update () {
#if UNITY_EDITOR
        pos = Input.mousePosition;

        if(Input.GetMouseButtonDown(0))
            Click(pos);
        else if(Input.GetMouseButton(0))
            Continue(pos);
        else if(Input.GetMouseButtonUp(0))
            Release(pos);
#else
        if(Input.touchCount > 0){
            var touch = Input.GetTouch(0);
            pos = touch.position;

            if(touch.phase == TouchPhase.Began)
                Click(pos);
            else if(touch.phase == TouchPhase.Moved)
                Continue(pos);
            else if(touch.phase == TouchPhase.Ended)
                Release(pos);
        }
#endif
	}

    void Click(Vector3 v){
        pos0 = v;

        if(onClickDelegate != null)
            onClickDelegate(pos0);
    }

    void Continue(Vector3 v){
        pos1 = v;

        float dist = Vector3.Distance(pos0, pos1);
        if(dist > moveThreshold){
            onMoveDelegate(pos1);
            dragged = true;
        }

        pos0 = pos1;
    }

    void Release(Vector3 v){
        pos1 = v;

        if(!dragged){
            if(onClickedDelegate != null)
                onClickedDelegate();
        } else
            dragged = false;

        if(onReleaseDelegate != null)
            onReleaseDelegate(pos1);
    }
}
