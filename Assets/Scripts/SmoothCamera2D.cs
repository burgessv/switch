using UnityEngine;
using System.Collections;

public class SmoothCamera2D : MonoBehaviour {
	
	public float dampTime = 0.0f;
	private Vector3 velocity = Vector3.zero;
	public Transform[] targets;
	Bounds zoomedView;
	Camera mainCamera;
	public Vector2 viewportTargetPosition;

	Vector3 screenShakeVector = Vector3.zero;

	void Start ()
	{
		mainCamera = GetComponent<Camera>();
	}
	
	void Update () 
	{
		FitCameraToObjects (9f);	
	}

	void FitCameraToObjects(float pad)
	{
		float padVelocity = 0.0f;
		bool isReset = false;
		foreach (Transform obj in targets)
		{
			if (!isReset)
			{
				zoomedView = new Bounds(obj.position, new Vector3(1,1,0));
				isReset = true;
			}

			zoomedView.Encapsulate(obj.position);
		}

		Vector3 point = mainCamera.WorldToViewportPoint(zoomedView.center);
		Vector3 delta = zoomedView.center - mainCamera.ViewportToWorldPoint(new Vector3(viewportTargetPosition.x, viewportTargetPosition.y, point.z)); //(new Vector3(0.5, 0.5, point.z));
		Vector3 destination = transform.position + delta;
		transform.position = Vector3.SmoothDamp(transform.position, destination, ref velocity, dampTime) + screenShakeVector;

		screenShakeVector *= 0.9f;
//		if ((zoomedView.size.x) < zoomedView.size.y)
//		{
//			//camera.orthographicSize = (zoomedView.size.y * 0.5f) + pad;
//			mainCamera.orthographicSize = Mathf.SmoothDamp(mainCamera.orthographicSize, ((zoomedView.size.y * 0.5f) + 5f), ref padVelocity, dampTime);
//		}
//		else
//		{
//			//camera.orthographicSize = (zoomedView.size.x * Screen.height / Screen.width * 0.5f) + pad;
//			mainCamera.orthographicSize = Mathf.SmoothDamp(mainCamera.orthographicSize, ((zoomedView.size.x * Screen.height / Screen.width * 0.5f) + pad), ref padVelocity, dampTime);
//		}

	}

	public void SimpleShake (float magnitude) {
		screenShakeVector = Random.insideUnitSphere * magnitude;
		screenShakeVector.z = 0;
	}


	public IEnumerator Shake (float magnitude, float duration) {
		float startTime = Time.time;
		float ease = 1;
		while (ease > 0.01f) {
			ease = 1 - Easing.EaseInOutSine(Time.time - startTime, 0, 1f, duration);
			screenShakeVector = Random.insideUnitSphere * ease * magnitude;
			screenShakeVector.z = 0;

			yield return null;
		}

		screenShakeVector = Vector3.zero;
	}
}
