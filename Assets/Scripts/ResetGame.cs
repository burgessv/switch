using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class ResetGame : MonoBehaviour {

	public KeyCode resetKey;

	void Start () {
	
	}
	
	void Update () {
		if (Input.GetKeyDown(resetKey)) {
			Reset();
		}
	}

	public void Reset () {
		SceneManager.LoadScene(SceneManager.GetActiveScene().name);
	}
}
