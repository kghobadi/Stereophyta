using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Coloring  {

	public static Color SetOpacity (float a, Color c){
		return new Color (c.r, c.g, c.b, a);
	}

	public static Color SetColor(Color src, Color dest){
		return new Color(dest.r, dest.g, dest.b, src.a);
	}

	public static Color Blend(Color a, Color b, Vector2 weights){
		// Ensure weights are clamped 0-1
		weights.x = Mathf.Clamp01(weights.x);
		weights.y = Mathf.Clamp01(weights.y);
	
		Vector4 ca = new Vector4(a.r, a.g, a.b, a.a) * weights.x;
		Vector4 cb = new Vector4(b.r, b.g, b.b, b.a) * weights.y;
		
		return new Color  (Mathf.Clamp01(ca.x + cb.x),
						   Mathf.Clamp01(ca.y + cb.y),
						   Mathf.Clamp01(ca.z + cb.z),
						   Mathf.Clamp01(ca.w + cb.w));
	}
}
