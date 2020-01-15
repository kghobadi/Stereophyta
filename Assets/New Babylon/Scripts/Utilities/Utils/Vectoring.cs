using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Vectoring {

	public static Vector3 Zero(Vector3 v, char param){
		switch (param) {
			case 'x':
				return new Vector3 (0f, v.y, v.z);
			case 'y':
				return new Vector3 (v.x, 0f, v.z);
			case 'z':
				return new Vector3 (v.x, v.y, 0f);
			default:
				Debug.Log ("Invalid parameter for vector conversion.");
				return Vector3.zero;
		}
	}

	public static Vector2 RemoveZ(Vector3 v){
		return new Vector2 (v.x, v.y);
	}

	public static Vector3 Absolute(Vector3 v){
		return new Vector3 (Mathf.Abs (v.x),
							Mathf.Abs (v.y),
							Mathf.Abs (v.z));
	}

	public static Vector3 CompositeMax(Vector3 v0, Vector3 v1){
		return new Vector3 (Mathf.Max (v0.x, v1.x),
							Mathf.Max (v0.y, v1.y),
							Mathf.Max (v0.z, v1.z));
	}

	public static Vector3 AbsoluteMax(Vector3 v0, Vector3 v1){
		if (v0.magnitude >= v1.magnitude)
			return v0;

		return v1;
	}

	public static Vector3 NormalizedDirection(Vector3 a, Vector3 b){
		return (b - a).normalized;
	}

    public static Vector3 RandomInsideBounds(Vector3 v){
        return new Vector3(Random.Range(0f, v.x),
                           Random.Range(0f, v.y),
                           Random.Range(0f, v.z));
    }

	public static Vector2 Clamp(Vector2 v, float b){
		return Clamp(v, b, b);
	}

	public static Vector2 Clamp(Vector2 v, float x, float y){
		return new Vector2(Mathf.Clamp(v.x, -x, x), 
						   Mathf.Clamp(v.y, -y, y));
	}

	public static Vector3 Clamp(Vector3 v, float b){
		return Clamp(v, b, b, b);
	}

	public static Vector3 Clamp(Vector3 v, float x, float y, float z){
		return new Vector3(Mathf.Clamp(v.x, -x, x), 
						   Mathf.Clamp(v.y, -y, y),
						   Mathf.Clamp(v.z, -z, z));
	}
}
