// Copyright 2017 Matt Tytel

using UnityEngine;

namespace AudioHelm
{
    [AddComponentMenu("")]
    public class ControlTorque : MonoBehaviour
    {
        public float torque = 1.0f;
        public float maxAngularVelocity = 50.0f;
        public Vector3 forward = Vector3.forward;
        public Vector3 right = Vector3.right;

        public bool wasd = true;

        void Start()
        {
            GetComponent<Rigidbody>().maxAngularVelocity = maxAngularVelocity;
        }

        void Update()
        {
            if (wasd)
            {
                if (Input.GetKey("w"))
                    GetComponent<Rigidbody>().AddTorque(torque * right);
                if (Input.GetKey("s"))
                    GetComponent<Rigidbody>().AddTorque(-torque * right);
                if (Input.GetKey("a"))
                    GetComponent<Rigidbody>().AddTorque(torque * forward);
                if (Input.GetKey("d"))
                    GetComponent<Rigidbody>().AddTorque(-torque * forward);
            }
            else
            {
                if (Input.GetKey("up"))
                    GetComponent<Rigidbody>().AddTorque(torque * right);
                if (Input.GetKey("down"))
                    GetComponent<Rigidbody>().AddTorque(-torque * right);
                if (Input.GetKey("left"))
                    GetComponent<Rigidbody>().AddTorque(torque * forward);
                if (Input.GetKey("right"))
                    GetComponent<Rigidbody>().AddTorque(-torque * forward);
            }
        }
    }
}
