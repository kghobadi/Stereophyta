//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class NewPickUpTool : Interactable
//{
//    public Transform leftArmObj;
//    ToolManager toolMan;

//    public bool isWater, isAx, isSeed;
    
//    public override void Start()
//    {
//        base.Start();
//        toolMan = leftArmObj.GetComponent<ToolManager>();
//        interactable = true;

//    }

//    public override void handleClickSuccess()
//    {
//        base.handleClickSuccess();
//        takeTool();
//    }

//    void takeTool()
//    {
//        if (isAx)
//        {
//            transform.parent = leftArmObj;
//            toolMan.ax = this.gameObject;
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<Ax>().enabled = true;
//            if (toolMan.objectHeld != null)
//                toolMan.putAwayEverything();
//            toolMan.objectHeld = toolMan.ax;

//            this.enabled = false;

//        }

//        if (isWater)
//        {
//            transform.parent = leftArmObj;
//            toolMan.water = gameObject;
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<Water>().enabled = true;
//            if (toolMan.objectHeld != null)
//                toolMan.putAwayEverything();
//            toolMan.objectHeld = toolMan.water;

//            this.enabled = false;
//        }

//        if (isSeed)
//        {
//            transform.parent = leftArmObj;
//            toolMan.seeds.Add(gameObject);
//            transform.localPosition = Vector3.zero;
//            transform.localEulerAngles = Vector3.zero;
//            GetComponent<NewSeed>().enabled = true;
//            if(toolMan.objectHeld != null)
//            {
//                toolMan.putAwayEverything();
//            }
//            toolMan.objectHeld = toolMan.seeds[];
//            this.enabled = false;
//        }

//        //Could add seeds to ToolManager and NewPickUpTool pretty easily, just would need to set the seed obj in ToolMan to false whenever you use ones
//    }


    
//}
