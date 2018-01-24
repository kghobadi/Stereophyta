using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Generic Template to implement Singleton Pattern
/// </summary>
/// <typeparam name="T"></typeparam>

public class Singleton<T> : MonoBehaviour where T : Component
{
    private static T _instance;

    public static T Instance
    {
        get
        {
            //Check
            if (_instance == null)
            {
                // Checks to see if there is already an instantiation of Singleton somewhere in the game.
                //      Returns an array of all Objects of Type T
                var objs = FindObjectsOfType(typeof(T)) as T[];

                // If an object of this Type exists, _instance is set to the the first found instance.
                //
                if (objs.Length > 0)
                    _instance = objs[0];

                // If there is more than one, send an error message    
                //
                if (objs.Length > 1)
                {
                    Debug.LogError("There is more than one " + typeof(T).Name + " in the scene.");
                }

                // If there are none, create a new GameObject, adds the component with Singleton Pattern, and does not show object in hierarchy
                //
                if (_instance == null)
                {
                    GameObject obj = new GameObject();
                    obj.hideFlags = HideFlags.HideAndDontSave;
                    _instance = obj.AddComponent<T>();
                }
            }

            return _instance;
        }
    }
}
