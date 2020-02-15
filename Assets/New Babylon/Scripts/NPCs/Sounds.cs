using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    public class Sounds : AudioHandler
    {
        [Header("Audio Clips")]
        public AudioClip greeting;
        public AudioClip goodbye, react, action;
        public AudioClip[] idleSounds;
        public AudioClip[] walkingSounds;
    }
}


