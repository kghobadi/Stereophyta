using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TraderSlot : Interactable
{

    public bool clickedOn;
    public bool empty;

    public GameObject priceTag;
    public SpriteRenderer priceRenderer;
    public Text slotText;
    public string slotPrice;
    
    // Need a separate pricetag and UI image for GridExpansion. I can draw another 2 frame animation 

    public override void Start()
    {
        base.Start();
        priceTag = GameObject.Find("traderPriceTag");
        priceRenderer = priceTag.GetComponent<SpriteRenderer>();
        priceRenderer.sprite = Resources.Load<Sprite>("CursorSprites/traderPriceTag");
        priceRenderer.enabled = false;
        slotText = GameObject.Find("PriceTag").GetComponent<Text>();
        slotText.enabled = false;

    }
    public override void OnMouseEnter()
    {
        base.OnMouseEnter();
        identifierObject.GetComponent<SpriteRenderer>().enabled = false;
        priceRenderer.enabled = true;
        slotText.text = slotPrice;
        slotText.enabled = true;
        paper.enabled = true;

    }

    public override void handleClickSuccess()
    {
        if (!empty && interactable)
        {
            clickedOn = true;
        }
        if(empty && !interactable)
        {
            base.handleClickSuccess();
            priceRenderer.enabled = false;
            slotText.enabled = false;
            paper.enabled = false;
        }
            

    }
    public override void OnMouseExit()
    {
        base.OnMouseExit();
        priceRenderer.enabled = false;
        slotText.enabled = false;
        paper.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (empty)
        {
            interactable = false;
        }
    }
}
