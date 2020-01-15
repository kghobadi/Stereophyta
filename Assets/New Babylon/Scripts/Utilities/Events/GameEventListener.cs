using UnityEngine;
using UnityEngine.Events; // 1
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class CustomGameEvent {
    public GameEvent gameEvent;
    public UnityEvent response;
}

public class GameEventListener : MonoBehaviour
{
    [SerializeField] List<CustomGameEvent> events = new List<CustomGameEvent>();
                     Dictionary<GameEvent, CustomGameEvent> eventsDict = new Dictionary<GameEvent, CustomGameEvent>();

    [SerializeField] List<CustomGameEvent> objectEvents = new List<CustomGameEvent>();

    private void Start() {
        foreach(CustomGameEvent e in events)
            eventsDict.Add(e.gameEvent, e);

        foreach(CustomGameEvent e in objectEvents)
            eventsDict.Add(e.gameEvent, e);
    }

    private void OnEnable() // 4
    {
        foreach(CustomGameEvent e in events)
            e.gameEvent.RegisterListener(this);

        foreach(CustomGameEvent e in objectEvents)
            e.gameEvent.RegisterListener(this);
    }

    private void OnDisable() // 5
    {
        foreach(CustomGameEvent e in events)
            e.gameEvent.UnregisterListener(this);

        foreach(CustomGameEvent e in objectEvents)
            e.gameEvent.UnregisterListener(this);
    }

    public void OnEventRaised(GameEvent e) // 6
    {
        CustomGameEvent cge = null;
        
        eventsDict.TryGetValue(e, out cge);
        if(cge != null)
            cge.response.Invoke();
    }

    [SerializeField] GameObject eventObject;
    public GameObject EventObject { get{ return eventObject; } }

    public void OnEventRaised(GameEvent e, GameObject o){ //Used for object-oriented events
        CustomGameEvent cge = null;
        
        eventsDict.TryGetValue(e, out cge);
        if(cge != null){
            if(!objectEvents.Contains(cge))
                return;

            eventObject = o;
            cge.response.Invoke();
        }
    }
}