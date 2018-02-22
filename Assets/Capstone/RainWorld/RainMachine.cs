using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RainMachine : MonoBehaviour
{
    public float rotateSpeed = 10;
    public int cloudInterval = 10;
    public GameObject rain;

    float timer;
    // Use this for initialization
    void Start()
    {
        InstantiateRain();
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;

        if (timer > cloudInterval)
        {
            transform.Rotate(0, 90, 0);

            InstantiateRain();

            timer = 0;
        }


    }

    void InstantiateRain()
    {
        Instantiate(rain, transform.position + new Vector3(0, 25, 0) + transform.forward * 40, Quaternion.Euler(0, transform.eulerAngles.y, 0));
    }
}
