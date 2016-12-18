using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Vectrosity;

public class CreateGround : MonoBehaviour {

	public int segments;
	public float xOffset;
	public float yScale;
	public float perlinXIncrement;
	public int groundLayer;
	public Transform leadTransform;
	List<Vector3> points = new List<Vector3>();
	VectorLine line;
	public bool startActive;
	public Material safeMat;
	public Material harmMat;
	MoveRigidbody playerMove;
	float xTranslation = 0;
	float rippleStartX = 0;
	float rippleHeight = 0;
	float rippleTravel = 0;

	public bool isSafe;

	float randomOffset;
	public int yOscillateDirection;

	void Awake () {

	}

	void Start () {
		playerMove = GameObject.FindGameObjectWithTag("Player").GetComponent<MoveRigidbody>();
		randomOffset = Random.Range(-10000,10000);
		points = SetPoints(xOffset);
		line = new VectorLine("ground", points, 150f, LineType.Continuous);
		line.joins = Joins.Fill;
		line.collider = true;
		line.layer = groundLayer;
		if (isSafe) line.material = safeMat;
		else line.material = harmMat;
		line.Draw3D();
		line.rectTransform.SetParent(transform);

	}
	
	void Update () {
//		if (Input.GetKeyDown(KeyCode.Space)) {
//			AngleTest();
//		}

		if (Input.GetKeyDown(KeyCode.S)) {
			ToggleLine();
		}
		points = SetPoints(Camera.main.WorldToViewportPoint(leadTransform.position).x + (Time.time * 0.075f) + xOffset);
		line.points3 = points;
		line.Draw3D();
	}

	public void DamageTaken (Color color) {
		line.color = color;
	}

	public void ToggleLine () {
//		line.active = !line.active;
		isSafe = !isSafe;
		if (isSafe) line.material = safeMat;
		else line.material = harmMat;
	}

	List<Vector3> SetPoints (float perlinX) {
		Vector3 camPos = Camera.main.transform.position;
		Vector3 camLeftPos = Camera.main.ViewportToWorldPoint(new Vector3(0, 0.5f, Camera.main.nearClipPlane)) + (Vector3.left * 2);
		Vector3 camRightPos = Camera.main.ViewportToWorldPoint(new Vector3(1, 0.5f, Camera.main.nearClipPlane)) + (Vector3.right * 2);
		float width = Vector3.Distance(camLeftPos, camRightPos);
		float xIncrement = width / segments;

		List<Vector3> result = new List<Vector3>();


		for(int i = 0; i < segments + 1; i++) {
			float x = camLeftPos.x + (xIncrement * i);
			float y = (Mathf.PerlinNoise(perlinX + randomOffset, i * perlinXIncrement + (playerMove.transform.position.x * 0.1f)) * yScale) + (yOscillateDirection * 5 * Mathf.Sin(Time.time * 1.5f));

			float sineSample = rippleTravel;
			if (x < rippleStartX) sineSample = -sineSample;

			float distanceFromRippleStart = Mathf.Abs((rippleStartX + sineSample) - x);
			float localRippleHeight = Easing.PercEaseInOutQuad(GeneralUtil.RangeToPercentClamp(distanceFromRippleStart, 0, 10), 0, rippleHeight);
//			float localRippleHeight = Mathf.Clamp(rippleHeight - (distanceFromRippleStart * 0.15f), 0, Mathf.Infinity);
			if (x > rippleStartX) localRippleHeight = -localRippleHeight;

			float ripple = localRippleHeight * Mathf.Sin(sineSample * 0.1f);
			result.Add(new Vector3(x, y + ripple, 0));

			rippleTravel += 0.01f;
			rippleHeight = Mathf.Clamp(rippleHeight - 0.001f, 0, Mathf.Infinity); //ripple decay
		}

		return result;
	}

	public void AddRipple (float startX, float rippleMagnitude) {
		if (Mathf.Approximately(0, rippleHeight)) {
			rippleHeight = rippleMagnitude;
			rippleStartX = startX;
			rippleTravel = 0;
		}	
	}

//	void AngleTest () {
//		Debug.Log("angle: " + Vector3.Angle(Vector3.right, Vector3.up));
//	}
}
