using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class ToggleOpacity : ToggleVisibility<float>
    {
        public enum Type {
            CanvasGroup,
            Image,
            Text
        }
        public Type type;

        [SerializeField] CanvasGroup canvasGroup;
        [SerializeField] Image image;
        [SerializeField] Text text;

        private void Awake() {
            if(type == Type.CanvasGroup && canvasGroup == null)
                canvasGroup = GetComponent<CanvasGroup>();
            else if(type == Type.Image && image == null)
                image = GetComponent<Image>();
            else if(type == Type.Text && text == null)
                text = GetComponent<Text>();
        }

        protected override IEnumerator UpdatingVisibility(){
            float dist = Mathf.Abs(target - current);
            while(dist > .033f){
                lerping = true;

                current = Mathf.Lerp(current, target, Time.deltaTime * transitionSpeed);
                EvaluateVisibility();

                dist = Mathf.Abs(target - current);
                yield return null;
            }

            current = target;
            EvaluateVisibility();
            lerping = false;
        }

        protected override void EvaluateVisibility(){
            if(type == Type.CanvasGroup){
                canvasGroup.alpha = current;
                canvasGroup.interactable = (current > 0f);
                canvasGroup.blocksRaycasts = (current > 0f);      
            } 
            else if(type == Type.Image)
                image.color = Coloring.SetOpacity(current, image.color);
            else if(type == Type.Text)
                text.color = Coloring.SetOpacity(current, text.color);
        }
    }
}

