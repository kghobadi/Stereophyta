using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GodDrumCollider : GodRhythm {
    Vector3 originalScale, targetScale;
    public float scaleMultipler;


	void Start () {
        originalScale = transform.localScale;
	}

    public IEnumerator LerpScale(float time)
    {
        targetScale = originalScale * scaleMultipler;
        float originalTime = time;
        while(time > 0.0f)
        {
            time -= Time.deltaTime;

            transform.localScale = Vector3.Lerp(targetScale, originalScale, time / originalTime);
            yield return new WaitForEndOfFrame();
        }
        transform.localScale = originalScale;

    }

    public override void OnTriggerEnter(Collider other)
    {
        base.OnTriggerEnter(other);
        if(other.gameObject.tag == "Rock")
        {
            other.gameObject.GetComponent<GodRock>().PlaySound();
        }
    }

    public override void OnTriggerStay(Collider other)
    {
        // nothing happens here 
        //if (other.gameObject.tag == "Rock")
        //{
        //    other.gameObject.GetComponent<Rock>().PlaySound();
        //}
    }

}

