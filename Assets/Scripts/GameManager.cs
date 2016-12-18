using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameManager : MonoBehaviour {

	public Text text;
	public Text topText;
	public MoveRigidbody moveRb;

	public static float topScore;

	void Start () {
		topText.text = topScore.ToString("F0");
	}
	
	void Update () {
		text.text = moveRb.distanceTraveled.ToString("F0");
		if (moveRb.distanceTraveled > topScore) {
			topScore = moveRb.distanceTraveled;
			topText.text = topScore.ToString("F0");
		}
	}
}
