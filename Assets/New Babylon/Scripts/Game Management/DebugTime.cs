using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

//allows you to speed up time scale 
public class DebugTime : MonoBehaviour {
    public bool debug;
    public float speedUp = 10f;

	void Update () {
        if (debug)
        {
            if (Input.GetKey(KeyCode.Return))
            {
                Time.timeScale = speedUp;
            }
            else
            {
                Time.timeScale = 1f;
            }

            //Delete save data & Restart game
            if (Input.GetKeyDown(KeyCode.Delete))
            {
                DeletePrefs();
            }
        }
	}

    private void OnDisable()
    {
        Time.timeScale = 1f;
    }

    public void DeletePrefs()
    {
        PlayerPrefs.DeleteAll();

        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
