using UnityEngine;
using System.Collections;
using InControl;

public class Player : MonoBehaviour {

	[SerializeField] int deviceID;

	[SerializeField] PlayerActions actions;
	public PlayerActions Actions {
		get { return actions; }
		private set { actions = value; }
	}

	// Use this for initialization
	void Awake () {
		actions = PlayerActions.CreateWithDefaultBindings();
		if (deviceID >= 0 && deviceID < InputManager.Devices.Count) {
			actions.Device = InputManager.Devices[deviceID];
		} else {
			actions.Device = InputManager.ActiveDevice;
		}
	}
}
