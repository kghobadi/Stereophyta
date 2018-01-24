using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Audio;

public class SpaceToStart : MonoBehaviour {

    Image thisImage;
    public Image Title;
    Sprite theSprite;

	public AudioSource cameraSource;
	public AudioMixerSnapshot playing;
	public AudioMixerSnapshot notPlaying;

    bool transition, fading;

    GameObject cammy;

    public Transform windmill;

    public Image sleepBlack;
    float alphaVal;
    

    void Start () {
        thisImage = GetComponent<Image>();
        theSprite = thisImage.sprite;
        cammy = Camera.main.gameObject;
	}
	
	void Update () {
        if (!transition)
        {
            thisImage.color = new Color(thisImage.color.r, thisImage.color.g, thisImage.color.b, Mathf.Sin(Time.time / 3));
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            transition = true;
			notPlaying.TransitionTo (4f);
            thisImage.color = new Color(thisImage.color.r, thisImage.color.g, thisImage.color.b, 1 - (Time.time / 1.5f));
            Title.color = new Color(Title.color.r, Title.color.g, Title.color.b, 1 - (Time.time / 1.5f));
        }


        if (transition)
        {
            cammy.transform.rotation = Quaternion.Lerp(cammy.transform.rotation, Quaternion.LookRotation(windmill.position), Time.deltaTime /8);

            cammy.GetComponent<Camera>().fieldOfView = Mathf.Lerp(cammy.GetComponent<Camera>().fieldOfView, 50f , Time.deltaTime / 3);

            cammy.transform.position = Vector3.Lerp(cammy.transform.position, windmill.position, Time.deltaTime / 5);

            if (Vector3.Distance(cammy.transform.position, windmill.position) < 100)
            {
                fading = true;
            }
        }
        if (fading)
        {
            FadeToScene();
        }
	}

    void FadeToScene()
    {
        sleepBlack.color = new Color(0f, 0f, 0f, alphaVal);
        
        alphaVal += 0.6f * Time.deltaTime / 3;

        if(alphaVal >= 1)
        {
            SceneManager.LoadScene(1);
        }
    }
}
