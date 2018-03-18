//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class RotationCrank : Interactable {
    
    
//    public AudioClip selectLower;

//    public GameObject crank;
//    public GameObject windMachineModel;

//    public override void Start()
//    {
//        base.Start();
//        interactable = true;
//    }


//    void Update () {
        

//        if (Input.GetMouseButtonUp(0))
//        {
//            transitioned = false;
//        }

//        if (Input.GetMouseButtonUp(1))
//        {
//            transitionBack = false;
//        }
//    }

//    public override void OnMouseOver()
//    {
//        if (!playerHolding)
//        {
//            base.OnMouseOver();
//            if (Input.GetMouseButton(0))
//            {
//                transitioned = true;
//                if (!soundBoard.isPlaying)
//                    soundBoard.PlayOneShot(InteractSound);
//            }
//            if (Input.GetMouseButton(1))
//            {
//                transitionBack = true;
//                if (!soundBoard.isPlaying)
//                    soundBoard.PlayOneShot(selectLower);
//            }

//        }
//    }
//}
