using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class FadeClick : MonoBehaviour
{
    Image clickImage;
    TMP_Text clickText;
    StartView startViewer;

    public float sinFadeSpeed = 1f;

    void Awake()
    {
        //image ref, then --> tmp ref 
        clickImage = GetComponent<Image>();
        if (clickImage == null)
            clickText = GetComponent<TMP_Text>();
        startViewer = FindObjectOfType<StartView>();
    }

    void Update()
    {
        //oscillating fade in / out of ui asset 
        if(clickImage)
            clickImage.color = new Color(1, 1, 1, Mathf.Sin(Time.time * sinFadeSpeed));
        else
            clickText.color = new Color(1, 1, 1, Mathf.Sin(Time.time * sinFadeSpeed));

        //disable once start view ends 
        if (startViewer.startView == false)
        {
            gameObject.SetActive(false);
        }
    }
}