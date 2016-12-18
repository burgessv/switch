using UnityEngine;
using System.Collections;

public class Switch : MonoBehaviour {

	public GameObject[] grounds;
	public GameObject[] switchableObjects;

	void Start () {
		for(int i = 0; i < grounds.Length; i++) {
			bool active = grounds[i].GetComponent<CreateGround>().startActive;
			grounds[i] = grounds[i].transform.GetChild(0).gameObject;
			grounds[i].SetActive(active);
		}

		StartCoroutine(SwitchTimer());
	}
	
	void Update () {
		
	}

	IEnumerator SwitchTimer () {
		while(0==0) {
			yield return new WaitForSeconds(2);

			ToggleActiveObjects();
		}
	}

	void ToggleActiveObjects () {
		foreach(GameObject obj in switchableObjects) {
			obj.SetActive(!obj.activeSelf);
		}

		foreach(GameObject ground in grounds) {
			ground.SetActive(!ground.activeSelf);
		}
	}
}
