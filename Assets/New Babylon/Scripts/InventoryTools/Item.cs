using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour {

    public ItemType itemType;
    public ToolType toolType;
    public SeedType seedType;

    public enum ItemType
    {
        TOOL, SEED,
    }

    public enum ToolType
    {
        AX, WATER, SICKLE, PICKAX,
    }

    public enum SeedType
    {
        CROP, TREE,
    }
}
