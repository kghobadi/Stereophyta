//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class pickUpTool : Interactable
//{
//    public Transform leftArmObj;
//    leftArmManager lArmMan;

//    public bool isRecorder, isShovel, isAx;

//    // Use this for initialization
//    public override void Start()
//    {
//        base.Start();
//        lArmMan = leftArmObj.GetComponent<leftArmManager>();
//        interactable = true;

//    }

//    public override void handleClickSuccess()
//    {
//        base.handleClickSuccess();
//        takeTool();
//    }

//    void takeTool()
//    {
//        if (isRecorder)
//        {
//            transform.parent = leftArmObj;
//            lArmMan.recorder = this.gameObject;
//            lArmMan.recorderListener = GetComponent<AudioListener>();
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<SaveSound>().enabled = true;
//            GetComponent<loadAudioClips>().enabled = true;
//            if (lArmMan.objectHeld != null)
//                lArmMan.putAwayEverything();
//            lArmMan.objectHeld = lArmMan.recorder;

//            this.enabled = false;
//        }
//        if (isShovel)
//        {
//            transform.parent = leftArmObj;
//            lArmMan.shovel = this.gameObject;
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<Shovel>().enabled = true;
//            if (lArmMan.objectHeld != null)
//                lArmMan.putAwayEverything();
//            lArmMan.objectHeld = lArmMan.shovel;

//            this.enabled = false;
//        }

//        if (isAx)
//        {
//            transform.parent = leftArmObj;
//            lArmMan.ax = this.gameObject;
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<Ax>().enabled = true;
//            if (lArmMan.objectHeld != null)
//                lArmMan.putAwayEverything();
//            lArmMan.objectHeld = lArmMan.ax;

//            this.enabled = false;

//        }
//    }


//    // Update is called once per frame
//    void Update()
//    {



//    }
//}
