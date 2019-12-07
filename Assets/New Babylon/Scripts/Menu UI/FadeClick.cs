using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeClick : MonoBehaviour
{

    Image clickImage;
    public StartView startViewer;

    void Start()
    {
        clickImage = GetComponent<Image>();
    }

    void Update()
    {
        clickImage.color = new Color(1, 1, 1, Mathf.Sin(Time.time * 0.25f));

        if (startViewer.lerpToPlayer)
        {
            gameObject.SetActive(false);
        }
    }
}