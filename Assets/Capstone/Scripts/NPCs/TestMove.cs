using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class TestMove : MonoBehaviour {

    [SerializeField]
    Transform targetDestination;

    GameObject _player;

    NavMeshAgent navMeshAgent;

	void Start () {
        navMeshAgent = GetComponent<NavMeshAgent>();
        _player = GameObject.FindGameObjectWithTag("Player");

        if (navMeshAgent == null)
        {
            Debug.Log("wtf fuck you man");
        }
        else
        {
            SetDestination();
        }
	}

    void SetDestination()
    {
        if(targetDestination != null)
        {
            Vector3 targetVector = targetDestination.transform.position;
            navMeshAgent.SetDestination(targetVector);
        }
    }

    void Update()
    {
        if(Vector3.Distance(transform.position,_player.transform.position) > 5)
        {
            SetDestination();
        }
    }
}
