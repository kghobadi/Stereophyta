using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

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
       
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
