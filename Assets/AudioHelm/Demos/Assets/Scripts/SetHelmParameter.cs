// Copyright 2017 Matt Tytel

using UnityEngine;
using UnityEngine.UI;

namespace AudioHelm
{
    [AddComponentMenu("")]
    [RequireComponent(typeof(Slider))]
    public class SetHelmParameter : MonoBehaviour
    {
        public Param parameter;
        public HelmController controller;

        public void SetPercent()
        {
            controller.SetParameterPercent(parameter, GetComponent<Slider>().value);
        }

        void Start()
        {
            SetPercent();
        }
    }
}
