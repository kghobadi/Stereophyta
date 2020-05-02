using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using InControl;

public class QuitGame : MonoBehaviour {
    public GameObject quitGroup;
    public GameObject restartGroup;

    void Start()
    {
        quitGroup.SetActive(false);
        restartGroup.SetActive(false);
    }
    
    public void ActivateQuitMenu()
    {
        quitGroup.SetActive(true);

        //turn off restart if open
        if (restartGroup.activeSelf)
            restartGroup.SetActive(false);
    }

    public void ActivateRestartMenu()
    {
        restartGroup.SetActive(true);

        //turn off quit if open
        if (quitGroup.activeSelf)
            quitGroup.SetActive(false);
    }

    //on the 'no' under q prompts
    public void DeactivateObj(GameObject obj)
    {
        obj.SetActive(false);
        
    }

    public void Quit()
    {
        Application.Quit();
    }

    //restart & delete playerprefs
    public void RestartGame()
    {
        PlayerPrefs.DeleteAll();
        SceneManager.LoadScene(0);
    }
}
