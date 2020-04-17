using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetRandomMaterial : MonoBehaviour {

    public Material[] materialOptions;
    bool skinOrMeshR;
    MeshRenderer mRender;
    SkinnedMeshRenderer skinMeshR;
    public Material assignedMat;

    void Awake()
    {
        //look for mesh renderer 
        mRender = GetComponent<MeshRenderer>();
        if(mRender == null)
        {
            mRender = GetComponentInChildren<MeshRenderer>();
        }
        //actually its a skin mesh renderer 
        if(mRender == null)
        {
            skinOrMeshR = true;
            skinMeshR = GetComponent<SkinnedMeshRenderer>();

            if(skinMeshR == null)
            {
                skinMeshR = GetComponentInChildren<SkinnedMeshRenderer>();
            }
        }

        AssignMaterial(materialOptions);
    }
    
    public void AssignMaterial(Material[] mats)
    {
        int randomMat = Random.Range(0, mats.Length);
        assignedMat = mats[randomMat];

        //skin
        if (skinOrMeshR)
            skinMeshR.material = assignedMat;
        //normal mr 
        else
            mRender.material = assignedMat;
        
    }
}
