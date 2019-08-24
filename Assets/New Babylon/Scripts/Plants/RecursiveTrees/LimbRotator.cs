using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LimbRotator : MonoBehaviour {

    public float angle = 30f;

    public void GeneratedBranch(int index)
    {
        float bendChance = Random.Range(0f, 100f);

        if(bendChance < 25)
        {
            transform.rotation *= Quaternion.Euler(angle * ((index * 2) - 1), -angle * ((index * 2) - 1), 0);
        }
        else if(bendChance > 25 && bendChance < 50)
        {
            transform.rotation *= Quaternion.Euler(-angle * ((index * 2) - 1), -angle * ((index * 2) - 1), 0);
        }
        else if (bendChance > 50 && bendChance < 75)
        {
            transform.rotation *= Quaternion.Euler(angle * ((index * 2) - 1), angle * ((index * 2) - 1), 0);
        }
        else if(bendChance > 75 && bendChance <= 100)
        {
            transform.rotation *= Quaternion.Euler(-angle * ((index * 2) - 1), angle * ((index * 2) - 1), 0);
        }
    }
}
