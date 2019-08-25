using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class ZoomCamInstructions : MonoBehaviour {

    //zoom instructions
    [Header("Instruction refs")]
    public TMP_Text clickNDragTxt;
    public TMP_Text textBack;
    FadeUItmp txtFader, textBackFader;
    public Image clickNDragAnim;
    FadeUI animFader;
    AnimateDialogue animator;

    void Start () {
        if (PlayerPrefs.GetString("hasBook") == "yes")
        {
            Destroy(gameObject);
        }
        else
        {
            //we good bitch
            //ui refs
            txtFader = clickNDragTxt.GetComponent<FadeUItmp>();
            textBackFader = textBack.GetComponent<FadeUItmp>();
            animFader = clickNDragAnim.GetComponent<FadeUI>();
            animator = clickNDragAnim.GetComponent<AnimateDialogue>();
        }
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            txtFader.FadeIn();
            textBackFader.FadeIn();
            animFader.FadeIn();
            animator.active = true;

            Destroy(gameObject);
        }
    }
}
