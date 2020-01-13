using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneUtils : MonoBehaviour {

	public void GoToScene(int index){
		Scene sc = SceneManager.GetSceneByBuildIndex(index);
		SceneManager.LoadScene(index);
	}

	public void GoToScene(string name){
		Scene sc = SceneManager.GetSceneByName(name);
		SceneManager.LoadScene(name);
	}
}
