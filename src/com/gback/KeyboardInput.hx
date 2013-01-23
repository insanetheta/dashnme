package com.gback;
import nme.display.Sprite;
import nme.events.KeyboardEvent;
import nme.ui.Keyboard;

/**
 * ...
 * @author Greg
 */

class KeyboardInput 
{
	var gameWorld:Sprite;
	var keyStates:IntHash<Bool>;

	public function new(worldDisplay:Sprite) 
	{
		gameWorld = worldDisplay;
		keyStates = new IntHash<Bool>();
		gameWorld.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
		gameWorld.addEventListener(KeyboardEvent.KEY_UP, keyUp);
	}
	
	function keyDown(keyDownEvent:KeyboardEvent):Void
	{
		keyStates.set(keyDownEvent.keyCode, true);
	}
	
	function keyUp(keyUpEvent:KeyboardEvent):Void
	{
		keyStates.set(keyUpEvent.keyCode, false);
	}
	
	public function getKeyDown(keyCode:Int):Bool
	{
		if (keyStates.exists(keyCode) && keyStates.get(keyCode) == true) return true;
		return false;
	}
	
}