using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NPC;

//this class stores a list of movement paths for the MovementPath scriptable objs to reference 

[System.Serializable]
public struct MovementPaths
{
    public string pathName;
    [Tooltip("is this a Pathfinder or a Waypoint loop?")]
    public Movement.NPCMovementTypes moveType;
    [Tooltip("Drop in any number of points, game objs, or empty transforms for the NPC to nav to ")]
    public Transform[] movementPoints;
    //or a radius 
    public float moveRadius;
}

public class NPCMovementManager : MonoBehaviour
{
    public MovementPaths[] movementPaths;
}
