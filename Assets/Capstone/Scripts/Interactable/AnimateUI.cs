using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AnimateUI : MonoBehaviour {
    Image thisImage;
    public List<Sprite> animationSprites = new List<Sprite>();
    int currentSprite;
    public bool active;

    public float frameTimer, frameTimerTotal;

    void Start()
    {
        thisImage = GetComponent<Image>();
        frameTimer = frameTimerTotal;
        currentSprite = 0;
    }

    void Update () {
        if (active)
        {
            frameTimer -= Time.deltaTime;
            if (frameTimer < 0)
            {
                if (currentSprite < (animationSprites.Count - 1))
                {
                    currentSprite++;
                }
                else
                {
                    currentSprite = 0;
                }
                frameTimer = frameTimerTotal;
            }
            thisImage.sprite = animationSprites[currentSprite];
        }
        else
        {
            currentSprite = 0;
        }
    }
}
