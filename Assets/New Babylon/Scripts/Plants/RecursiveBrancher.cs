using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RecursiveBrancher : MonoBehaviour {
    public int recurse = 5;
    public int splitNumber = 2;

	void Start () {
        recurse -= 1;

        for(int i = 0; i < splitNumber; i++)
        {
            if (recurse > 0)
            {
                var copy = Instantiate(gameObject);

                var recursive = copy.GetComponent<RecursiveBrancher>();

                recursive.SendMessage("GeneratedBranch" , i);
            }
        }

       
	}
}
