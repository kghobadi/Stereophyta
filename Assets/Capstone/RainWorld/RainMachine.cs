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
        if (Input.GetKey(KeyCode.LeftArrow))
            transform.Rotate(Vector3.up * Time.deltaTime * -rotateSpeed);

        if (Input.GetKey(KeyCode.RightArrow))
            transform.Rotate(Vector3.up * Time.deltaTime * rotateSpeed);

        timer += Time.deltaTime;

        if (timer > cloudInterval)
        {
            InstantiateRain();

            timer = 0;
        }


    }

    void InstantiateRain()
    {
        Instantiate(rain, transform.position + new Vector3(0, 25, 0) + transform.forward * 40, Quaternion.Euler(0, transform.eulerAngles.y, 0));
    }
}
