using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BookClick : Interactable {

    bool isReading;
    public GameObject closeBookButton, bookBackground, nextBut, prevBut;
    GameObject bookPrefab;
    camMouseLook cameraControl;
    public AudioClip closingBook;
    public override void Start()
    {
        base.Start();
        bookPrefab = worldMan.bookRef.gameObject;
        cameraControl = cammy.GetComponent<camMouseLook>();
        bookPrefab.SetActive(false);
        closeBookButton.SetActive(false);
        bookBackground.SetActive(false);
        nextBut.SetActive(false);
        prevBut.SetActive(false);

    }

    public override void handleClickSuccess()
    {
        if (interactable)
        {
            base.handleClickSuccess();
            bookPrefab.SetActive(true);
            isReading = true;
            fpc.enabled = false;
            Cursor.lockState = CursorLockMode.None;
            cameraControl.enabled = false;
            closeBookButton.SetActive(true);
            bookBackground.SetActive(true);
            nextBut.SetActive(true);
            prevBut.SetActive(true);
        }
    }

    void Update () {
        if (isReading)
        {
            interactable = false;
        }
        else
        {
            interactable = true;
        }
	}

    public void CloseBook()
    {
        isReading = false;
        fpc.enabled = true;
        Cursor.lockState = CursorLockMode.Locked;
        cameraControl.enabled = true;
        bookPrefab.SetActive(false);
        soundBoard.PlayOneShot(closingBook);
        closeBookButton.SetActive(false);
        bookBackground.SetActive(false);
        nextBut.SetActive(false);
        prevBut.SetActive(false);
    }
}
