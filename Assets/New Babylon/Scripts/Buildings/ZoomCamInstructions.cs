using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class ZoomCamInstructions : MonoBehaviour {

    //zoom instructions
    public bool mouseOrPs4;
    [Header("Mouse Instruction refs")]
    public TMP_Text clickNDragTxt;
    public TMP_Text textBack;
    FadeUItmp txtFader, textBackFader;
    public Image clickNDragAnim;
    FadeUI animFader;
    AnimateDialogue animator;

    [Header("PS4 Instruction refs")]
    public TMP_Text zoomText;
    public TMP_Text zoomTextBack;
    FadeUItmp zTxtFader, zTextBackFader;
    public Image zoomAnim;
    FadeUI zAnimFader;
    AnimateDialogue zAnimator;

    void Awake ()
    {        
        //ui refs
        txtFader = clickNDragTxt.GetComponent<FadeUItmp>();
        textBackFader = textBack.GetComponent<FadeUItmp>();
        animFader = clickNDragAnim.GetComponent<FadeUI>();
        animator = clickNDragAnim.GetComponent<AnimateDialogue>();

        //ps4 ui refs
        zTxtFader = zoomText.GetComponent<FadeUItmp>();
        zTextBackFader = zoomTextBack.GetComponent<FadeUItmp>();
        zAnimFader = zoomAnim.GetComponent<FadeUI>();
        zAnimator = zoomAnim.GetComponent<AnimateDialogue>();
    }

  
    public void FadeInstructions()
    {
        ////mouse
        //if (mouseOrPs4)
        //{
        //    txtFader.FadeIn();
        //    textBackFader.FadeIn();
        //    animFader.FadeIn();
        //    animator.active = true;
        //}
        ////ps4
        //else
        //{
        //    zTxtFader.FadeIn();
        //    zTextBackFader.FadeIn();
        //    zAnimFader.FadeIn();
        //    zAnimator.active = true;
        //}
    }
}
