using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    public class Animations : AnimationHandler
    {
        public int talkingAnimations;
        //select random talking anim to play
        public void RandomTalkingAnim()
        {
            int randomTalk = Random.Range(0, talkingAnimations);
            Animator.SetInteger("talking", randomTalk);
            Animator.SetTrigger("talk");
        }
    }
}

