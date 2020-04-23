using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpSkybox : MonoBehaviour
{  
    [Header("Skybox Lerp Settings")]
    public Material activeSkybox;

    public bool moveTowardsOrLerp;
    public float lerpSpeed;
    public bool lerping;
    public float startValue;
    public float lerpValue;
    public float endValue;
    public string floatToLerp;
    
    void Start()
    {
        activeSkybox = RenderSettings.skybox;
    }

    void Update()
    {
        //lerp is under way!
        if (lerping)
        {
            //move towards
            if (moveTowardsOrLerp)
            {
                //change mat Tp value 
                lerpValue = Mathf.MoveTowards(lerpValue, endValue, Time.deltaTime * lerpSpeed);
            }
            //lerp
            else
            {
                //lerp mat Tp value 
                lerpValue = Mathf.Lerp(lerpValue, endValue, Time.deltaTime * lerpSpeed);
            }

            //set float to lerp val
            RenderSettings.skybox.SetFloat(floatToLerp, lerpValue);
            //dist by abs value of lerpVal subtracted from end val
            float dist = Mathf.Abs(endValue - lerpValue);

            //close enough, let's finish im
            if (dist < 0.001f)
            {
                //hard set float to end value
                activeSkybox.SetFloat(floatToLerp, endValue);

                //stop lerping
                lerping = false;
            }
        }
    }

    //call to begin lerp 
    public void Lerp(float desiredValue, float speed)
    {
        startValue = RenderSettings.skybox.GetFloat(floatToLerp);
        endValue = desiredValue;
        lerpSpeed = speed;

        lerping = true;
    }
}
