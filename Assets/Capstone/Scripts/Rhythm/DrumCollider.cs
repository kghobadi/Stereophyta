using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrumCollider : Rhythm {
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
            other.gameObject.GetComponent<Rock>().PlaySound();
        }
        if (other.gameObject.tag == "Plant")
        {
            other.gameObject.GetComponent<Plont>().PlaySound();
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

    private void OnDisable()
    {
        transform.localScale = originalScale;
    }
    public override void OnEnable()
    {
        base.OnEnable();
        if (enabledCounter > 1)
        {
            originalScale = transform.localScale ;
        }
        //specify this in whichever objects need it
    }

}

