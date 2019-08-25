using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeletePlayerPrefs : MonoBehaviour {

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Delete))
        {
            DeletePrefs();
        }
    }

    public void DeletePrefs()
    {
        PlayerPrefs.DeleteAll();
        Debug.Log("deleted Prefs ");
    }
}
