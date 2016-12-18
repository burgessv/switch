using UnityEngine;
using System.Collections;

public class PlayerDuality : MonoBehaviour {

	int state = 0;
	public KeyCode switchKey;
	public GameObject invertQuad;


	void Start () {
	
	}
	
	void Update () {
		if (Input.GetKeyDown(switchKey)) {
			SwitchState();
		}
	}

	void SwitchState () {
		state = Mathf.Abs(state - 1);
		invertQuad.SetActive(invertQuad.activeSelf);

	}
}
