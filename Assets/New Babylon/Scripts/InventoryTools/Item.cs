﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;

public class Item : MonoBehaviour {
    //types
    public ItemType itemType;
    public ToolType toolType;
    // only used if this is a multiple tool group, and it is the first picked up
    public List<GameObject> toolGroup;
    public SeedType seedType;
    public int itemCount;
    public Sprite itemSprite;

    public enum ItemType
    {
        TOOL, SEED,
    }

    public enum ToolType
    {
        AX, WATER, SICKLE, WINDSTAFF, PICKAX,
    }

    public enum SeedType
    {
        CROP, TREE, SHROOM,
    }

    //for seeds 
    public Plont.PlantType cropType;
    public Shroom.ShroomType shroomType;

    //called by inventory to check if the seed selected is planting
    //must return true if the player is going to switch seeds
    public bool CheckSeedPlanting()
    {
        //crop type -- Seed script
        if(seedType == SeedType.CROP)
        {
            if (GetComponent<Seed>().seedState == Seed.SeedStates.PLANTING)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        //shroom type
        else if (seedType == SeedType.SHROOM)
        {
            if (GetComponent<ShroomSeed>().planting)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        else
        {
            return false;
        }
    }

    public void SelectSeed()
    {
        //crop type -- Seed script
        if (seedType == SeedType.CROP)
        {
            GetComponent<Seed>().seedState = Seed.SeedStates.SEEDSELECTED;
        }
        //shroom type
        else if (seedType == SeedType.SHROOM)
        {
            GetComponent<ShroomSeed>().shroomSelected = true;
        }
    }

    public void DeselectSeed()
    {
        //crop type -- Seed script
        if (seedType == SeedType.CROP)
        {
            GetComponent<Seed>().seedState = Seed.SeedStates.SEEDSELECTED;
        }
        //shroom type
        else if (seedType == SeedType.SHROOM)
        {
            GetComponent<ShroomSeed>().shroomSelected = false;
        }
    }
}
