using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public static class Screening {

	// Default scaling to WIDTH
	public static float NormalizeToScreen(float f){
		return (f / Screen.width);
	}

	public static Vector2 NormalizeToScreen(Vector2 v){
		return new Vector2 (v.x / Screen.width, v.y / Screen.height);
	}

	public static Vector3 NormalizeToScreen(Vector3 v){
		return new Vector3 (v.x / Screen.width, v.y / Screen.height, v.z);
	}

	public static Rect RectTransformToScreenSpace(RectTransform transform)
     {
         Vector2 size = Vector2.Scale(transform.rect.size, transform.lossyScale);
         return new Rect((Vector2)transform.position - (size * 0.5f), size);
     }
}
