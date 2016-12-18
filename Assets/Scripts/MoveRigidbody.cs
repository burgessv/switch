using UnityEngine;
using System.Collections;

public class MoveRigidbody : MonoBehaviour {

	public KeyCode upKey;
	public KeyCode downKey;
	public KeyCode rightKey;
	public KeyCode leftKey;

	Rigidbody2D rb;
	private Vector2 move;
	public Vector2 Move {
		get { return move; }
	}
	public float speed;
	public float jumpForce;
	public LayerMask groundLayer;
	bool onGround = false;

	Vector2 jumpDirection = Vector2.up;
	Vector2 horizontalForceDirection = Vector2.right;

	private float horizontalSpeed = 0;
	public float distanceTraveled = 0;

	private float playerXPos = 0;
	public float PlayerXPos {
		get { return playerXPos; }
	}

	public HealthManager healthManager;

	public CreateGround[] grounds;

//	public CreateGround groundScript;

	void Start () {
		rb = GetComponent<Rigidbody2D>();
	}
		
	void Update () {
		HorizontalMove();
		Jump();
		GroundStatus();
	}

	void OnDrawGizmos () {
		Gizmos.color = Color.red;
//		Gizmos.DrawLine(transform.position, transform.position + (Vector3.up * 100000));
		Gizmos.DrawLine(transform.position, transform.position + (Vector3.down * ((transform.localScale.y * 0.5f) + 0.1f)));
		Gizmos.DrawLine(transform.position, horizontalForceDirection * 40);
	}

	void GroundStatus () {
		float raycastDistance = ((transform.localScale.y * 0.5f) + 0.3f);
		bool wasOnGround = onGround;
		onGround = false;
		if (!onGround) onGround = Physics2D.Raycast(transform.position, Vector2.down * 50f, raycastDistance, groundLayer);
		if (!onGround) onGround = Physics2D.Raycast(transform.position, (Vector2.down + Vector2.right).normalized  * 50f, raycastDistance, groundLayer);
		if (!onGround) onGround = Physics2D.Raycast(transform.position, (Vector2.down + Vector2.left).normalized  * 50f, raycastDistance, groundLayer);

		if (onGround) {
			RaycastHit2D hit = Physics2D.Raycast(transform.position, Vector2.down, 10, groundLayer);
//			Vector2 p2 = -(new Vector2(-hit.normal.y, hit.normal.x) / Mathf.Sqrt(Mathf.Pow(hit.normal.x, 2) + Mathf.Pow(hit.normal.y, 2)));
//			horizontalForceDirection = Quaternion.AngleAxis(0, Vector3.forward) * hit.normal;
			CreateGround createGround = hit.collider.transform.root.gameObject.GetComponent<CreateGround>();
			if (!createGround.isSafe) healthManager.TakeDamage();
//			jumpDirection = hit.normal;
			if (!wasOnGround) {
				hit.collider.transform.root.gameObject.GetComponent<CreateGround>().AddRipple(transform.position.x, (rb.velocity.magnitude * 0.1f) + 0.5f);
			}
		} else {
			horizontalForceDirection = Vector2.right;
		}
	}

	void Jump () {
		if (Input.GetKeyDown(upKey) && onGround) {
			rb.AddForce(Vector2.up * jumpForce, ForceMode2D.Impulse);
		}
	}

	public void HitJump () {
		rb.AddForce(Vector2.up * jumpForce, ForceMode2D.Impulse);
	}

	void Switch () {
		foreach(CreateGround ground in grounds) {
			ground.ToggleLine();
		}
	}

	int BoolToInt (bool b) {
		if (b) {
			return 1;
		} else {
			return 0;
		}
	}

	void HorizontalMove ()
	{
		float x;
//		float y;

	
		x = -BoolToInt(Input.GetKey(leftKey)) + BoolToInt(Input.GetKey(rightKey));
//		y = -BoolToInt(Input.GetKey(downKey)) + BoolToInt(Input.GetKey(upKey));
//		Debug.Log("on ground: " + onGround);
		float localSpeed = ((speed * 0.5f) + (BoolToInt(onGround) * (speed * 0.5f)));
//		float localSpeed = x * speed;
//		if (!Mathf.Approximately(0, localSpeed)) {
//			horizontalSpeed = (localSpeed - horizontalSpeed) * 0.05f;
//		} else {
//			horizontalSpeed *= 0.95f;
//		}
//		Debug.Log("x speed: " + horizontalSpeed);
//		playerXPos += horizontalSpeed;
		move = new Vector2(x, 0).normalized * localSpeed;
		distanceTraveled += (x * localSpeed) / 100;
		Debug.Log("distance: " + distanceTraveled);
//		move = (horizontalForceDirection * x) * localSpeed;
	}



	void FixedUpdate ()
	{
		rb.AddForce(move * (speed * Time.fixedDeltaTime));
	}
}
