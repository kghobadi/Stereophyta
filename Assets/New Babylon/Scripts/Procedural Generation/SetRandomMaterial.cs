using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetRandomMaterial : MonoBehaviour {

    public Material[] materialOptions;
    bool skinOrMeshR;
    MeshRenderer mRender;
    SkinnedMeshRenderer skinMeshR;

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
    }

    void Start ()
    {
        AssignMaterial(materialOptions);
	}
	
	public void AssignMaterial(Material[] mats)
    {
        int randomMat = Random.Range(0, mats.Length);

        //skin
        if (skinOrMeshR)
            skinMeshR.material = mats[randomMat];
        //normal mr 
        else
            mRender.material = mats[randomMat];
    }
}
