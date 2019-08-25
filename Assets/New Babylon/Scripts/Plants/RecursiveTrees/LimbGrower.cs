using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LimbGrower : MonoBehaviour {

	public void GeneratedBranch(int index)
    {
        transform.position += transform.up * transform.localScale.y * 3;
    }
}
