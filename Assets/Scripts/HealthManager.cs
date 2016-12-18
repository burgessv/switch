using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HealthManager : MonoBehaviour {

	float maxHealth = 0.05f;
	float currentHealth;
	float damageValue = 0.005f;
	bool isDead = false;
	bool isFlashing = false;

	public SpriteRenderer playerSprite;
	public GameObject invertQuad;

	public CreateGround[] grounds;
	public SmoothCamera2D smoothCamera;
	public MoveRigidbody moveRb;

	float lastDamageTime;
	float regenDelay = 1.5f;

	public Slider healhBar;



	void Start () {
		currentHealth = maxHealth;

	}
	
	void Update () {
		if ((Time.time > lastDamageTime + regenDelay) && currentHealth < maxHealth) {
			Debug.Log("hey");
			currentHealth = maxHealth;
			healhBar.value = GeneralUtil.RangeToPercentClamp(currentHealth, 0, maxHealth);
		}
	}

	public void TakeDamage () {
		currentHealth -= damageValue;
		lastDamageTime = Time.time;
		healhBar.value = GeneralUtil.RangeToPercentClamp(currentHealth, 0, maxHealth);

		if (currentHealth <= 0) {
			isDead = true;
			EndGame();
		}

	

		// flash invert quad
		// screenshake
		smoothCamera.SimpleShake(0.2f);
//		moveRb.HitJump();
		// sound
		StartCoroutine(Flash(0.1f));

//		Color color = Color.Lerp(Color.black, Color.white, health);
//		playerSprite.color = color;
//		foreach(CreateGround cg in grounds) {
//			cg.DamageTaken(color);
//		}
	}

	IEnumerator Flash (float duration) {
		invertQuad.SetActive(true);
		yield return new WaitForSeconds(duration);
		invertQuad.SetActive(false);
	}

	void EndGame () {
		//Debug.Log("LOST");
		gameObject.GetComponent<ResetGame>().Reset();
	}
}
