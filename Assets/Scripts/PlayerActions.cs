using UnityEngine;
using System.Collections;
using InControl;

public class PlayerActions : PlayerActionSet {

	public PlayerAction LeftAnalogLeft;
	public PlayerAction LeftAnalogRight;
	public PlayerAction LeftAnalogUp;
	public PlayerAction LeftAnalogDown;
	public PlayerTwoAxisAction LeftAnalog;

	public PlayerAction RightAnalogLeft;
	public PlayerAction RightAnalogRight;
	public PlayerAction RightAnalogUp;
	public PlayerAction RightAnalogDown;
	public PlayerTwoAxisAction RightAnalog;

	public PlayerAction Left;
	public PlayerAction Right;
	public PlayerAction Up;
	public PlayerAction Down;

	public PlayerAction Square;
	public PlayerAction Circle;
	public PlayerAction X;
	public PlayerAction Triangle;

	public PlayerAction R1;
	public PlayerAction R2;
	public PlayerAction R3;
	public PlayerAction L1;
	public PlayerAction L2;
	public PlayerAction L3;


	public PlayerActions ()
	{
		Left     = CreatePlayerAction("Left");
		Right    = CreatePlayerAction("Right");
		Up       = CreatePlayerAction("Up");
		Down     = CreatePlayerAction("Down");

		Square   = CreatePlayerAction("Square");
		Circle   = CreatePlayerAction("Circle");
		X        = CreatePlayerAction("X");
		Triangle = CreatePlayerAction("Triangle");

		LeftAnalogLeft   = CreatePlayerAction("Left Analog Left");
		LeftAnalogRight  = CreatePlayerAction("Left Analog Right");
		LeftAnalogUp     = CreatePlayerAction("Left Analog Up");
		LeftAnalogDown   = CreatePlayerAction("Left Analog Down");
		LeftAnalog = CreateTwoAxisPlayerAction( LeftAnalogLeft, LeftAnalogRight, LeftAnalogUp, LeftAnalogDown );

		RightAnalogLeft  = CreatePlayerAction("Right Analog Left");
		RightAnalogRight = CreatePlayerAction("Right Analog Right");
		RightAnalogUp    = CreatePlayerAction("Right Analog Up");
		RightAnalogDown  = CreatePlayerAction("Right Analog Down");
		RightAnalog = CreateTwoAxisPlayerAction( RightAnalogLeft, RightAnalogRight, RightAnalogUp, RightAnalogDown );

		R1 = CreatePlayerAction("R1");
		R2 = CreatePlayerAction("R2");
		R3 = CreatePlayerAction("R3");
		L1 = CreatePlayerAction("L1");
		L2 = CreatePlayerAction("L2");
		L3 = CreatePlayerAction("L3");

	}

	public static PlayerActions CreateWithDefaultBindings()
	{
		var playerActions = new PlayerActions();

		playerActions.Left.AddDefaultBinding( InputControlType.DPadLeft );
		playerActions.Right.AddDefaultBinding( InputControlType.DPadRight );
		playerActions.Up.AddDefaultBinding( InputControlType.DPadUp );
		playerActions.Down.AddDefaultBinding( InputControlType.DPadDown );

		playerActions.Square.AddDefaultBinding( InputControlType.Action3 );
		playerActions.Circle.AddDefaultBinding( InputControlType.Action2 );
		playerActions.X.AddDefaultBinding( InputControlType.Action1 );
		playerActions.Triangle.AddDefaultBinding( InputControlType.Action4 );

		playerActions.LeftAnalogLeft.AddDefaultBinding( InputControlType.LeftStickLeft );
		playerActions.LeftAnalogRight.AddDefaultBinding( InputControlType.LeftStickRight );
		playerActions.LeftAnalogUp.AddDefaultBinding( InputControlType.LeftStickUp );
		playerActions.LeftAnalogDown.AddDefaultBinding( InputControlType.LeftStickDown );

		playerActions.RightAnalogLeft.AddDefaultBinding( InputControlType.RightStickLeft );
		playerActions.RightAnalogRight.AddDefaultBinding( InputControlType.RightStickRight );
		playerActions.RightAnalogUp.AddDefaultBinding( InputControlType.RightStickUp );
		playerActions.RightAnalogDown.AddDefaultBinding( InputControlType.RightStickDown );

		playerActions.R1.AddDefaultBinding( InputControlType.RightBumper );
		playerActions.R2.AddDefaultBinding( InputControlType.RightTrigger );
		playerActions.R3.AddDefaultBinding( InputControlType.RightStickButton );
		playerActions.L1.AddDefaultBinding( InputControlType.LeftBumper );
		playerActions.L2.AddDefaultBinding( InputControlType.LeftTrigger );
		playerActions.L3.AddDefaultBinding( InputControlType.LeftStickButton );
	

		playerActions.ListenOptions.IncludeUnknownControllers = true;
		playerActions.ListenOptions.MaxAllowedBindings = 4;

		playerActions.ListenOptions.OnBindingFound = ( action, binding ) =>
		{
			if (binding == new KeyBindingSource( Key.Escape ))
			{
				action.StopListeningForBinding();
				return false;
			}
			return true;
		};

		playerActions.ListenOptions.OnBindingAdded += ( action, binding ) =>
		{
			Debug.Log( "Binding added... " + binding.DeviceName + ": " + binding.Name );
		};

		playerActions.ListenOptions.OnBindingRejected += ( action, binding, reason ) =>
		{
			Debug.Log( "Binding rejected... " + reason );
		};

		return playerActions;
	}
}
