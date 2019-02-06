using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

public class InteractiveObjects : MonoBehaviour {
    //player refs
    GameObject player;
    ThirdPersonController tpc;

    //ui stuff
    protected GameObject interactPrompt;
    protected Image promptBack;
    protected Image interactImage;
    protected Text interactText;

    //dictionary of interactive and their respective distances away from the Player
    [SerializeField]
    public Dictionary<GameObject, float> interactiveObjects = new Dictionary<GameObject, float>();

    void Awake() {
        player = GameObject.FindGameObjectWithTag("Player");
        tpc = player.GetComponent<ThirdPersonController>();

        //grab interactPrompt refs
        interactPrompt = GameObject.FindGameObjectWithTag("InteractPrompt");
        promptBack = interactPrompt.GetComponent<Image>();
        interactImage = interactPrompt.transform.GetChild(0).GetComponent<Image>();
        interactText = interactPrompt.transform.GetChild(1).GetComponent<Text>();

        promptBack.enabled = false;
        interactImage.enabled = false;
        interactText.enabled = false;
    }

    void Update()
    {
        //adjust the object pool when the player moves
        if (tpc.horizontalInput.magnitude > 0)
        {
            SortInteractiveObjects();
        }
    }

    //call true to enable, false to disable
    void EnablePrompt(bool onOrOFf)
    {
        if (onOrOFf)
        {
            promptBack.enabled = true;
            interactImage.enabled = true;
            interactText.enabled = true;
        }
        else
        {
            promptBack.enabled = false;
            interactImage.enabled = false;
            interactText.enabled = false;
        }
    }

    //sort and return with first obj
    void SortInteractiveObjects()
    {
        int rank = 0;

        if(interactiveObjects.Count > 0)
        {
            //enable prompt
            if (!interactText.enabled)
                EnablePrompt(true);

            //sort the dictionary by order of ascending distance away
            foreach (KeyValuePair<GameObject, float> item in interactiveObjects.OrderBy(key => key.Value))
            {
                if (rank == 0)
                {
                    Debug.Log("setting interactive");
                    item.Key.GetComponent<InteractiveObjectType>().SetInteractive();
                }
                else
                {
                    item.Key.GetComponent<InteractiveObjectType>().DisableInteractive();
                }

                rank++;
            }
        }
        else
        {
            //disable prompt if nothing in list
            if (interactText.enabled)
                EnablePrompt(false);
        }

       
    }
}
