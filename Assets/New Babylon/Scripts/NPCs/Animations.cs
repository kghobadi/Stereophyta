using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    public class Animations : AnimationHandler
    {
        public override void SetAnimator(string anim)
        {
            if (anim == "walking")
            {
                if (AnimationIsActive(anim.ToUppercase(false)))
                    return;
            }

            base.SetAnimator(anim);
        }
    }
}

