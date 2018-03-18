using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SelectionMenu : MonoBehaviour {

    public bool selected;
    public int selectedFunction;

    public float clickWait, clickTimer;

    Image selectMenu;

    private void Start()
    {
        selectMenu = GetComponent<Image>();
        //do not show sprite
        selectMenu.sprite = null;
        selectMenu.enabled = false;
    }

    private void Update()
    {
        if (selectMenu.enabled)
        {
            clickTimer += Time.deltaTime;
        }
        else
        {
            clickTimer = 0;
        }
    }

}
