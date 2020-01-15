using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI {

    public class ToggleScale : ToggleVisibility<Vector2>
    {
        RectTransform rect;

        private void Awake() {
            rect = GetComponent<RectTransform>();
        }

        protected override IEnumerator UpdatingVisibility(){
            float dist = Vector3.Distance(current, target);
            while(dist > .033f){
                lerping = true;

                current = Vector3.Lerp(current, target, Time.deltaTime * transitionSpeed);
                EvaluateVisibility();

                dist = Vector3.Distance(current, target);
                yield return null;
            }

            current = target;
            EvaluateVisibility();
            lerping = false;
        }

        protected override void EvaluateVisibility(){
            rect.localScale = new Vector3(current.x, current.y, 1f);
        }
    }

}