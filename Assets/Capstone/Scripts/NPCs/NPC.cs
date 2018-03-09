using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : Interactable {

    public string plantType;

    protected Plant currentPlant;

    protected bool hasWavedAtPlayer;

    public Animator animator;

    public float speed, followDistance, currentFollowDistance, followTimer, followTimeMin, heightAdjustment;
    public float wavingTime, waveRefresh, waveRefreshTotal, visionDistance, waitingTime;

    public NPCState currentState;

    TrailRenderer trailRender;
    protected Vector3 homePosition;

    public int lastLineLength, placeInLine;

    public enum NPCState
    {
        LOOKING, SETTINGMOVE, MOVING, FOLLOWING, WAVING, PLAYING
    }

    public override void Start () {
        //should this be interactable?
        base.Start();
        homePosition = transform.position;
        trailRender = GetComponent<TrailRenderer>();
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
            trailRender.enabled = false;
            FollowPlayer();
        }
        else
        {
            trailRender.enabled = true;
        }

    }

    public override void handleClickSuccess()
    {
        //if doing something other than following, start following player
        if(interactable && Vector3.Distance(_player.transform.position, transform.position) < withinDistanceActive
            && currentState != NPCState.FOLLOWING /* && tpc.followers.Count < tpc.followerCountMax*/)
        {
            base.handleClickSuccess();
            tpc.followers.Add(gameObject);
            tpc.followerDistances.Add(followDistance);
            tpc.blubAnimator.Play("Wave",0);
            CheckPlaceInLine();

            currentState = NPCState.FOLLOWING;
            animator.SetBool("walking", true); // if there is a new animation for following add it here!
        }

        //if following player, deploy NPC
        if (interactable  && followTimer > followTimeMin && currentState == NPCState.FOLLOWING)
        {
            base.handleClickSuccess();
            currentState = NPCState.SETTINGMOVE;
            tpc.followers.Remove(gameObject);
            tpc.followerDistances.Remove(tpc.followerDistances[placeInLine]);
            tpc.blubAnimator.Play("Wave", 0);
            followTimer = 0;
        }
    }

    public virtual void FollowPlayer()
    {
        //check place in line
        int currentLineLength = tpc.followers.Count;
        if(currentLineLength != lastLineLength)
        {
            CheckPlaceInLine();
        }

        Vector3 spotInLine = new Vector3(_player.transform.position.x, transform.position.y, _player.transform.position.z - currentFollowDistance);
        
        if (Vector3.Distance(transform.position,  spotInLine) > 0.25f)
        {
            transform.position = Vector3.MoveTowards(transform.position, spotInLine, speed * Time.deltaTime);
            transform.LookAt(spotInLine); 
        }
        else
        {
            transform.LookAt(new Vector3(_player.transform.position.x, _player.transform.position.y + heightAdjustment, _player.transform.position.z));
        }

        lastLineLength = tpc.followers.Count;
    }

    void CheckPlaceInLine()
    {
        placeInLine = tpc.followers.IndexOf(gameObject);
        currentFollowDistance = 0;
      
        for (int i = 0; i <= placeInLine; i++)
        {
            currentFollowDistance += tpc.followerDistances[i];
        }
        
    }
}
