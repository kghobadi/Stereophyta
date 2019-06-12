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
        CROP, TREE,
    }

}
