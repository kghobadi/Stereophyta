using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cameras;
using NPC;

//Can use this scriptable object to create various types of tasks for NPCs to assign the player from their Task Manager
[CreateAssetMenu(fileName = "MonologueData", menuName = "ScriptableObjects/MonologueScriptable", order = 1)]
public class Monologue : ScriptableObject
{
    [Header("Info for Monologue Manager")]
    public TextAsset monologue;
    [Tooltip("Check this to wait timeUntilStart from trigger Activation to enable Monologue")]
    public bool waitToStart;
    public float timeUntilStart;
    public int worldMonoIndex;

    [Tooltip("Check this to lock your player's movement")]
    public bool lockPlayer = true;
    [Tooltip("This list will correspond to all my monologues in count, but may be null")]
    public Task[] tasksToAssign;
    [Tooltip("This NPC will take item from player during conversation using these tasks")]
    public Task[] tasksToComplete; 
    [Tooltip("The Monologue Manager will repeat this monologue until further notice")]
    public bool repeatsAtFinish;
    [Tooltip("After this Monologue finishes, the manager will play a cinematic")]
    public bool playsCinematic;
    public Cinematic cinematic;
    [Tooltip("After this Monologue finishes, the manager will enable a cinematic triggers somewhere in the game")]
    public bool enablesCinematicTriggers;
    public Cinematic [] cTriggers;
    [Tooltip("After this Monologue finishes, the manager will set NPC movement using this")]
    public MovementPath newMovement;

    [Header("Info for Monologue Reader")]
    public float timeBetweenLetters = 0.1f;
    public float timeBetweenLines = 3f;
    [Tooltip("Check this and fill in array below so that each line of text can be assigned a different wait")]
    public bool conversational;
    public float[] waitTimes;
}