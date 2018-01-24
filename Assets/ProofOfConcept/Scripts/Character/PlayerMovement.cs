using UnityEngine;
using System.Collections;
using UnityEngine.AI;

public class PlayerMovement : MonoBehaviour
{
    public GameObject player;
    Vector3 targetPosition;
    public float speed;


    void Start()
    {
        targetPosition = transform.position;
    }

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                if (hit.collider.gameObject.name != "Player")
                {
                    targetPosition = hit.point;
                    transform.position = Vector3.MoveTowards(transform.position, targetPosition, speed * Time.deltaTime);
                    transform.LookAt(targetPosition);
                }
            }
        }

        
        
    }

    

}