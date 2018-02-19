using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : Interactable {

    public string plantType;

    protected Plant currentPlant;

    protected bool hasWavedAtPlayer;

    public Animator animator;

    public float speed, followDistance, followTimer, followTimeMin, heightAdjustment;

    public NPCState currentState;

    public enum NPCState
    {
        LOOKING, SETTINGMOVE, MOVING, FOLLOWING, WAVING, PLAYING
    }

    public override void Start () {
        //should this be interactable?
        base.Start();

        currentState = NPCState.MOVING;

        animator = GetComponentInChildren<Animator>();
        animator.SetBool("walking", true);

        interactable = true;
        followTimer = 0;
    }

    public virtual void Update()
    {
        if(currentState == NPCState.FOLLOWING)
        {
            followTimer += Time.deltaTime;
            FollowPlayer();
        }
    }

    public override void handleClickSuccess()
    {
        //if doing something other than following, start following player
        if(interactable && Vector3.Distance(_player.transform.position, transform.position) < withinDistanceActive
            && currentState != NPCState.FOLLOWING && currentState != NPCState.LOOKING && tpc.followers.Count < tpc.followerCountMax)
        {
            base.handleClickSuccess();
            tpc.followers.Add(gameObject);
            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true); // if there is a new animation for following add it here!
        }

        //if following player, deploy NPC
        if (interactable  && followTimer > followTimeMin && currentState == NPCState.FOLLOWING)
        {
            base.handleClickSuccess();
            tpc.followers.Remove(gameObject);
            currentState = NPCState.SETTINGMOVE;
            followTimer = 0;
        }
    }

    public virtual void FollowPlayer()
    {
        Vector3 spotInLine = Vector3.zero;
        if (tpc.followers.IndexOf(gameObject) == 0)
        {
            spotInLine = new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z - followDistance);
        }
        else
        {
            spotInLine = new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z - ((tpc.followers.IndexOf(gameObject) + 1) * followDistance));
        }
        if (Vector3.Distance(transform.position,  spotInLine) > 0.25f)
        {
            transform.position = Vector3.MoveTowards(transform.position, spotInLine, speed * Time.deltaTime);
            transform.LookAt(spotInLine); 
        }
        else
        {
            transform.LookAt(new Vector3(_player.transform.position.x, _player.transform.position.y + heightAdjustment, _player.transform.position.z));
        }
        
    }
}
