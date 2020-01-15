using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{ 
    /*
    
        Wrapper class for visible elements in UI
            Hide, Show, Toggle

     */

    public class ToggleVisibility<T> : MonoBehaviour
                                       //, IShowable
    {
        [SerializeField] protected bool shown = false;
        public bool Shown {
            get {
                return shown;
            }
        }

        [SerializeField] protected bool lerps = false;
                         protected bool lerping = false;

        [SerializeField] protected float transitionInSpeed = 0f, transitionOutSpeed = 0f;
                         protected float transitionSpeed;

        [SerializeField] protected T visible, hidden;
                         protected T current, target;


        protected virtual void Start() {
            current = (shown)? visible:hidden;
            target = current;

            EvaluateVisibility();
        }

        protected virtual void OnUpdateVisibility(){
            if(lerps){
                if(lerping) StopCoroutine("UpdatingVisibility");

                transitionSpeed = (shown)? transitionInSpeed:transitionOutSpeed;
                StartCoroutine("UpdatingVisibility");
            }
            else {
                current = target;
                EvaluateVisibility();
            }
        }

        protected virtual IEnumerator UpdatingVisibility(){
            yield return null;
        }

        protected virtual void EvaluateVisibility(){}

        public void Show(){
            if(shown) return;

            shown = true;    
            target = visible;

            OnUpdateVisibility();
        }

        public void Hide(){
            if(!shown) return;

            shown = false;
            target = hidden;

            OnUpdateVisibility();
        }

        public void Toggle(){ 
            shown = !shown; 
            target = (shown)? visible:hidden;

            OnUpdateVisibility();
        }
    }
    
}


