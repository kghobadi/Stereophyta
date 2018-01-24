using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class ItemDatabase : MonoBehaviour {

    private List<Item> database = new List<Item>();
	
	void Start () {
        //reads file and turns it into json data object
        string test = File.ReadAllText(Application.dataPath + "/StreamingAssets/Item.json");

        Debug.Log(test);

        Item itemData = JsonUtility.FromJson<Item>(File.ReadAllText(Application.dataPath + "/StreamingAssets/Item.json"));
        //ConstructItemDatabase();
        Debug.Log(itemData.Description);
        Debug.Log(itemData.ID);
        Debug.Log(itemData.Title);


    }

    //parses json into objects
	//void ConstructItemDatabase()
 //   {
 //       for (int i = 0; i < itemData.Count; i++)
 //       {
 //           Item newItem = new Item((int)itemData[i]["id"], itemData[i]["title"].ToString(), itemData[i]["description"].ToString());
 //           database.Add(newItem);

 //       }
 //   }
}

[System.Serializable]
public class Item
{
    //properties
    public int ID { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }

    public Item() { }

    //constructor
    public Item(int id, string title, string description)
    {
        this.ID = id;
        this.Title = title;
        this.Description = description;
    }

}

public class ItemList
{
    public List<Item> ItemsList = new List<Item>();

}
