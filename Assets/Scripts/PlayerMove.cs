using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour {

	public float rate;

	public KeyCode up;
	public KeyCode down;
	public KeyCode right;
	public KeyCode left;

	void Start () {
	
	}
	
	void Update () {
		MoveByKey(up,    Vector3.up    * rate * Time.deltaTime);
		MoveByKey(down,  Vector3.down  * rate * Time.deltaTime);
		MoveByKey(left,  Vector3.left  * rate * Time.deltaTime);
		MoveByKey(right, Vector3.right * rate * Time.deltaTime);
	}

	void MoveByKey (KeyCode key, Vector3 movement)
	{
		if (Input.GetKey(key))
		{
			transform.position += movement;
		}
	}
}