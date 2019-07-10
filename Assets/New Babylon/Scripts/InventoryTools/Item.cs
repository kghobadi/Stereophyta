using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour {
    //types
    public ItemType itemType;
    public ToolType toolType;
    public SeedType seedType;


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

    //called by inventory to check if the seed selected is planting
    //must return true if the player is going to switch seeds
    public bool CheckSeedPlanting()
    {
        //crop type -- Seed script
        if(seedType == SeedType.CROP)
        {
            if (GetComponent<Seed>().planting)
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
            GetComponent<Seed>().seedSelected = true;
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
            GetComponent<Seed>().seedSelected = false;
        }
        //shroom type
        else if (seedType == SeedType.SHROOM)
        {
            GetComponent<ShroomSeed>().shroomSelected = false;
        }
    }

    public void SetSeedIndex(int newIndex)
    {
        //crop type -- Seed script
        if (seedType == SeedType.CROP)
        {
            GetComponent<Seed>().mySeedIndex = newIndex;
        }
        //shroom type
        else if (seedType == SeedType.SHROOM)
        {
            GetComponent<ShroomSeed>().mySeedIndex = newIndex;
        }
    }
}
