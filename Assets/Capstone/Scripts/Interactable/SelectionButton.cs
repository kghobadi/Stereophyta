using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectionButton : MonoBehaviour
{
    public int functionNumber;
    
    public void OnClick()
    {
        if(transform.parent.GetComponent<SelectionMenu>().clickTimer > transform.parent.GetComponent<SelectionMenu>().clickWait)
        {
            transform.parent.GetComponent<SelectionMenu>().selected = true;
            transform.parent.GetComponent<SelectionMenu>().selectedFunction = functionNumber;
        }
        
    }

}


