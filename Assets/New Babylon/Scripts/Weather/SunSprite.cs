using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunSprite : MonoBehaviour {

    Light sun;
    SpriteRenderer sunSprite;

    void Start()
    {
        sun = transform.parent.GetComponent<Light>();
        sunSprite = GetComponent<SpriteRenderer>();
    }

    void Update () {
        sunSprite.color = sun.color;
	}
}
