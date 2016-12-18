using UnityEngine;
using System.Collections;

public class MoveAroundCircle : MonoBehaviour {
	Vector3 v;
	Vector3 center;

	public float degreesPerSecond;
	public float centerOffset;

	void Start()
	{
		center = transform.position + (Vector3.down * centerOffset);
		v = transform.position - center;
	}

	void Update () 
	{
		v = Quaternion.AngleAxis (degreesPerSecond * Mathf.Clamp(Time.deltaTime, 0, 1f/30f), Vector3.forward) * v;
		transform.position = center + v;
	}
}
