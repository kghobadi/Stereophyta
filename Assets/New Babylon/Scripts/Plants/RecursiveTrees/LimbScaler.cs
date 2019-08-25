using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LimbScaler : MonoBehaviour {

    public float scaler = 0.5f;

    public void GeneratedBranch(int index)
    {
        transform.localScale *= scaler;
    }
}
